package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Slides;
import io.renren.modules.dxs.service.SlidesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 轮播图：(Slides)表控制层
 *
 */
@RestController
@RequestMapping("slides")
public class SlidesController extends BaseController<Slides, SlidesService> {
    /**
     * 服务对象
     */
    @Autowired
    public SlidesController(SlidesService service) {
        setService(service);
    }

}


