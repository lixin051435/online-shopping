package com.cj.shopping.recommendate.dao;

import java.io.Serializable;

/**
 * 类描述：存储用户与用户之间的相似度
 * 类名称：com.cj.shopping.recommendate.dao.UsersSimilarityDAO
 */
public class UserSimilarityDAO implements Serializable, Comparable<UserSimilarityDAO> {

	private static final long serialVersionUID = 3940726816248544380L;
	
	// 用户id
	private Long userId;
	
	// 进行比较的用户id
	private Long userRefId;
	
	// userId与userRefId之间的相似度
	private Double similarity;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getUserRefId() {
		return userRefId;
	}

	public void setUserRefId(Long userRefId) {
		this.userRefId = userRefId;
	}

	public Double getSimilarity() {
		return similarity;
	}

	public void setSimilarity(Double similarity) {
		this.similarity = similarity;
	}

	@Override
	public int compareTo(UserSimilarityDAO o) {
		return o.getSimilarity().compareTo(this.getSimilarity());
	}
	
}
