package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.LectureRecord;
import io.renren.modules.dxs.service.LectureRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

/**
 *讲座记录：(LectureRecord)表控制层
 *
 */
@RestController
@RequestMapping("/lecture_record")
public class LectureRecordController extends BaseController<LectureRecord, LectureRecordService> {

    /**
     *讲座预约对象
     */
    @Autowired
    public LectureRecordController(LectureRecordService service) {
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
