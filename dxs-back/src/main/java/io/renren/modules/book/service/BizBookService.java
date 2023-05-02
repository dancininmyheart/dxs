package io.renren.modules.book.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.book.entity.BizBookEntity;

import java.util.Map;

/**
 * 
 *
 * @author å°å¿
 * @email amazingjava@163.com
 * @date 2020-10-05 20:14:05
 */
public interface BizBookService extends IService<BizBookEntity> {

    PageUtils queryPage(Map<String, Object> params);

    PageUtils queryMyPage(Map<String, Object> params);
}

