package io.renren.modules.book.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * 
 * @author å°å¿
 * @email amazingjava@163.com
 * @date 2020-10-05 20:14:05
 */
@Data
@TableName("biz_brrow")
public class BizBrrowEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 
	 */
	private Long userId;
	/**
	 * 
	 */
	private Integer bookId;
	/**
	 * 
	 */
	private String brrowTime;
	/**
	 * 
	 */
	private String retTime;
	/**
	 * 
	 */
	private String realTime;
	/**
	 * 
	 */
	private Integer isOver;

	/**
	 * 是否删除
	 */
	private Integer isDel;
}
