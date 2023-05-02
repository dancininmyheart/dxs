package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *预约中心：(ReservationCenter)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ReservationCenter")
@TableName("reservation_center")
public class ReservationCenter implements Serializable {

    //ReservationCenter编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_center_id")
    private Integer reservation_center_id;
   // 教师工号
   @Basic
    private String teacher_job_number;
   // 教师姓名
   @Basic
    private String teacher_name;
   // 教师账户
   @Basic
    private Integer teacher_account;
   // 教师头像
   @Basic
    private String teacher_head;
   // 相关证书
   @Basic
    private String relevant_certificates;
   // 擅长领域
   @Basic
    private String areas_of_expertise;
    // 点击数
    @Basic
    private Integer hits;
    // 点赞数
    @Basic
    private String praise_len;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
