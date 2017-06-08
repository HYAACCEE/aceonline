<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ page import="com.svv.dms.web.util.HIUtil" %>
<%@ page import="com.svv.dms.web.common.ParamClass" %>
<%@ page import="com.gs.db.database.BizAResult" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
String DOCPATH = "../doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
CSSPATH = "../doc/css/001";
%>

<html>
<head>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
  <link type="text/css" rel="stylesheet" href="<%=CSSPATH%>/styles.css" />
  <script type="text/javascript" src="<%=DOCPATH%>script/common/jquery-1.32pack.js"></script>
  <script language="javascript" src="<%=DOCPATH%>script/common/HIUtil.js"></script>
  <script language="javascript" src="<%=DOCPATH%>script/common/HICheck.js"></script>
  <script language="javascript" src="<%=DOCPATH%>script/DynaXmlHttp.js"></script>
  <script language="javascript" src="<%=DOCPATH%>spec/bizCommon.js"></script>
  
  <script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/yy-utils.js"></script>  

  <script language="javascript">
    function setError(s){
      //alert(s);
      showErrorWin(s);
    }
    function setMessage(s){
        //showMsgWin(s);
        if(parent) parent.setMessage(s,true);
    }
    var spliter = "<%=Constants.SPLITER%>";
    var spliter_data = "<%=Constants.SPLITER_DATA%>";
    function init(){}
    function initmsg_0(){
      initmsg();
    }
  </script>
</head>
<body id="body" onContextMenu="return true" onload="init();initmsg_0();">