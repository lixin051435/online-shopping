package com.cj.shopping.sysmanage.dao;

import com.cj.shopping.sysmanage.entity.Category2;

/**
 * 类描述：二级类目数据传输对象
 * 类名称：Category2DAO
 */
public class Category2DAO extends Category2 {

	private static final long serialVersionUID = 5369689908955797465L;

	private String category1Name;

	public String getCategory1Name() {
		return category1Name;
	}

	public void setCategory1Name(String category1Name) {
		this.category1Name = category1Name;
	}
	
}
