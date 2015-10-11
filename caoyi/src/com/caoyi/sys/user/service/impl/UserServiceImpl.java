package com.caoyi.sys.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.caoyi.sys.user.dao.UserDao;
import com.caoyi.sys.user.model.User;
import com.caoyi.sys.user.service.UserService;
import com.github.pagehelper.PageHelper;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userdao;
	
	@Override
	public int getUserCount(User user) {
		// TODO Auto-generated method stub
		return userdao.getUserCount(user);
	}

	@Override
	public List<User> getUserList(User user) {
		// TODO Auto-generated method stub
		return userdao.getUserList(user);
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return userdao.insertUser(user);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUser(user);
	}

	@Override
	public int deleteUser(User user) {
		// TODO Auto-generated method stub
		return userdao.deleteUser(user);
	}

	@Override
	public User checkUser(User user) {
		// TODO Auto-generated method stub
		return userdao.checkUser(user);
	}

	@Override
	public int updateUserList(List<String> ids) {
		// TODO Auto-generated method stub
		return userdao.updateUserList(ids);
	}

}
