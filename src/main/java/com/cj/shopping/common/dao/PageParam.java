package com.cj.shopping.common.dao;

/**
 * 类描述：分页对象
 * 类名称：PageParam
 */
public class PageParam {

	/**
	 * 第几页，默认第一页
	 */
	private Integer pageNo = 1;
	
	/**
	 * 每页多少条记录，默认每页5条记录
	 */
	private Integer pageSize = 5;

	public PageParam() {}

	public PageParam(Integer pageNo, Integer pageSize) {
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
}
