package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *测试成绩记录：(TestScoreRecord)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "TestScoreRecord")
@TableName("test_score_record")
public class TestScoreRecord implements Serializable {

    //TestScoreRecord编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "test_score_record_id")
    private Integer test_score_record_id;
   // 测试标题
   @Basic
    private String test_title;
   // 测试类别
   @Basic
    private String test_category;
   // 测试成绩
   @Basic
    private Integer test_results;
   // 测试编号
   @Basic
    private String test_number;
   // 学生姓名
   @Basic
    private String student_name;
   // 学生账号
   @Basic
    private Integer student_account;
   // 录入时间
   @Basic
    private Timestamp entry_time;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
