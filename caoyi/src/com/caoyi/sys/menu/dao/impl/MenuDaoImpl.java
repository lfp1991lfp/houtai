package com.caoyi.sys.menu.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.caoyi.sys.menu.dao.MenuDao;
import com.caoyi.sys.menu.model.Menu;
import com.github.pagehelper.PageHelper;

@Repository
public class MenuDaoImpl implements MenuDao{

Logger log = Logger.getLogger(MenuDaoImpl.class);
	
	private final String COUNT_MENU = "countMenu";
	private final String SELECT_ALL_MENU = "selectAllMenu";
	private final String INSERT_MENU = "insertMenu";
	private final String UPDATE_MENU = "updateMenu";
	private final String DELETE_MENU = "deleteMenu";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public int getMenuCount(Menu menu) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne(COUNT_MENU, menu);
	}

	@Override
	public List<Menu> getMenuList(Menu menu) {
		// TODO Auto-generated method stub
		PageHelper.startPage(menu.getPage(), menu.getRows(), "m_sorts desc");
		return sqlSessionTemplate.selectList(SELECT_ALL_MENU, menu);
	}

	@Override
	public int insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert(INSERT_MENU, menu);
	}

	@Override
	public int updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update(UPDATE_MENU, menu);
	}

	@Override
	public int deleteMenu(Menu menu) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete(DELETE_MENU, menu);
	}

	
}
