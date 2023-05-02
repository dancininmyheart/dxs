package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.ExamQuestion;
import io.renren.modules.dxs.service.ExamQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 题库
 *
 */
@RestController
@RequestMapping("exam_question")
public class ExamQuestionController extends BaseController<ExamQuestion, ExamQuestionService> {
    /**
     * 服务对象
     */
    @Autowired
    public ExamQuestionController(ExamQuestionService service) {
        setService(service);
    }

}


