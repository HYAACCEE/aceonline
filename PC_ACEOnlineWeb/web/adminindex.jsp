<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="com.svv.dms.web.Constants"%>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
Constants.checkDomain(request);
response.setHeader("Pragma","No-cache"); 
response.setHeader("Cache-Control","no-cache"); 
response.setDateHeader("Expires", 0);
String DOCPATH = "doc/index/";
String slogon = request.getParameter("s");
%>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title><%=Constants.MODULE_WEB_NAME%>[首页]</title>
  <link type="text/css" rel="stylesheet" href="<%=DOCPATH%>css/index_css1.css" />
  <link type="text/css" rel="stylesheet" href="<%=DOCPATH%>css/index_newhead.css" />
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="doc/script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="doc/script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
  <script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <script type="text/javascript" src="doc/script/jquery-easyui-1.2.3/yy-utils.js"></script>
  <script defer language="javascript">
  <!--    
    if (window.self != window.top) {
      var _self = window.self;
      while(_self){
        if(_self.name == 'myframe'){
          _self.parent.index();
          break;
        }
        if(_self.name == 'dialogframe'){
          alert('因为您长时间没有操作页面，必须重新登录！');
          parent.close();
          break;
        }
        _self = _self.parent;
      }
      
    }    
    
  document.onkeydown=function(){
    with(window.event){
      if(keyCode==116){
        keyCode=0
        cancelBubble=true;
        return false;
      }
    }
  }
  
  function SetFocus(){
    if (document.frmMain.loginName.value=="")
      document.frmMain.loginName.focus();
    else
      document.frmMain.loginName.select();
  }
  var time = 0;
  var dio;
  function waiting(){
      if(time>2){
          clearTimeout(dio);
          //formSubmit()
          return true;
      }
      time = time + 1;
      document.all("sss").innerText = document.all("sss").innerText+".";
      dio = setTimeout('waiting()', 5000);
      return false;
  }  
  function login(){
    show('','<br><br>正在登陆，请稍候 <span id=sss></span>')
    waiting();
  }
  function formSubmit(){  
    document.all("image_submit").disabled = true;
    if(frmMain.loginName.value.length<1){
      //alert("请输入用户名,用户名不能未空");
      //document.all("image_submit").disabled = false;
      return false;
    }    
    if(frmMain.password.value.length<1){
      //alert("请输入密码,密码不能未空");
      //document.all("image_submit").disabled = false;
      return false;
    }
    
    frmMain.action="logon.y";
    frmMain.submit();
    return true;
  }
  
  function init(){
    var ua = navigator.appName; 
    s = "MSIE";
    version = 0;
    if ((i = ua.indexOf(s)) >= 0) {
      version = parseFloat(ua.substr(i + s.length));
    }
    if(version<11){
      document.all("ienotice").innerHTML = "为了最佳方式浏览，请下载IE11或Google Chrome.";
      return;
    }
    SetFocus();  
  }
  -->
  </script>
</head>

<BODY onContextMenu="return false" bgColor=#326200 leftMargin=0 topMargin=0 MARGINWIDTH="0" MARGINHEIGHT="0" onload="init();">
<form name="frmMain" action="logon.y" method="POST" onsubmit="login()">
<input type=hidden name=mk value="<%=Constants.MK_ADMIN%>">

<table cellSpacing=0 cellPadding=0 width=1020 height="100%" border=0 align=center style="background-image: url(<%=DOCPATH%>images/index<%=Constants.WEB_DOMAIN%>.png); background-repeat: no-repeat;">
  <tr><td height=288></td></tr>
  <tr>    
    <td align=center height=120>
    
      <table cellSpacing=0 cellPadding=0 border=0>
        <tr height=29><td width=71></td><td width=152></td><td width=125></td></tr>
        <tr>
          <td></td>
          <td><INPUT title=请填写用户名 maxLength=16 size=18 name=loginName style="border:0px;background:none;height:20px;"></td>
          <td><br></td>
        </tr>
        <tr><td height=26 colspan=3><br></td></tr>
        <tr>
          <td></td> 
          <td><INPUT title=请填写密码 type=password maxLength=16 size=18 name=password style="border:0px;background:none;height:20px;"></td>
          <td align=center><INPUT type=submit value="" style="padding-top:2px;padding-bottom:-1px;border:0px solid #000000;background:none;width:100px;height:16px;cursor:hand;" name=image_submit></td>
        </tr>
        <tr><td height=32 colspan=3><br></td></tr>
      </table>
      
    </td>
  </tr>
  <tr>    
    <td align=center valign=top height=20><br><font color=red><b>
      <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>">
        <bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>"/>
      </logic:present></b></font>
    </td></tr>       
  <tr>        
     <td height=126>
      <span style="color:#aaaaaa;padding-left:60px;">版权所有：华亿星辰（北京）科技有限公司 (C)2016 保留所有权利  <a href="#" target=_blank style="color:#eeeeee">京ICP备100000000号</a></span>
    </td>
  </tr>
  <tr><td align=center valign=top style="color:#cc0000" id=ienotice></td></tr>
</table>

</FORM>

</body>
</html>
