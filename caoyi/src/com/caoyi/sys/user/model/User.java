package com.caoyi.sys.user.model;

import java.io.Serializable;
import java.util.Date;

import com.caoyi.common.bean.PageBean;

public class User extends PageBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2636046586072488566L;

	public User(){
		
	}
	private int id;
	private String userName;//用户名
	private String remark;//备注
	private String passWrd; //用户密码
	private String passWrd1;//用户明文密码
	private Date createDate;//创建时间
	private Date updateDate;//更新时间
	private String groupCode;//所属哪个群
	private String tag;//
	
	public void setId(int id){
		this.id = id;
	}
	public int getId(){
		return this.id;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public String getUserName(){
		return this.userName;
	}

	public void setRemark(String remark){
		this.remark = remark;
	}
	public String getRemark(){
		return this.remark;
	}
	public void setPassWrd(String passWrd){
		this.passWrd = passWrd;
	}
	public String getPassWrd(){
		return this.passWrd;
	}
	
	public void setCreateDate(Date createDate){
		this.createDate = createDate;
	}
	public Date getCreateDate(){
		return this.createDate;
	}
	
	public void setUpdateDate(Date updateDate){
		this.updateDate = updateDate;
	}
	public Date getUpdateDate(){
		return this.updateDate;
	}
	
	public void setGroupCode(String groupCode){
		this.groupCode = groupCode;
	}
	public String getGroupCode(){
		return this.groupCode;
	}	
	public void setTag(String tag){
		this.tag = tag;
	}
	public String getTag(){
		return this.tag;
	}
	public void setPassWrd1(String passWrd1) {
		this.passWrd1 = passWrd1;	
	}
	public String getPassWrd1(){
		return this.passWrd1;
	}
}
