package com.cj.shopping.sysmanage.dao;

import com.cj.shopping.sysmanage.entity.Product;

/**
 * 类描述：商品数据传输对象
 * 类名称：ProductDAO
 */
public class ProductDAO extends Product {

	private static final long serialVersionUID = -2025824389940578630L;

	private String category1Name;
	
	private String category2Name;

	public String getCategory1Name() {
		return category1Name;
	}

	public void setCategory1Name(String category1Name) {
		this.category1Name = category1Name;
	}

	public String getCategory2Name() {
		return category2Name;
	}

	public void setCategory2Name(String category2Name) {
		this.category2Name = category2Name;
	}

	@Override
	public String toString() {
		return super.toString() + 
			"ProductDAO [category1Name=" + category1Name + ", category2Name=" + category2Name + "]";
	}
	
}
