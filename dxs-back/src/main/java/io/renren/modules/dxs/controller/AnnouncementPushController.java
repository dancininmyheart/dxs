package io.renren.modules.dxs.controller;


import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.AnnouncementPush;
import io.renren.modules.dxs.service.AnnouncementPushService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *公告推送：(AnnouncementPush)表控制层
 *
 */
@RestController
@RequestMapping("/announcement_push")
public class AnnouncementPushController extends BaseController<AnnouncementPush, AnnouncementPushService> {

    /**
     *公告推送对象
     */
    @Autowired
    public AnnouncementPushController(AnnouncementPushService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {

        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
