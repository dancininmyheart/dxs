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
@TableName("biz_book")
public class BizBookEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 书名
	 */
	private String bookName;
	/**
	 * 作者
	 */
	private String author;
	/**
	 * 出版社
	 */
	private String publish;
	/**
	 * 出版日期
	 */
	private String publishTime;
	/**
	 * 价格
	 */
	private Double price;
	/**
	 * 书籍分类
	 */
	private String bookType;
	/**
	 * 上架时间
	 */
	private String uploadTime;
	/**
	 * 记录创建时间
	 */
	private String createTime;
	/**
	 * 记录修改时间
	 */
	private String updateTime;

}
