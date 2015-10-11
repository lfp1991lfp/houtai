package com.caoyi.sys.user.service;

import java.util.List;

import com.caoyi.sys.user.model.User;

public interface UserService {

	public int getUserCount(User user);
	
	public List<User> getUserList(User user);
	
	public int insertUser(User user);
	
	public int updateUser(User user);
	
	public int deleteUser(User user);
	
	public User checkUser(User user);
	
	public int updateUserList(List<String> ids);
}
