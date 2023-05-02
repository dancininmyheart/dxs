package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.AnswerCollection;
import io.renren.modules.dxs.service.AnswerCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *答卷收集：(AnswerCollection)表控制层
 *
 */
@RestController
@RequestMapping("/answer_collection")
public class AnswerCollectionController extends BaseController<AnswerCollection, AnswerCollectionService> {

    /**
     *答卷收集对象
     */
    @Autowired
    public AnswerCollectionController(AnswerCollectionService service) {
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
