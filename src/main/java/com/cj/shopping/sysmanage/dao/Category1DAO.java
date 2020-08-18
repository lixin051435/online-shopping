package com.cj.shopping.sysmanage.dao;

import java.util.List;

import com.cj.shopping.sysmanage.entity.Category1;
import com.cj.shopping.sysmanage.entity.Category2;

/**
 * 类描述：一级类目业务传输类
 * 类名称：Category1DAO
 */
public class Category1DAO extends Category1 {

	private static final long serialVersionUID = -167179882711448969L;

	// 当前一级类目下的二级类目列表
	private List<Category2> category2List;

	public List<Category2> getCategory2List() {
		return category2List;
	}

	public void setCategory2List(List<Category2> category2List) {
		this.category2List = category2List;
	}
	
}
