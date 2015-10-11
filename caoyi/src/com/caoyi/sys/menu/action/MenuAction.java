package com.caoyi.sys.menu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.caoyi.sys.core.BaseActionSupport;
import com.caoyi.sys.menu.model.Menu;
import com.caoyi.sys.menu.service.MenuService;
import com.opensymphony.xwork2.Action;

public class MenuAction extends BaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6609186453994006884L;

	@Autowired
	private MenuService menuService;
	private JSONArray resultObj = new JSONArray();
	
	private Menu menu;
	private List<Menu> menuList;
	
	public MenuAction(){
		menu = new Menu();
	}
	
	public String all(){
		menu.setLevels("1");			
		menu.setStatu("1");	
		menu.setSupers(0);
		menuList = menuService.getMenuList(menu);
		String temp = JSON.toJSONString(menuList);
		
		resultObj = treeMenuList(JSON.parseArray(temp),0);
		System.out.println("node1="+resultObj.toString());
		
		return Action.SUCCESS;
	}
	
	public String second(){
		menu.setStatu("1");
		menu.setLevels("2");
		//menu.setSupers(supers);
		
		menuList = menuService.getMenuList(menu);
		String temp = JSON.toJSONString(menuList);
		
		resultObj = treeMenuList(JSON.parseArray(temp),supers);
		System.out.println("node2="+resultObj.toString());
		return Action.SUCCESS;
	}
	/**
	 * 递归遍历所有节点
	 * @param menuList2
	 * @param parentId
	 */
	private JSONArray treeMenuList(JSONArray temp,int parentId) {
		// TODO Auto-generated method stub
		JSONArray childTree = new JSONArray();
		for(int i=0;i<temp.size();i++){
			String object = temp.getString(i);
			JSONObject jsonTree = JSON.parseObject(object);
			int id = jsonTree.getIntValue("id");
			int pid = jsonTree.getIntValue("supers");
			if(pid == parentId){
				JSONArray node = treeMenuList(temp,id);
				if(node.size() > 0){
					jsonTree.put("children", node);
				}		
				childTree.add(jsonTree);
			}
		}
		return childTree;
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
	
	public JSONArray getResultObj() {
		return resultObj;
	}

	public void setResultObj(JSONArray resultObj) {
		this.resultObj = resultObj;
	}
}
