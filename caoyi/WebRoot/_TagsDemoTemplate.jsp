<%--
  Created by IntelliJ IDEA.
  User: 枫
  Date: 2014/8/17
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="e" uri="org.topteam/easyui" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="<%=request.getContextPath() %>"/>
<!-- cookie.easyuiThemeName.value -->
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>jeasyui - The JSP component library for EasyUI </title>
    <e:resource location="static" name="jquery.min.js"/>
    <e:resources location="static/easyui1.4.1" theme="metro"/>
    <e:resource location="static/syntaxhighlighter/scripts" name="shCore.js"/>
    <e:resource location="static/syntaxhighlighter/scripts" name="shBrushJava.js"/>
    <e:resource location="static/syntaxhighlighter/scripts" name="shBrushXml.js"/>
    <e:resource location="static/syntaxhighlighter/scripts" name="shBrushCss.js"/>
    <e:resource location="static/syntaxhighlighter/styles" name="shCore.css"/>
    <e:resource location="static/syntaxhighlighter/styles" name="shThemeDefault.css"/>
    <e:resource location="js/scripts" name="veasyui.js"/>
    <e:resource location="js/scripts" name="jquery.cookie.js"/>
    <e:resource location="js/scripts" name="theme.js"/>
    <e:templateBlock name="head"/>
</head>
<e:body var="je">
    <e:templateBlock name="body"/>
    <e:templateBlock name="script"/>
</e:body>
</html>
