package io.renren.modules.book.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.book.consts.BookConstants;
import io.renren.modules.book.dao.BizBookDao;
import io.renren.modules.book.entity.BizBookEntity;
import io.renren.modules.book.entity.BizBrrowDto;
import io.renren.modules.sys.dao.SysUserDao;
import io.renren.modules.sys.entity.SysUserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.book.dao.BizBrrowDao;
import io.renren.modules.book.entity.BizBrrowEntity;
import io.renren.modules.book.service.BizBrrowService;


@Service("bizBrrowService")
public class BizBrrowServiceImpl extends ServiceImpl<BizBrrowDao, BizBrrowEntity> implements BizBrrowService {

    @Autowired
    private SysUserDao sysUserDao;

    @Autowired
    private BizBookDao bizBookDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        if (params == null||params.size() ==0) {
            return null;
        }

        IPage<BizBrrowEntity> page = this.page(
                new Query<BizBrrowEntity>().getPage(params),
                new QueryWrapper<BizBrrowEntity>()
        );

        // 拿到逾期记录,进行封装
        List<BizBrrowDto> overRecord = new ArrayList<>();
        List<BizBrrowEntity> records = page.getRecords();
        for (BizBrrowEntity record : records) {
            // 收集未归还的书籍列表
            BizBrrowDto dto = new BizBrrowDto();
            BeanUtil.copyProperties(record,dto);
            SysUserEntity user = sysUserDao.selectById(record.getUserId());
            BizBookEntity book = bizBookDao.selectById(record.getBookId());
            dto.setBookName(book.getBookName());
            dto.setUsername(user.getUsername());

            String retTime = record.getRetTime();
            String realTime = record.getRealTime();
            // 未归还
            retTime = retTime.replaceAll("-", "").replaceAll("/", "");
            String now = DateUtil.format(new Date(), "yyyyMMdd");
            int i = now.compareTo(retTime);
            if (i > 0) {
                //设置逾期
                dto.setStatus(1);
            }

            overRecord.add(dto);
        }

        IPage<BizBrrowDto> pageDto = new Page<>();
        pageDto.setPages(page.getPages());
        pageDto.setCurrent(page.getCurrent());
        pageDto.setRecords(overRecord);
        pageDto.setSize(page.getSize());
        pageDto.setTotal(page.getTotal());

        return new PageUtils(pageDto);
    }

    /**
     * 查看逾期列表
     */
    @Override
    public PageUtils queryOverList(Map<String, Object> params) {
        IPage<BizBrrowEntity> page = this.page(
                new Query<BizBrrowEntity>().getPage(params),
                new QueryWrapper<BizBrrowEntity>()
        );

        // 拿到逾期记录,进行封装
        List<BizBrrowDto> overRecord = new ArrayList<>();
        List<BizBrrowEntity> records = page.getRecords();
        for (BizBrrowEntity record : records) {
            Integer isOver = record.getIsOver();
            // 收集未归还的书籍列表
            if (isOver == BookConstants.NOT_OVER) {
                BizBrrowDto dto = new BizBrrowDto();
                BeanUtil.copyProperties(record,dto);
                SysUserEntity user = sysUserDao.selectById(record.getUserId());
                BizBookEntity book = bizBookDao.selectById(record.getBookId());
                dto.setBookName(book.getBookName());
                dto.setUsername(user.getUsername());
                overRecord.add(dto);
            }
        }

        IPage<BizBrrowDto> pageDto = new Page<>();
        BeanUtil.copyProperties(page,pageDto);
        pageDto.setRecords(overRecord);

        return new PageUtils(pageDto);
    }

    @Override
    public Integer borrowBook(BizBrrowEntity bizBrrow) {
        Integer bookId = bizBrrow.getBookId();
        Long userId = bizBrrow.getUserId();
        // 查看是否已经借阅过
        QueryWrapper<BizBrrowEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("book_id",bookId).eq("user_id",userId).eq("is_del",1);
        List<BizBrrowEntity> entities = baseMapper.selectList(queryWrapper);
        if (entities!=null&&entities.size()>0) {
            return BookConstants.BORROWED;
        }

        bizBrrow.setIsOver(1);
        bizBrrow.setIsDel(1);
        this.save(bizBrrow);
        return 0;
    }

    @Override
    public Integer returnBook(BizBrrowEntity bizBrrow) {
        QueryWrapper<BizBrrowEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("book_id",bizBrrow.getBookId()).eq("user_id",bizBrrow.getUserId()).eq("is_over",1).eq("is_del",1);
        List<BizBrrowEntity> entities = baseMapper.selectList(queryWrapper);
        if (entities!=null&&entities.size()!=0) {
            BizBrrowEntity entity = entities.get(0);
            bizBrrow.setId(entity.getId());
            bizBrrow.setBrrowTime(entity.getBrrowTime());
            bizBrrow.setRealTime(StrUtil.isBlank(entity.getRealTime())? DateUtil.format(new Date(),"yyyy-MM-dd"):entity.getRealTime());
            // 归还
            bizBrrow.setIsOver(0);
            bizBrrow.setIsDel(0);
        }

        this.updateById(bizBrrow);
        return 0;
    }

    @Override
    public BizBrrowEntity findBorrowById(Object id) {
        BizBrrowEntity bizBrrowEntity = baseMapper.selectById(Integer.parseInt((String) id));
        return bizBrrowEntity;
    }
}