package io.renren.modules.dxs.entity;


import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Setter
@Getter
@Entity(name = "LectureRecord")
@TableName("lecture_record")
public class LectureRecord {

    //record编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "record_id")
    private Integer record_id;
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

    // 讲座结束时间
    @Basic
    private String status;

    // 讲座预约人
    @Basic
    private String record_username;

    // 讲座预约人id
    @Basic
    private String user_id;
}
