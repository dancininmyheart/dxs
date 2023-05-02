package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Exam;
import io.renren.modules.dxs.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 考试
 *
 */
@RestController
@RequestMapping("exam")
public class ExamController extends BaseController<Exam, ExamService> {
    /**
     * 服务对象
     */
    @Autowired
    public ExamController(ExamService service) {
        setService(service);
    }

}


