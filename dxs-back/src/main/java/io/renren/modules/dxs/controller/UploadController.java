package io.renren.modules.dxs.controller;


import io.renren.modules.dxs.controller.base.BaseController;
import io.renren.modules.dxs.entity.Upload;
import io.renren.modules.dxs.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * (Upload)表控制层
 *
 */
@RestController
@RequestMapping("upload")
public class UploadController extends BaseController<Upload, UploadService> {
    /**
     * 服务对象
     */
    @Autowired
    public UploadController(UploadService service) {
        setService(service);
    }

}


