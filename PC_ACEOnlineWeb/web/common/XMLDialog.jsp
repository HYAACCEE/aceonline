<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants"%>
<%@ page import="com.svv.dms.web.util.HIUtil"%>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
response.setHeader("Pragma","No-cache"); 
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0); 

String DOCPATH = "../doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
%>

<html>
<head>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
  <link type="text/css" rel="stylesheet" href="<%=CSSPATH%>/style_main.css" />
<script> 
  //window.setInterval("window.blur()",1000);   
  //window.setInterval("window.focus()",1500);
  
  function init(){
    document.all("dialogframe").style.height = document.documentElement.clientHeight-4;
    var param = window.dialogArguments;
    if(param){
      //document.all.aaa.value = encodeURI(param.url);
      dialogframe.location = encodeURI(param.url);
      document.body.onunload = param.rfun;
    } 
  }
  function setReturn(s){
    window.returnValue = s;
  }
	function setTitle(s){
	  //document.all("mainTitle").innerHTML = s;
	}
  function setMessage(s, clear){
    //document.all("mainMessage").innerHTML = s;
    //setTimeout('clearMessage()', 6000);
  }
  function clearMessage(){
    //document.all("mainMessage").innerHTML = '';
  }
  function closeWindow(){ 
  }
</script>
</head>
<body onload="init()" onunload="return closeWindow();" style="overflow:hidden;">
<input type=hidden size=100 name=aaa>
<iframe name="dialogframe" src="" width=100% height=1 scrolling="no" frameBorder="0"></iframe>
</body>
</html>