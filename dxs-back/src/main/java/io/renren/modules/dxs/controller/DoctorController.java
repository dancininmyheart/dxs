package io.renren.modules.dxs.controller;



import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Doctor;
import io.renren.modules.dxs.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 *教师：(Teacher)表控制层
 *
 */
@RestController
@RequestMapping("/teacher")
public class DoctorController extends BaseController<Doctor, DoctorService> {

    /**
     *教师对象
     */
    @Autowired
    public DoctorController(DoctorService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapteacher_account = new HashMap<>();
        mapteacher_account.put("teacher_account",String.valueOf(paramMap.get("teacher_account")));
        List listteacher_account = service.select(mapteacher_account, new HashMap<>()).getResultList();
        if (listteacher_account.size()>0){
            return error(30000, "字段教师账户内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
