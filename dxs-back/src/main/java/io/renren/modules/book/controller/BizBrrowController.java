package io.renren.modules.book.controller;

import java.awt.*;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.word.Word07Writer;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.renren.modules.book.consts.BookConstants;
import io.renren.modules.book.entity.BizBookEntity;
import io.renren.modules.book.service.BizBookService;
import io.renren.modules.sys.entity.SysUserEntity;
import io.renren.modules.sys.service.SysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.book.entity.BizBrrowEntity;
import io.renren.modules.book.service.BizBrrowService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;


/**
 * 
 *
 * @author å°å¿
 * @email amazingjava@163.com
 * @date 2020-10-05 20:14:05
 */
@RestController
@RequestMapping("book/bizbrrow")
public class BizBrrowController {

    @Autowired
    private BizBrrowService bizBrrowService;

    @Autowired
    private BizBookService bizBookService;

    @Autowired
    private SysUserService sysUserService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("book:bizbrrow:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bizBrrowService.queryPage(params);

        return R.ok().put("page", page);
    }

    /**
     * 获取逾期列表
     */
    @RequestMapping("/over")
    public R getOverList(@RequestParam Map<String, Object> params) {
        PageUtils page = bizBrrowService.queryOverList(params);
        return R.ok().put("page", page);
    }





    /**
     * 借阅图书
     */
    @RequestMapping("/borrow")
    public R borrow(@RequestBody BizBrrowEntity bizBrrow) {
        Integer result = bizBrrowService.borrowBook(bizBrrow);
        if (result == BookConstants.BORROWED) {
            return R.error(BookConstants.BORROWED,"您已借阅此书, 请先归还后再借阅!");
        }
        return R.ok();
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("book:bizbrrow:info")
    public R info(@PathVariable("id") Integer id){
		BizBrrowEntity bizBrrow = bizBrrowService.getById(id);

        return R.ok().put("bizBrrow", bizBrrow);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("book:bizbrrow:save")
    public R save(@RequestBody BizBrrowEntity bizBrrow){
		bizBrrowService.save(bizBrrow);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("book:bizbrrow:update")
    public R update(@RequestBody BizBrrowEntity bizBrrow){
        bizBrrowService.updateById(bizBrrow);

        return R.ok();
    }

    /**
     * 归还图书
     */
    @RequestMapping("/return")
//    @RequiresPermissions("book:bizbrrow:update")
    public R retBook(@RequestBody BizBrrowEntity bizBrrow){
        bizBrrowService.returnBook(bizBrrow);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("book:bizbrrow:delete")
    public R delete(@RequestBody Integer[] ids){
		bizBrrowService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
