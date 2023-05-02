package io.renren.modules.dxs.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *医生：(Doctor)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "Doctor")
public class Doctor implements Serializable {

    //医生编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "doctor_id")
    private Integer doctor_id;
    // 医生账户
    @Basic
    private String doctor_account;
    // 医生工号
    @Basic
    private String doctor_job_number;
    // 医生姓名
    @Basic
    private String doctor_name;
    // 性别
    @Basic
    private String gender;
    // 年龄
    @Basic
    private String age;
    // 用户编号
    @Id
    @Column(name = "user_id")
    private Integer userId;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}