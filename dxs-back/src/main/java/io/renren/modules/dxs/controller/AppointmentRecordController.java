package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.AppointmentRecord;
import io.renren.modules.dxs.service.AppointmentRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *预约记录：(AppointmentRecord)表控制层
 *
 */
@RestController
@RequestMapping("/appointment_record")
public class AppointmentRecordController extends BaseController<AppointmentRecord, AppointmentRecordService> {

    /**
     *预约记录对象
     */
    @Autowired
    public AppointmentRecordController(AppointmentRecordService service) {
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
