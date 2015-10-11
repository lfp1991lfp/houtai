package com.caoyi.sys.core;

import com.opensymphony.xwork2.ActionSupport;

public class BaseActionSupport extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4539145309333663142L;

	private int page;
	
	private int rows;
	
	private String sort = "id";
	
	private String order = "desc";
	
	private String startTime;
	
    private String endTime;
    
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
	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
}
