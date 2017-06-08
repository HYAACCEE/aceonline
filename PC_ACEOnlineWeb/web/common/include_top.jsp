<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ page import="com.svv.dms.web.util.HIUtil" %>
<%@ page import="com.svv.dms.web.common.ParamClass" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
String DOCPATH = "../doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
CSSPATH = "../doc/css/001";

String action = HIUtil.getAttribute(request, "cmd", "");
if(HIUtil.isEmpty(action)) action = HIUtil.getParameter(request, "cmd", "add");
String actName = "";
if(action!=null){
  action = action.replaceAll("Page","");
  if("add".equals(action)) actName = "添加";
  if("edit".equals(action)) actName = "修改";
}
%>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <link rel="stylesheet" href="../doc/css/common.css" />
  <link rel="stylesheet" href="../doc/js/layui/css/layui.css" />
  <!--[if IE 8]> 
    <script src="../doc/js/jquery-1.8.0.js"></script>
  <![endif]--> 
  <!--[if gte IE 8]> 
    <script src="../doc/js/jquery-2.1.4.min.js"></script>
  <![endif]--> 
  <script src="../doc/js/jquery-2.1.4.min.js"></script>
  <script src="../doc/js/layui/layui.js"></script>
  <script src="../doc/js/common.js"></script>  
  <link rel="stylesheet" href="../doc/js/autocomplete/style.css" />
  <script src="../doc/js/autocomplete/jquery.autocomplete.js"></script>
  <script src="../doc/js/autocomplete/autocomplete.js"></script>
  
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HIUtil.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HIForm.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HICheck.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>spec/bizCommon.js"></script>
  
  <style>
    .dt_left {width: 80px; display:inline-block; text-align: right;}
    .dt_right {width: 255px; display:inline-block;}
    .dt_input {width: 227px; display:inline-block;}
  </style>
</head>
<body>
