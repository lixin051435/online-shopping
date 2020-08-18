package com.cj.shopping.recommendate.dao;

import java.io.Serializable;

/**
 * 类描述：用于存储用户的购买行为
 * 类名称：UserActiveDAO
 */
public class UserActiveDAO implements Serializable {

	private static final long serialVersionUID = -103797500202536441L;
	
	// 用户id
	private Long userId;
	
	// 二级类目的id
	private Long category2Id;
	
	// 该用户对该二级类目的点击量
	private Long hits;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getCategory2Id() {
		return category2Id;
	}

	public void setCategory2Id(Long category2Id) {
		this.category2Id = category2Id;
	}

	public Long getHits() {
		return hits;
	}

	public void setHits(Long hits) {
		this.hits = hits;
	}
	
}
