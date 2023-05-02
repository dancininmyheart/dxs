package io.renren.modules.book.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.book.dao.BizBrrowDao;
import io.renren.modules.book.entity.BizBrrowEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.book.dao.BizBookDao;
import io.renren.modules.book.entity.BizBookEntity;
import io.renren.modules.book.service.BizBookService;


@Service("bizBookService")
public class BizBookServiceImpl extends ServiceImpl<BizBookDao, BizBookEntity> implements BizBookService {

    @Autowired
    private BizBrrowDao bizBrrowDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        // 拿到检索关键字，进行模糊查询
        Object keyword = params.get("key");
        QueryWrapper<BizBookEntity> wrapper = new QueryWrapper<>();
        wrapper.like("book_name",keyword).or().like("author",keyword);
        IPage<BizBookEntity> page = this.page(
                new Query<BizBookEntity>().getPage(params),wrapper
        );

        return new PageUtils(page);
    }

    @Override
    public PageUtils queryMyPage(Map<String, Object> params) {
        // 拿到检索关键字，进行模糊查询
        Object keyword = params.get("key");
        Object userId = params.get("userId");

        List<BizBrrowEntity> myBorrowList = bizBrrowDao.selectList(new QueryWrapper<BizBrrowEntity>().eq("user_id", userId).eq("is_over",1));
        List<Integer> bookIds = new ArrayList<>();
        if (myBorrowList.size()!=0) {
            bookIds = myBorrowList.stream().map(BizBrrowEntity::getBookId).collect(Collectors.toList());
        }else {
            return new PageUtils(new Page<>());
        }

        QueryWrapper<BizBookEntity> wrapper = new QueryWrapper<>();
        wrapper.in("id",bookIds).and(subWrapper->subWrapper.like("book_name",keyword).or().like("author",keyword));
        IPage<BizBookEntity> page = this.page(
                new Query<BizBookEntity>().getPage(params),wrapper
        );

        return new PageUtils(page);
    }

}