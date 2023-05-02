package io.renren.modules.book.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 
 * 
 * @author 尘心
 * @email amazingjava@163.com
 * @date 2020-10-05 20:14:05
 */
@Data
public class BizBrrowDto implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	private Integer id;

	/**
	 * 用户id
	 */
	private Long userId;

	/**
	 * 用户名
	 */
	private String username;

	/**
	 * 书籍id
	 */
	private Integer bookId;

	/**
	 * 书籍名称
	 */
	private String bookName;

	/**
	 * 借阅时间
	 */
	private String brrowTime;

	/**
	 * 归还时间
	 */
	private String retTime;

	/**
	 * 实际归还时间
	 */
	private String realTime;

	/**
	 * 是否归还
	 */
	private Integer isOver;

	/**
	 * 是否逾期 0 未逾期, 1 逾期
	 */
	private Integer status = 0;

	private Integer isDel;
}
