package com.caoyi.sys.menu.model;

import java.io.Serializable;

import com.caoyi.common.bean.PageBean;

public class Menu extends PageBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Menu(){
		
	}
	private int id;
	
	private String text;  //树的名字
	
	private String descri; //树的描述
	
	private int supers; //树的父类
	
	private String levels; //树的层次
	
	private String sorts;  //排序
	
	private String statu;  //状态(0表示禁用,1表示启用)
	
	private String attributes;   //跳转地址

	private String iconCls;   //图标地址

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getDescri() {
		return descri;
	}

	public void setDescri(String descri) {
		this.descri = descri;
	}

	public int getSupers() {
		return supers;
	}

	public void setSupers(int supers) {
		this.supers = supers;
	}

	public String getLevels() {
		return levels;
	}

	public void setLevels(String levels) {
		this.levels = levels;
	}

	public String getSorts() {
		return sorts;
	}

	public void setSorts(String sorts) {
		this.sorts = sorts;
	}

	public String getStatu() {
		return statu;
	}

	public void setStatu(String statu) {
		this.statu = statu;
	}

	public String getAttributes() {
		return attributes;
	}

	public void setAttributes(String attributes) {
		this.attributes = attributes;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
}
