package com.caoyi.sys.menu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.caoyi.sys.menu.dao.MenuDao;
import com.caoyi.sys.menu.model.Menu;
import com.caoyi.sys.menu.service.MenuService;

@Service
@Transactional
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuDao menuDao;
	
	@Override
	public int getMenuCount(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.getMenuCount(menu);
	}

	@Override
	public List<Menu> getMenuList(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.getMenuList(menu);
	}

	@Override
	public int insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.insertMenu(menu);
	}

	@Override
	public int updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.updateMenu(menu);
	}

	@Override
	public int deleteMenu(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.deleteMenu(menu);
	}
}
