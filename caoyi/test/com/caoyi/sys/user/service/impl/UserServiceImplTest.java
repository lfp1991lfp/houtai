   package com.caoyi.sys.user.service.impl;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.caoyi.sys.menu.model.Menu;
import com.caoyi.sys.menu.service.MenuService;
import com.caoyi.sys.user.model.User;
import com.caoyi.sys.user.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class UserServiceImplTest{

	@Autowired
	private UserService userService;
	
	@Autowired 
	private MenuService menuService;
	
//	@Test
//	public void testAddUser() {
//		User user = new User();
//		user.setUserName("admin");
//		user.setRemark("2");
//		user.setPassWrd("12345");
//		user.setPassWrd1("12345");
//		user.setCreateDate(new Date());
//		user.setUpdateDate(new Date());
//		user.setGroupCode("2");	
//		user.setTag("2");
//		for(int i=0;i<30;i++){
//			System.out.println(userService.insertUser(user));
//		}
//	}
//
//	@Test
//	public void testUpdateUser() {
//		User user = new User();
//		user.setId(2);
//		user.setName("admin");
//		user.setPassword("1234456");
//		System.out.println(userService.updateUser(user));
//	}
//
//	@Test
//	public void testDeleteUser() {
//		User user = new User();
//		user.setId(1);
//		System.out.println(userService.deleteUser(user));
//	}
//	@Test
//	public void getUserCount() {
//		User user = new User();
//		user.setId(2);
//		System.out.println("用户个数="+userService.getUserCount(user));
//	}
//	@Test
//	public void getUserList() {
//		User user = new User();
//		List<User> temp = userService.getUserList(user);
//		String jsonString = JSON.toJSONString(temp);
//		System.out.println("转换后的json="+jsonString);
//	}
	
	@Test
	public void getMenuList() {
		Menu menu = new Menu();
		menu.setStatu("1");
		menu.setLevels("2");
//		menu.setSupers(1);
		
		List<Menu> menuList = menuService.getMenuList(menu);
		String temp = JSON.toJSONString(menuList);
		JSONArray resultObj = JSON.parseArray(temp);
		
		resultObj = treeMenuList(resultObj,1);   //父节点id从传上来的supers开始
		System.out.println("node="+resultObj.toString());
	}
	
	/**
	 * 递归遍历所有节点
	 * @param menuList2
	 * @param parentId
	 */
	private JSONArray treeMenuList(JSONArray resultObj,int parentId) {
		// TODO Auto-generated method stub
		JSONArray childTree = new JSONArray();
		for(int i=0;i<resultObj.size();i++){
			String object = resultObj.getString(i);
			JSONObject jsonTree = JSON.parseObject(object);
			int id = jsonTree.getIntValue("id");
			int pid = jsonTree.getIntValue("supers");
			if(pid == parentId){
				JSONArray node = treeMenuList(resultObj,id);
				jsonTree.put("children", node);
				childTree.add(jsonTree);
			}
		}
		return childTree;
	}
}
