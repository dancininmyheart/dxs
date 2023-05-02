package io.renren.modules.book.controller;

import java.util.Arrays;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.book.entity.BizBookEntity;
import io.renren.modules.book.service.BizBookService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 
 *
 * @author å°å¿
 * @email amazingjava@163.com
 * @date 2020-10-05 20:14:05
 */
@RestController
@RequestMapping("book/bizbook")
public class BizBookController {

    @Autowired
    private BizBookService bizBookService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("book:bizbook:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bizBookService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 列表
     */
    @RequestMapping("/mylist")
//    @RequiresPermissions("book:bizbook:list")
    public R mylist(@RequestParam Map<String, Object> params){
        PageUtils page = bizBookService.queryMyPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("book:bizbook:info")
    public R info(@PathVariable("id") Integer id){
		BizBookEntity bizBook = bizBookService.getById(id);

        return R.ok().put("bizBook", bizBook);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("book:bizbook:save")
    public R save(@RequestBody BizBookEntity bizBook){
		bizBookService.save(bizBook);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("book:bizbook:update")
    public R update(@RequestBody BizBookEntity bizBook){
		bizBookService.updateById(bizBook);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("book:bizbook:delete")
    public R delete(@RequestBody Integer[] ids){
		bizBookService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
