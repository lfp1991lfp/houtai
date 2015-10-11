package com.caoyi.sys.user.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.caoyi.sys.user.dao.UserDao;
import com.caoyi.sys.user.model.User;
import com.github.pagehelper.PageHelper;

@Repository
public class UserDaoImpl implements UserDao{
	
	Logger log = Logger.getLogger(UserDaoImpl.class);
	
	private final String INSERT_USER = "insertUser";
	private final String UPDATE_USER = "updateUser";
	private final String DELETE_USER = "deleteUser";
	private final String COUNT_USER = "countUser";
	private final String SELECT_ALL_USER = "selectAllUser";
	private final String USER_LOGIN = "userLogin";
	private final String USER_LIST_UPDATE = "userListUpdate";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public int getUserCount(User user) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne(COUNT_USER, user);
	}

	@Override
	public List<User> getUserList(User user) {
		// TODO Auto-generated method stub
		PageHelper.startPage(user.getPage(),user.getRows(),user.getSort()+" "+user.getOrder());
		return sqlSessionTemplate.selectList(SELECT_ALL_USER,user);
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		log.info("insertUser(User user)");
		return sqlSessionTemplate.insert(INSERT_USER, user);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update(UPDATE_USER, user);
	}

	@Override
	public int deleteUser(User user) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete(DELETE_USER, user);
	}

	@Override
	public User checkUser(User user) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne(USER_LOGIN, user);
	}

	@Override
	public int updateUserList(List<String> ids) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update(USER_LIST_UPDATE, ids);
	}

}
