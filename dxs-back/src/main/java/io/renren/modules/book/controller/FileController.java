package io.renren.modules.book.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.word.Word07Writer;
import io.renren.common.utils.PathUtil;
import io.renren.modules.book.entity.BizBookEntity;
import io.renren.modules.book.entity.BizBrrowEntity;
import io.renren.modules.book.service.BizBookService;
import io.renren.modules.book.service.BizBrrowService;
import io.renren.modules.sys.entity.SysUserEntity;
import io.renren.modules.sys.service.SysUserService;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.*;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/borrow")
public class FileController {

    @Autowired
    private BizBrrowService bizBrrowService;

    @Autowired
    private BizBookService bizBookService;

    @Autowired
    private SysUserService sysUserService;

    /**
     * 打印催还单
     */
    @RequestMapping("/order")
    public void getOrder(@RequestParam Map<String, Object> params, HttpServletResponse response) {
        if (params !=null&&params.size() != 0) {
            Object id = params.get("id");
            BizBrrowEntity borrow = bizBrrowService.findBorrowById(id);

            Integer bookId = borrow.getBookId();
            BizBookEntity bookEntity = bizBookService.getById(bookId);

            Long userId = borrow.getUserId();
            SysUserEntity userEntity = sysUserService.getById(userId);

            Word07Writer writer = new Word07Writer();

            // 添加段落（标题）
            writer.addText(ParagraphAlignment.CENTER,new Font("方正小标宋简体", Font.PLAIN, 22), "逾期催还单"+ DateUtil.format(new Date(),"yyyy-MM-dd"));
            // 添加段落（正文）
            writer.addText(new Font("宋体", Font.PLAIN, 16), "逾期未还书籍："+bookEntity.getBookName(), "  逾期人："+userEntity.getUsername()+"\n");
            writer.addText(new Font("宋体", Font.PLAIN, 16), "书籍编号："+bookEntity.getId(), "  逾期人编号："+userEntity.getUserId()+"\n");
            writer.addText(new Font("宋体", Font.PLAIN, 16), "请您尽快归还书籍，以免造成不良影响! 安静图书馆（宣）");

            //response为HttpServletResponse对象
            response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
            //test.xls是弹出下载对话框的文件名，不能为中文，中文请自行编码
            response.setHeader("Content-Disposition","attachment;filename=order.docx");
            ServletOutputStream out = null;
            try {

                out = response.getOutputStream();
                String path = PathUtil.getUploadAbsolutePath();
                // 写出流
                writer.flush(FileUtil.file(path+ File.separator+"wordWrite.docx"));
//                writer.flush(out,true);
                // 关闭
                writer.close();

                FileInputStream inputStream = new FileInputStream(path + File.separator + "wordWrite.docx");
                IoUtil.copy(inputStream,out);

                IoUtil.close(inputStream);
                IoUtil.close(out);

                File file = FileUtil.file(path + File.separator + "wordWrite.docx");
                if (file.exists()&&file.isFile()) {
                    file.delete();
                }
            }catch (Exception e) {

            }
        }
    }
}
