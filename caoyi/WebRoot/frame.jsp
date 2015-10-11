<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="e" uri="org.topteam/easyui"%>
<%@ include file="public/meta.jsp"%>
<script type="text/javascript">
    function getTabWidth(){
       var ifm= document.getElementById("mainweb");
       var subWeb = document.frames ? document.frames["mainweb"].document:ifm.contentDocument;
       if(ifm != null && subWeb != null) {
          ifm.height = subWeb.body.scrollHeight;
       }
    }
	function createUrl(url) {
	    var content = '<iframe id="mainweb" name="mainweb" onLoad="getTabWidth()" frameborder="0" src="'+url+'" scrolling="no" height="80%" width="100%"></iframe>';
		return content;
	}
	function updateTab() {
		var currTab = self.parent.$('#tb').tabs('getSelected'); //获得当前tab
		var url = $(currTab.panel('options').content).attr('src');
		//alert(url);
		self.parent.$('#tb').tabs('update', {
			tab : currTab,
			options : {
				content : createUrl(url)
			}
		});
	}
function closeTab(action) {
	    var alltabs = $('#tb').tabs('tabs');
		var currentTab = $('#tb').tabs('getSelected');
		var allTabtitle = [];		
		$.each(alltabs, function(i, n) {
		    allTabtitle.push($(n).panel('options').title);			
		});
		var onlyOpenTitle = "首页";
		switch (action) {
		case "refresh":
			var iframe = $(currentTab.panel('options').content);
			var src = iframe.attr('src');
			$('#tb').tabs('update', {
				tab : currentTab,
				options : {
					content : updateTab()
				}
			});
			break;
		case "close":
			var currtab_title = currentTab.panel('options').title;
			$('#tb').tabs('close', currtab_title);
			break;
		case "closeall":
			$.each(allTabtitle, function(i, n) {
				if (n != onlyOpenTitle) {
					$('#tb').tabs('close', n);
				}
			});
			break;
		case "closeother":
			var currtab_title = currentTab.panel('options').title;
			$.each(allTabtitle, function(i, n) {
				if (n != currtab_title && n != onlyOpenTitle) {
					$('#tb').tabs('close', n);
				}
			});
			break;
		case "closeright":
			var tabIndex = $('#tb').tabs('getTabIndex', currentTab);
			if (tabIndex == alltabs.length - 1) {
				alert('亲，后边没有啦 ^@^!!');
				return false;
			}
			$.each(allTabtitle, function(i, n) {
				if (i > tabIndex) {
					if (n != onlyOpenTitle) {
						$('#tb').tabs('close', n);
					}
				}
			});
			break;
		case "closeleft":
			var tabIndex = $('#tb').tabs('getTabIndex', currentTab);
			if (tabIndex == 1) {
				alert('亲，前边那个上头有人，咱惹不起哦。 ^@^!!');
				return false;
			}
			$.each(allTabtitle, function(i, n) {
				if (i < tabIndex) {
					if (n != onlyOpenTitle) {
						$('#tb').tabs('close', n);
					}
				}
			});
			break;
		case "exit":
			$('#closeMenu').menu('hide');
			break;
		}
	}
	function myLoadFilter(data, parent){
			var state = $.data(this, 'tree');
		    function setData(){
		    	var serno = 1;
		        var todo = [];
		        for(var i=0; i<data.length; i++){
		            todo.push(data[i]);
		        }
		        while(todo.length){
		            var node = todo.shift();
		            if (node.id == undefined){
		            	node.id = '_node_' + (serno++);
		            }
		            if (node.children){
		                node.state = 'closed';
		                node.children1 = node.children;
		                node.children = undefined;
		                todo = todo.concat(node.children1);
		            }
		        }
		        state.tdata = data;
		    }
		    function find(id){
		    	var data = state.tdata;
		    	var cc = [data];
		    	while(cc.length){
		    		var c = cc.shift();
		    		for(var i=0; i<c.length; i++){
		    			var node = c[i];
		    			if (node.id == id){
		    				return node;
		    			} else if (node.children1){
		    				cc.push(node.children1);
		    			}
		    		}
		    	}
		    	return null;
		    }
		    
		    setData();
		    
		    var t = $(this);
		    var opts = t.tree('options');
		    opts.onBeforeExpand = function(node){
	    		var n = find(node.id);
	    		if (n.children && n.children.length){return}
		    	if (n.children1){
		    		var filter = opts.loadFilter;
		    		opts.loadFilter = function(data){return data;};
		    		t.tree('append',{
		    			parent:node.target,
		    			data:n.children1
		    		});
		    		opts.loadFilter = filter;
		    		n.children = n.children1;
		    	}
		    };
			return data;
		}
	 function tabCloseEven() {
		$('#mm').menu({
			onClick : function(item) {
				closeTab(item.id);
			}
		});
		return false;
	} 
