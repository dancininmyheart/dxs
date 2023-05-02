package io.renren.modules.dxs.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;


/**
 *测试分类：(TestClassification)表实体类
 *
 */
@Setter
@Getter
@Entity
@TableName("test_classification")
public class TestClassification implements Serializable {

    //TestClassification编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "test_classification_id")
    private Integer test_classification_id;
   // 测试类别
   @Basic
    private String test_category;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
