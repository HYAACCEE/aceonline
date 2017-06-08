<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ page import="com.svv.dms.web.util.HIUtil" %>
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
  <link type="text/css" rel="stylesheet" href="<%=CSSPATH%>/styles.css" />
  <script language="javascript" src="<%=DOCPATH%>script/common/HIUtil.js"></script>

  <script language="javascript">
    function initPage(tableid){
      d("ao.tableID").value = tableid;
      var f = document.MainForm;
      f.action = "B_DataPublic.y";
      f.submit();    
    }
    function init(){
    }
  </script>
</head>
<body id="body" onContextMenu="return true" onload="init();">

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataPublicBean" property="ao.tableID" value="1" />    
    </form>
    
</body>
</html>