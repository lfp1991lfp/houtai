<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="e" uri="org.topteam/easyui"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<e:templateOverride name="head">
    <script>
        function clickEvent() {
            alert('Event Listener');
        }

    </script>
</e:templateOverride>
<e:templateOverride name="body">
	<div style="position:absolute;top:50%;left:50%; margin-left: -240px;margin-top: -120px">
		<e:panel id="formPanel" title="登陆" style="width:480px;height:240px;">
                <e:form id="form" url="../submit.jsp" classStyle="form-area">
                    <div class="input-control">
                        <label class="center">姓名：</label>
                        <e:inputText classStyle="long" id="txt1" required="true" iconCls="icon-man"
                                     iconWidth="36">
                        </e:inputText>           
                    </div>
                    <div class="input-control"> 
                    <label class="right">密码：</label>
                        <e:inputText classStyle="long" id="psw" prompt="Password" iconCls="icon-lock"
                                     iconWidth="36" required="true" type="password"/>
                    </div>
                    <div style="margin: 30 0 0 100px">
                        <e:button id="submitBtn" text="提交" iconCls="icon-save">
                            <e:event event="click" target="form" action="submit"/>
                        </e:button>
                        <e:button id="resetBtn" text="重置" iconCls="icon-reload">
                            <e:event event="click" target="form" action="reset"/>
                        </e:button>
                    </div>
                </e:form>
            </e:panel>
	</div>
</e:templateOverride>
<%@ include file="../_TagsDemoTemplate.jsp" %>
</html>
