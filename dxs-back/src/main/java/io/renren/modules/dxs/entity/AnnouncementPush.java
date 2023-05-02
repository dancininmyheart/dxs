package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *公告推送：(AnnouncementPush)表实体类
 *
 */
@Setter
@Getter
@TableName("announcement_push")
public class AnnouncementPush implements Serializable {

    //AnnouncementPush编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "announcement_push_id")
    private Integer announcement_push_id;
   // 公告标题
   @Basic
    private String announcement_title;
   // 公告附件
   @Basic
    private String announcement_annex;
   // 医生账户
   @Basic
    private Integer teacher_account;
   // 医生姓名
   @Basic
    private String teacher_name;
   // 发布时间
   @Basic
    private String release_time;
   // 公告内容
   @Basic
    private String announcement_content;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
