<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="e" uri="org.topteam/easyui"%>
<%@ include file="public/meta.jsp"%>
<style>
a.a_btn{ 
  display: inline-block;
  opacity: 0.6;
  filter: alpha(opacity=60);
  line-height: 30px;
  text-decoration:none;
  /* background:url('static/easyui1.4.1/themes/icons/clear.png') no-repeat center center; */
 }
</style>
<script type="text/javascript">
var url = "${ctx}";
function onAdd() {
	url = '${ctx}/user/user_add.action';
	//$('#sdsd').show();
	$('#dlg').dialog('open').dialog('setTitle', '新增用户');
	$('#fm').form('clear');
}
function onUp(index) {
	$('#dg').datagrid('selectRow', index);
	var row = $('#dg').datagrid('getSelected');
	if (row) {
	    //$('#sdsd').hide();
		$('#dlg').dialog('open').dialog('setTitle', '修改用户信息');
	    $('#fm').form('load', row);
	    url = '${ctx}/user/user_update.action?id=' + row.id;
	}
}
function onUpData() {
	var row = $('#dg').datagrid('getSelections'); //判定选定多少行
	if (row.length > 1) {
		alert("至多选择一行数据");
		return false;
	}
	row = $('#dg').datagrid('getSelected'); //选中的行数
	//$('#sdsd').hide();
	$('#dlg').dialog('open').dialog('setTitle', '修改用户信息');
	$('#fm').form('load', row);
	url = '${ctx}/user/user_update.action?id=' + row.id;
}
function onDelSingle(index) {
    
	$('#dg').datagrid('selectRow', index);
	var row = $('#dg').datagrid('getSelected');
	if (row) {
	    //alert(row.id);
	    url = '${ctx}/user/user_delete.action';
		onDelPar('ids',row.id,url);
	}
}
function onDel() {
	var row = $('#dg').datagrid('getSelections');
	if (row.length == 0) {
		$.messager.alert('警告','请至少选择一行数据','warning');
		return false;
	}
	var ids = ""; //声明一个数组
	var len = row.length;
	for (var i = 0; i < len; i++) {
		if (i == 0) {
			ids = ids + row[i].id;
		} else {
			ids = ids + "," + row[i].id;
		}
	}
	if(len > 0){
	   url = '${ctx}/user/user_delete.action';
	   onDelPar('ids',ids,url);
	}	
	/* if (confirm("确定要删除这些用户?删除后不可修复")) {
		//第一个参数表示地址,第二个地址表示传参,第三个参数是回传参数
		$.getJSON("${ctx}/user/user_delete.action", {
			"ids" : ids
		}, function(data) {
			if (data.msg == 1) { //删除成功
				$('#dg').datagrid('reload'); // reload the user data
			}
		});
	} */
}
function onDelPar(keyP,valueP,url){
  var s = "{"+keyP+":'"+valueP+"'}";   //单引号表示当作值处理,而不是变量
  var result = eval('('+s+')');   //将字符串转换成json
  //alert(s);
  if (result){
		$.messager.confirm('Confirm','确定要删除这些用户?删除后不可修复',function(r){
			if (r){
				$.post(url,result,function(result){
					//alert(result.success);
					if (result.success){
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({	// show error message
							title: 'Error',
							msg: result.errorMsg
						});
					}
				},'json');
			}
		});
	}
}
function onRefresh(){
  $('#fm').form('clear');
  $('#dg').datagrid('reload'); // reload the user data
}
function onSaveUser() {
	var f = $('#fm');
	f.form('submit', {
		url : url,
		onSubmit : function() {
			return $(this).form('validate');
		},
		success : function(result) {
		    var result = eval('('+result+')');
		    if(result.errorMsg){
		       $.messager.show({
					title: 'Error',
					msg: result.errorMsg,
					timeout:5000
				});
		    }else{
		       f.form('clear');           //必须清除缓存,不然有缓存
			   $('#dlg').dialog('close'); // close the dialog  
			   $('#dg').datagrid('reload'); // reload the user data
		    }	    
		}
	});
}
function onOpera(val, row, index) {
	return '<a href="#" class="a_btn" onclick="onUp('+index
			+')">修改</a> <a href="#" class="a_btn" onclick="onDelSingle(' + index
			+ ');">删除</a>';
}
function onSea(value, name) {
	$('#dg').datagrid('load', {
		"userName" : value
	});
}
function imgcheckbox(cellvalue, options, rowObject) {  
    return (cellvalue==1) ? '<img src="static/easyui1.4.1/themes/icons/ok.png" alt="正常" title="正常" />' : '<img src="static/easyui1.4.1/themes/icons/cancle.png" alt="禁用" title="禁用" />';  
};
function onDate(cellvalue, options, rowObject) {
    var unixTimestamp = new Date(cellvalue);
    return unixTimestamp.toLocaleString();
}
function onSelect(d){  
    var issd = this.id == 'start_time', start_time = issd ? d : new Date($('#start_time').datebox('getValue').replace(/-/g,'/')), end_time = issd ? new Date($('#end_time').datebox('getValue').replace(/-/g,'/')) : d;
    if (end_time < start_time) {
         alert('结束日期小于开始日期');
         //只要选择了日期，不管是开始或者结束都对比一下，如果结束小于开始，则清空结束日期的值并弹出日历选择框
         $('#end_time').datebox('setValue', '').datebox('showPanel');
    }
}
function onSearBtn(){
    var st = new Date($('#start_time').datebox('getValue').replace(/-/g,'/'));
    var et = new Date($('#end_time').datebox('getValue').replace(/-/g,'/'));
    $('#dg').datagrid('load', {
		"startTime" : st.toLocaleDateString(),
		"endTime" : et.toLocaleDateString(),
		"userName" : $('#userName').val(),
	});
}
function onClearBtn(){
   $('#userName').textbox('clear');
   $('#start_time').datebox('clear');
   $('#end_time').datebox('clear');
}  
</script>
<e:templateOverride name="body">
	<div class="property">
	  <e:layout id="layout" style="width:100%;height:100%">
		<e:datagrid id="dg" fit="true" url="${ctx}/user/user_all.action"
					fitColumns="true" pagination="true" toolbar="toolbar" pageSize="10"
					selectOnCheck="true" title="用户信息" collapsible="true"
					remoteSort="true" >
					<e:facet name="toolbar">					    
						<e:button id="addBtn" text="添加" iconCls="icon-add"
							style="margin: 0 10 0 10px" >
							<e:eventListener event="click" listener="onAdd"/>
						</e:button>
						<e:button id="updateBtn" text="修改" iconCls="icon-edit" onclick="onUpData();">
							<e:event event="click" target="form" action="update" />
						</e:button>
						<e:button id="deleteBtn" text="批量删除" iconCls="icon-remove"
							style="margin: 0 0 0 10px" onclick="onDel();">
							<e:event event="click" target="form" action="delete" />
						</e:button>
						<e:button id="refreshBtn" text="刷新" iconCls="icon-reload"
							style="margin: 0 0 0 10px" onclick="onRefresh();">
							<e:event event="click" target="form" action="refresh" />
						</e:button>
						<div style="margin: 0 10 0 10px">
						  <e:inputDate id="start_time" prompt="开始日期" onSelect="onSelect" classStyle="easyui-datebox" editable="false"></e:inputDate>
						  <span >至</span> 
						  <e:inputDate id="end_time" prompt="结束日期" onSelect="onSelect" classStyle="easyui-datebox" editable="false"></e:inputDate>
 						  <e:inputSearch id="userName" style="float: right" prompt="用户名" searcher="onSea" />					                
						  <e:button id="searcher_btn" plain="true" classStyle="easyui-linkbutton" onclick="onSearBtn()" iconCls="icon-search" iconAlign="right" text="搜索"></e:button>
						  <e:button id="clear_btn" plain="true" classStyle="easyui-linkbutton" onclick="onClearBtn()" iconCls="icon-clear" iconAlign="right" text="清除搜索"></e:button>
						</div>
						 				
					</e:facet>
					
					<e:columns frozen="true">
						<e:column field="ck" checkbox="true"></e:column>
						<e:column field="id" width="6%" sortable="true" hidden="true">ID</e:column>
						<e:column field="userName" width="15%">用户名</e:column>
						<e:column field="passWrd" width="15%">密码</e:column>
						<e:column field="tag" width="15%" title="状态" formatter="imgcheckbox" />
						<e:column field="groupCode" width="6%">群</e:column>
						<e:column field="remark" width="15%">备注</e:column>
						<e:column field="createDate" width="15%" title="创建时间" formatter="onDate" sortable="true"></e:column>
						<e:column field="ss" width="15%" formatter="onOpera">操作</e:column>
					</e:columns>
				</e:datagrid>
			</e:layout>
	</div>
	<e:dialog id="dlg" closed="true" closable="true" collapsible="true"
		draggable="true" modal="true" maximizable="true" title="对话框"
		style="width:500px;height:400px;" buttons="#dlg-buttons">
		<div id="dlg-buttons">
			<e:facet name="toolbar">
				<e:button id="dialog-save" text="保存" iconCls="icon-save"
					onclick="onSaveUser();">
				</e:button>
				<e:button id="dialog-cancel" text="取消" iconCls="icon-cancel"
					onclick="javascript:$('#dlg').dialog('close')" />
				<e:button id="dialog-reset" text="重置" iconCls="icon-reload">
					<e:event event="click" target="form" action="reset" />
				</e:button>
			</e:facet>
		</div>
		<e:panel id="formPanel" title="请填写用户信息">
			<e:form id="fm" classStyle="form-area" method="post" >
				<div class="input-control">
					<label class="right">姓名：</label>
					<e:inputText name="userName" classStyle="long" id="txt1"
						required="true" iconCls="icon-man" iconWidth="36" validType="length[3,10]"/>
				</div>
				<div class="input-control">
					<label class="right">密码：</label>
					<e:inputText name="passWrd" classStyle="easyui-validatebox" id="passWrd"
						prompt="Password" iconCls="icon-lock" iconWidth="36"
						required="true" type="password" validType="password_rule"/>
				</div>
				<%-- <div id="sdsd" class="input-control">
					<label class="right">确认密码：</label>
					<!-- equalTo[passWrd] 此为扩展项-->
					<e:inputText name="rePassWrd" classStyle="easyui-validatebox" id="rePpassWrd"
						prompt="Password" iconCls="icon-lock" iconWidth="36"
						required="true" type="password" validType="equalTo[passWrd]"/>
				</div> --%>
				<div class="input-control">
					<label class="right">状态：</label>
					<e:selectOneRadio id="tag" classStyle="long">
					    <e:selectItem itemValue="1" itemLabel="可用" selected="true" />
						<e:selectItem itemValue="0" itemLabel="不可用"  />				
					</e:selectOneRadio>
				</div>
				<div class="input-control">
					<label class="right">备注：</label>
					<e:inputText id="remark" multiline="true" prompt="请输入备注" style="width:300px;height:100px" validType="length[3,20]" classStyle="easyui-validatebox textbox"></e:inputText>
				</div>
			</e:form>
		</e:panel>
	</e:dialog>
</e:templateOverride>
<%@include file="../_TagsDemoTemplate.jsp"%>