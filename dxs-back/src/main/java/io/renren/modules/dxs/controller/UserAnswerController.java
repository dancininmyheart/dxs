package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.UserAnswer;
import io.renren.modules.dxs.service.UserAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 用户答题
 *
 */
@RestController
@RequestMapping("user_answer")
public class UserAnswerController extends BaseController<UserAnswer, UserAnswerService> {
    /**
     * 服务对象
     */
    @Autowired
    public UserAnswerController(UserAnswerService service) {
        setService(service);
    }

}


