<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>    
    <title></title>
  </head>
  
  <body>
    <br>
    <a href=adminindex.y>进入<%=Constants.MODULE_WEB_NAME%>管理页面</a>
    <br>
    <br>
  </body>
</html>
