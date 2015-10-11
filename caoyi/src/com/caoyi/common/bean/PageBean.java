package com.caoyi.common.bean;

import java.io.Serializable;

public class PageBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8137106165013894985L;

	private int page;
	
	private int rows;

	private String sort = "id";
	
	private String order = "desc";
	
	private String condition;
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
}
