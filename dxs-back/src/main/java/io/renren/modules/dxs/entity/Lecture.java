package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;


/**
 *讲座：(Lecture)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "Lecture")
@TableName("lecture")
public class Lecture implements Serializable {

    //ReservationCenter编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lecture_id")
    private Integer lecture_id;
   // 讲座名
   @Basic
    private String lecture_name;



   // 讲师
   @Basic
    private String lecture_doctorname;

    // 讲座开始时间
    @Basic
    private Date start_time;

    // 讲座结束时间
    @Basic
    private Date end_time;

}
