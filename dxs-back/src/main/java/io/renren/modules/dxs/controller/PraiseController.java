package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Praise;
import io.renren.modules.dxs.service.PraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 点赞：(Praise)表控制层
 *
 */
@RestController
@RequestMapping("praise")
public class PraiseController extends BaseController<Praise, PraiseService> {
    /**
     * 服务对象
     */
    @Autowired
    public PraiseController(PraiseService service) {
        setService(service);
    }

}


