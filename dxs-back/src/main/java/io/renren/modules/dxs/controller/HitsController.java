package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Hits;
import io.renren.modules.dxs.service.HitsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 点击：(Hits)表控制层
 */
@RestController
@RequestMapping("hits")
public class HitsController extends BaseController<Hits, HitsService> {
    /**
     * 服务对象
     */
    @Autowired
    public HitsController(HitsService service) {
        setService(service);
    }

}


