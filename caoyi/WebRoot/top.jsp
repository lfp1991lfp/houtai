<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="e" uri="org.topteam/easyui"%>
<%@ include file="public/meta.jsp"%>

<script type="text/javascript">
function startTime() {
		var today = new Date();
		var y = today.getFullYear();
		var M = today.getMonth()+1;
		var d = today.getDate();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		// add a zero in front of numbers<10//#8db2e3
		m = checkTime(m);
		s = checkTime(s);
		//y + "年" + M + "月" + d + "日   " + h + ":" + m + ":" + s
		document.getElementById("txt").innerHTML=y + "年" + M + "月" + d + "日   " + h + ":" + m + ":" + s;
		t = setTimeout('startTime()', 500);
		//alert(t);
	}

	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
function changeThemeFun(themeName) {/* 更换主题 */
	alert(themeName);
    var $easyuiTheme = $('#easyuiTheme');
    var url = $easyuiTheme.attr('href');
    var href = url.substring(0, url.indexOf('themes')) + 'themes/' + themeName + '/easyui.css';
    $easyuiTheme.attr('href', href);
    var $iframe = $('iframe');
    if ($iframe.length > 0) {
        for ( var i = 0; i < $iframe.length; i++) {
            var ifr = $iframe[i];
            $(ifr).contents().find('#easyuiTheme').attr('href', href);
        }
    }
    $.cookie('easyuiThemeName', themeName, {
        expires : 7
    });
};
if ($.cookie('easyuiThemeName')) {
    changeThemeFun($.cookie('easyuiThemeName'));
}
function onChanges(){
  alert("sd");
}
</script>

<e:templateOverride name="body">
	<div id="top">
		<div class="top_user">
			<span class="smalltext"> 当前用户-<strong>admin</strong>-版本(V39)-<a
				href='javascript:exit()' id="a_test">退出</a></span> 
				<span id="txt" class="smalltext"></span>
			<span>
			   <!-- url="/caoyi/json/skin.json"textField="text" valueField="id" -->
			   <e:comboBox id="pf"  panelWidth="100">
			      <e:selectItem itemValue="1" itemLabel="black" />
                  <e:selectItem itemValue="2" itemLabel="bootstrap" />
                  <e:selectItem itemValue="3" itemLabel="default" />
                  <e:selectItem itemValue="4" itemLabel="gray" />
                  <e:selectItem itemValue="5" itemLabel="metro" selected="true"/>
                  <e:event event="onChange" target=""></e:event>
			   </e:comboBox>
			   <!-- <input id="pf" class="easyui-combobox" name="dept"   
                  data-options="
                  valueField:'id',
                  textField:'text',
                  url:'/caoyi/json/skin.json',
                  onSelect:function(rec){
                    changeThemeFun(rec.text);
                  },panelWidth:'100',
                  panelHeight:'auto',
                  width:'100'"/> -->
			</span>
		</div>
		<!-- <script type="text/javascript">
		   $(document).ready(startTime());
		</script> -->
	</div>
</e:templateOverride>
<%@include file="../_TagsDemoTemplate.jsp"%>
