package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Notice;
import io.renren.modules.dxs.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

/**
 * 公告：(Notice)表控制层
 *
 */
@RestController
@RequestMapping("notice")
public class NoticeController extends BaseController<Notice, NoticeService> {
    /**
     * 服务对象
     */
    @Autowired
    public NoticeController(NoticeService service) {
        setService(service);
    }

}


