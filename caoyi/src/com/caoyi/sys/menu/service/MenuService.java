package com.caoyi.sys.menu.service;

import java.util.List;

import com.caoyi.sys.menu.model.Menu;

public interface MenuService {

public int getMenuCount(Menu menu);
	
	public List<Menu> getMenuList(Menu menu);
	
	public int insertMenu(Menu menu);
	
	public int updateMenu(Menu menu);
	
	public int deleteMenu(Menu menu);
}
