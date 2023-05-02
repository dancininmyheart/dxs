package io.renren.common.utils;

import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;

/**
 * 路径工具
 */
public class PathUtil {

    /**
     * 获取文件上传的绝对路径
     */
    public static String getUploadAbsolutePath() {
        //获取跟目录
        File path = null;
        try {
            path = new File(ResourceUtils.getURL("classpath:").getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        if(path!=null&&!path.exists()) {
            path = new File("");
        }

        //如果上传目录为/static/upload/，则可以如下获取：
        File upload = new File(path.getAbsolutePath(),"static/doc/");
        if(!upload.exists()) {
            upload.mkdirs();
        }

        //在开发测试模式时，得到的地址为：{项目跟目录}/target/static/xxx/upload/
        //在打包成jar正式发布时，得到的地址为：{发布jar包目录}/static/xxx/upload/
        return upload.getAbsolutePath();
    }
}
