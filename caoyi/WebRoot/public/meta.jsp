<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
   //缓存
   response.setHeader("progma","no-cache");   
   response.setHeader("Cache-Control","no-cache");   
%> 
<c:set var="ctx" value="<%=request.getContextPath() %>"/>

