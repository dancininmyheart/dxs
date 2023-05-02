package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.ReservationCenter;
import io.renren.modules.dxs.service.ReservationCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *预约中心：(ReservationCenter)表控制层
 *
 */
@RestController
@RequestMapping("/reservation_center")
public class ReservationCenterController extends BaseController<ReservationCenter, ReservationCenterService> {

    /**
     *预约中心对象
     */
    @Autowired
    public ReservationCenterController(ReservationCenterService service) {
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
