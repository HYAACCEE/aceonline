<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants,com.svv.dms.web.util.HIUtil"%>
<%
String DOCPATH = "doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
%>

<html>
<head>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
<script>
  function init(){
    var f = document.MainForm;
    f.action = 'login.y';
    f.target = 'myframe';
    f.submit();
  }
  function closeWindow(){
    logout();
    index('Close');
  }  
  function logout(){
    xml = new ActiveXObject("Microsoft.XMLHTTP");
    var post = ""; 
    xml.open("POST","logout.y",false);
    xml.send(post);
  }
  function index(a){
    if(window.returnValue && window.returnValue!='' || !a) a = '';
    var _self = window.self;
    if(parent.aa){
	    if(document.all.mk.value=='<%=Constants.MK_ADMIN%>'){
	      window.returnValue = 'adminindex'+a;
	    }else{
	      window.returnValue = 'index'+a;
	    }
	    window.close(); //当弹出窗口模式时，要关闭。
	  }else{
	    //if(a == 'Close') window.close();
      if(document.all.mk.value=='<%=Constants.MK_ADMIN%>'){
        location = 'adminindex.y';
      }else{
        location = 'index.y';
      }
	  }
  }
</script>
</head>
<body onload="init()" onUnload="closeWindow()"  style="MARGIN: 0px; padding: 0px; OVERFLOW: hidden">
<form name="MainForm" method="post">
<input type=hidden name=mk value="<%=request.getParameter("mk")%>">
</form>
<iframe name="myframe" src="" width=100% height=100% scrolling="auto" frameBorder="0"></iframe>
</body>
</html>