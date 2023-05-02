package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *答卷收集：(AnswerCollection)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "AnswerCollection")
@TableName("answer_collection")
public class AnswerCollection implements Serializable {

    //AnswerCollection编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "answer_collection_id")
    private Integer answer_collection_id;
   // 问卷标题
   @Basic
    private String questionnaire_title;
   // 提交附件
   @Basic
    private String submit_attachments;
   // 教师账户
   @Basic
    private Integer teacher_account;
   // 教师姓名
   @Basic
    private String teacher_name;
   // 学生姓名
   @Basic
    private String student_name;
   // 学生账号
   @Basic
    private Integer student_account;
   // 提交时间
   @Basic
    private Timestamp submission_time;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
