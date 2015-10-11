package com.caoyi.sys.user.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.caoyi.sys.core.BaseActionSupport;
import com.caoyi.sys.user.model.User;
import com.caoyi.sys.user.service.UserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class UserAction extends BaseActionSupport implements ModelDriven<User>{

	/**
	 * 使用了模型驱动,简化变量传值
	 */
	private static final long serialVersionUID = -2174459631704709969L;
	@Autowired
	private UserService userService;
	private User user;
	private List<User> userList;
	private JSONObject resultObj;

	public UserAction() {

	}

	public String login() {
		user = userService.checkUser(user);
		return Action.SUCCESS;
	}

	public String add() {
		resultObj = new JSONObject();
		user.setCreateDate(new Date());
		user.setUpdateDate(new Date());
		user.setPassWrd1("1");
		user.setGroupCode("1");
		userService.insertUser(user);
		// resultObj.put("errorMsg", value);
		return Action.SUCCESS;
	}

	public String delete() {
		resultObj = new JSONObject();
		int length = 0;
		List<String> delList = new ArrayList<String>();
		if (ids.contains(",")) {
			String[] delArray = ids.split(",");
			length = delArray.length;			
			for (int i = 0; i < length; i++) {
				delList.add(delArray[i]);
			}
		}
		if (length == 0) {
			user.setId(Integer.valueOf(ids));
			user.setTag("0");
			userService.updateUser(user);
		} else {
			userService.updateUserList(delList);
		}
		resultObj.put("success", 1);   //对应回传的msg
		return Action.SUCCESS;
	}

	public String update() {
		resultObj = new JSONObject();
		user.setUpdateDate(new Date());
		if(userService.getUserCount(user) > 0){
			resultObj.put("errorMsg", "用户已存在,请重新修改");
		}else{
			userService.updateUser(user);
		}		
			
		return Action.SUCCESS;
	}

	public String all() {
		resultObj = new JSONObject();
		user.setTag("1");
		if(getStartTime() != null && getEndTime() != null && !getStartTime().equals("Invalid Date") && !getEndTime().equals("Invalid Date")){
			user.setCondition("createDate between '"+getStartTime()+" 00:00:00' and '"+getEndTime()+" 23:59:59'");
		}else{
			user.setCondition(null);
		}
		userList = userService.getUserList(user);
		int total = userService.getUserCount(user);
		String temp = JSON.toJSONString(userList);
		JSONArray resultObjTemp = JSON.parseArray(temp);

		resultObj.put("total", total);
		resultObj.put("rows", resultObjTemp);

		return SUCCESS;
	}

	public JSONObject getResultObj() {
		return resultObj;
	}

	public void setResultObj(JSONObject resultObj) {
		this.resultObj = resultObj;
	}

	private String ids;
    
    
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		if(user == null){
			user = new User();
		}
		return user;
	}
}