</script>
<e:templateOverride name="body">
	<div class="property">
		<e:layout id="layout" style="width:100%;height:100%">
			<e:layoutUnit region="north" style="height:60px" title="菜单区" split="true" href="${ctx}/top.jsp"/>
			<e:layoutUnit region="south" style="height:60px" split="true" href="${ctx}/down.html" />
			<e:layoutUnit region="west" style="width:150px" split="true"
				title="菜单区" collapsible="true">
				<e:accordion id="menu" fit="true" border="false" animate="true"
					 classStyle="easyui-accordion" selected="0">
					<script type="text/javascript">
						var url = "/caoyi";
						$(document).ready(
							function() {$.ajax({
								type : 'POST',
								dataType : "json",
								url : url+ '/menu/menu_all.action',
								success : function(data) {
									$.each(data,function(index,item) {
									    //$('#menu').accordion('add',item);
									    //$('#'+item.id).html('<ul id="tree'+item.id+'" style="margin-top: 5px;"></ul>');  
										 $('#menu').accordion('add',{
										    id : item.id,
											title : item.text,
											selected : false,
											collapsible:true,
											content : '<div style="padding:10px"><ul id="tree'+item.id+'" class="easyui-tree"></ul></div>'
											}); 
										});
									}
								});
                                
						 $("#menu").accordion({
							onSelect : function(title,index) {
								var panel = $("#menu").accordion('getPanel',index);
								var treeId = panel[0].id;
								//alert(panel[0].id);
								$('#tree'+treeId).tree({
								  //url: url+'/data.json',
								  url:url+'/menu/menu_second.action?supers='+treeId,
								  loadFilter: myLoadFilter,
								  onClick : function(node) {
									if (node.attributes != 0) {
											openTab(node.text,node.attributes);
										}
								}
								});
								},
								
                             });
						
							$("#tb").tabs({
								onContextMenu : function(e,title) {
									e.preventDefault();
									$('#mm').menu('show',{
										left : e.pageX,
										top : e.pageY
									}).data("tabTitle",title);
										tabCloseEven(); //加载菜单的事件
									}
								});
							});
						function openTab(text, tempUrl) {
							var tb = $('#tb');
							var temp_url = url + tempUrl;
							if (tb.tabs('exists', text)) {
								tb.tabs('select', text);
							} else {
								tb.tabs('add', {
									title : text,
									content : createUrl(temp_url),
									cache:true,
									fit : true,
									closable : true,
									tools : [ {
										iconCls : 'icon-mini-refresh',
										handler : function() {
											updateTab();
										}
									} ]
								});
							}
						}
					</script>
				</e:accordion>
			</e:layoutUnit>
			<e:layoutUnit region="center" title="功能区" iconCls="icon-ok"
				border="true" classStyle="easyui-tabs" id="tb">
				  <div title="欢迎页" style="padding:20px;overflow:hidden;">   
                    <div style="margin-top:20px;">  
                      <h3>你好，欢迎来到权限管理系统</h3>
                    </div>  
				  </div>
			</e:layoutUnit>
		</e:layout>
	</div>
	<e:menu id="mm" style="width:150px;">
	   <e:menuitem text="刷新" id="refresh"></e:menuitem>
	   <div class="menu-sep"></div>
	   <e:menuitem text="关闭" id="close"></e:menuitem>
	   <e:menuitem text="全部关闭" id="closeall"></e:menuitem>
	   <e:menuitem text="除此之外全部关闭" id="closeother"></e:menuitem>
	   <div class="menu-sep"></div>
	   <e:menuitem text="当前页右侧全部关闭" id="closeright"></e:menuitem>
	   <e:menuitem text="当前页左侧全部关闭" id="closeleft"></e:menuitem>
	   <div class="menu-sep"></div>
	   <e:menuitem text="退出" id="exit"></e:menuitem>
	</e:menu>
</e:templateOverride>
<%@include file="../_TagsDemoTemplate.jsp"%>