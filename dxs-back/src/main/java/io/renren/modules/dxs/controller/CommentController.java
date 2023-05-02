package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Comment;
import io.renren.modules.dxs.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 评论：(Comment)表控制层
 *
 */
@RestController
@RequestMapping("comment")
public class CommentController extends BaseController<Comment, CommentService> {
    /**
     * 服务对象
     */
    @Autowired
    public CommentController(CommentService service) {
        setService(service);
    }

}


