package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.TestScoreRecord;
import io.renren.modules.dxs.service.TestScoreRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *测试成绩记录：(TestScoreRecord)表控制层
 *
 */
@RestController
@RequestMapping("/test_score_record")
public class TestScoreRecordController extends BaseController<TestScoreRecord, TestScoreRecordService> {

    /**
     *测试成绩记录对象
     */
    @Autowired
    public TestScoreRecordController(TestScoreRecordService service) {
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
