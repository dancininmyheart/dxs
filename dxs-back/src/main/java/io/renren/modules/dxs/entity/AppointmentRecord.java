package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *预约记录：(AppointmentRecord)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "AppointmentRecord")
@TableName("appointment_record")
public class AppointmentRecord implements Serializable {

    //AppointmentRecord编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appointment_record_id")
    private Integer appointment_record_id;
   // 教师工号
   @Basic
    private String teacher_job_number;
   // 教师姓名
   @Basic
    private String teacher_name;
   // 教师账户
   @Basic
    private Integer teacher_account;
   // 预约时间
   @Basic
    private Timestamp time_of_appointment;
   // 学生姓名
   @Basic
    private String student_name;
   // 学生账户
   @Basic
    private Integer student_account;
   // 提交时间
   @Basic
    private Timestamp submission_time;
   // 预约状态
   @Basic
    private String reservation_status;
   // 咨询内容
   @Basic
    private String consultation_content;
   // 回复内容
   @Basic
    private String reply_content;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
