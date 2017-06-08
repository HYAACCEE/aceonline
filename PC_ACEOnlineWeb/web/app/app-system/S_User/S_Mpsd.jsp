<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ page import="com.svv.dms.web.util.HIUtil" %>
<%@ page import="com.svv.dms.web.common.ParamClass" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
String DOCPATH = "doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
CSSPATH = "doc/css/001";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
  <base target=_self>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
  <link type="text/css" rel="stylesheet" href="<%=CSSPATH%>/styles.css" />
  
  <script type="text/javascript" src="<%=DOCPATH%>script/common/jquery-1.32pack.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HIUtil.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HIForm.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/common/HICheck.js"></script>
  
  <script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/yy-utils.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/yy-utils.js"></script>
  
  <script language="javascript">
    function setMessage(s){
        if(window.self.name == 'dialogframe') showMsgWin(s);
        else if(parent) parent.setMessage(s,true);
    }
    function setMessage_win(s){
        showMsgWin(s);
    }
    function setError(s){
        showErrorWin("<font color=red>"+s+"</font>");
    }
    function init(){}
    function init_0(){
       initmsg();
       closeFormBox('div_temp_win');
       //var _self = window.self;
       //alert("offsetTop="+parent.MainTable_BOTTOM.offsetTop+"   iheight="+document.body.offsetHeight+"  w="+window.screen.width+" h="+window.screen.height);
       //parent.document.all("mainWorkArea").style.height = document.body.offsetHeight;
    }
    </script>
</head>

<body id="body" onContextMenu="return true" onload="init();init_0();">
<div id="workarea-content">
  
    <!--script language=javascript>setTitle(" 用户信息 - 更改密码");</script-->

    <!--div style="height:50px;"><h2><font color=red><br>您第一次登录系统，请先修改登录密码与验证密码！</font></h2></div-->

    <form name="MainForm" action="/" method="POST">
    <input type="hidden" name="password">
    <input type="hidden" name="vpassword">

    <div id="db_main" style="width:460px;border:1px solid #000000;">

    <div class="dt_header">【登录密码修改】</div>
    <table class=tbBorder cellSpacing=0 cellPadding=3 width="460" border=0>
      <tr>
        <td class="tdHeader" align="right">原登录密码</td> 
        <td class="tdBody"><input name="oldpd" type="password" value="" maxlength=30></td> 
      </tr>            
      <tr>
        <td class="tdHeader" align="right">新登录密码</td> 
        <td class="tdBody"><input name="newpd" type="password" maxlength=30></td> 
      </tr>
      <tr>
        <td class="tdHeader" align="right">确认登录密码</td> 
        <td class="tdBody"><input name="confirmpd" type="password" maxlength=30></td> 
      </tr>
      <tr>
        <td class="tdHeader" align="right">原二级验证密码</td> 
        <td class="tdBody"><input name="oldvpd" type="password" value="" maxlength=30></td> 
      </tr>            
      <tr>
        <td class="tdHeader" align="right">新二级验证密码</td> 
        <td class="tdBody"><input name="newvpd" type="password" maxlength=30></td> 
      </tr>
      <tr>
        <td class="tdHeader" align="right">确认二级验证密码</td> 
        <td class="tdBody"><input name="confirmvpd" type="password" maxlength=30></td> 
      </tr>
      <tr>
        <td class="tdHeaderP" colspan="2" align=center>
        	<input type="button" class="button" name="Submit" value=" 修 改 " onclick="check()">      		
        </td>               
      </tr>      
    </table>
      <span class="red_cont">密码只能输入6-20个字母、数字、下划线</span>
    </div>
     
    </form>


<SCRIPT LANGUAGE="JavaScript">
<!--  
  function check(){
    var f = document.MainForm;
    if(f["oldpd"].value.length<1){
      setError("原登录密码不能为空，请重新输入原登录密码！")
      return;
    }
    if(f["newpd"].value.length>20||f["newpd"].value.length<6){
      setError("登录密码长度不能超过20位 小于6位！")
      return;
    }
    if(!isPasswd(f["newpd"].value)){
      setError("新登录密码错误，只能输入6-20个字母、数字、下划线！")
      return;
    }
    if(f["confirmpd"].value!=f["newpd"].value){
      setError("确认登录密码错误，请重新输入登录密码！")
      return;
    }
    if(f["oldvpd"].value.length<1){
      setError("原二级验证密码不能为空，请重新输入原验证密码！")
      return;
    }
    if(f["newvpd"].value.length>20||f["newvpd"].value.length<6){
      setError("二级验证密码长度不能超过20位 小于6位！")
      return;
    }
    if(!isPasswd(f["newvpd"].value)){
      setError("新二级验证密码错误，只能输入6-20个字母、数字、下划线！")
      return;
    }
    if(f["confirmvpd"].value!=f["newvpd"].value){
      setError("确认二级验证密码错误，请重新输入验证密码！")
      return;
    }
    f["password"].value = f["newpd"].value;
    f["vpassword"].value = f["newvpd"].value;
    f.action = "S_Mpsd.y?cmd=mpsd";
    f.submit();
  }
-->
</SCRIPT> 

<%@ include file="/common/IncludeBottom.jsp" %>
