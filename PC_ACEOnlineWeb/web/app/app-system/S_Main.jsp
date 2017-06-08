<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript> parent.setTitle("首页"); </script-->
    <form name="MainForm" action="/" method="POST">
        
    <!-- Start page copy -->
    <div id="oDetails">
    <div class="wrapper USlocale">
		<div class="container">
    
    <div class="column col2 ">
      <div class="section techD">
      <div class="secHeader"><span>公告</span></div>
        <div class="content pdClearfix">
        <div class="attrG" style='border:none' >
        <div class="pdTab" style='display:block;'>
        <span id="div_Bulletin">
        <table cellspacing="0" cellpadding="0" border="0">
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="lAttr">&nbsp;</td></tr>
        </table>
        </span>
      </div></div></div></div>
    </div>
		
		<div class="column col1 ">
      <div class="section techD">
      <div class="secHeader"><span>登录提示</span></div>
        <div class="content pdClearfix">
        <div class="attrG" style='border:none' >
        <div class="pdTab" style='display:block;'>
        <logic:present name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" scope="session">
	      <table cellspacing="0" cellpadding="0" border="0">
	         <tr><td class="label">1. 姓名：</td><td class="value"><bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="userName"/></td></tr>
           <tr><td class="label">2. 岗位：</td><td class="value"><bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="jobName"/></td></tr>
	         <tr><td class="label">3. 机构：</td><td class="value"><bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="organName"/></td></tr>
	         <tr><td class="label">4. 登录次数：</td><td class="value"><bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="loginNum"/></td></tr>
	         <tr><td class="label">5. 上次登录：</td><td class="value"><bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="lastLoginDate"/></td></tr>
	         <logic:notEqual name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="empID" value="0">
	         <tr><td class="label"><a href='../biz/I_EmpSet.y'><个人资料设置></a></td></tr>
	         </logic:notEqual>
	         <tr><td class="lAttr">&nbsp;</td><td class="lAttr">&nbsp;</td></tr>
        </table>
        </logic:present>
      </div></div></div></div>      
    </div>    
    
    
    <div class="column col1 ">
      <div class="section techD">
      <div class="secHeader"><span>我的信息</span></div>
        <div class="content pdClearfix">
        <div class="attrG" style='border:none' >
        <div class="pdTab" style='display:block;'>
        <span id="div_Message">
        <table cellspacing="0" cellpadding="0" border="0">
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="lAttr">&nbsp;</td></tr>
        </table>
        </span>
      </div></div></div></div>
    </div>
    
    <div class="column col2 ">
      <div class="section techD">
      <div class="secHeader"><span>待办事项</span></div>
        <div class="content pdClearfix">
        <div class="attrG" style='border:none' >
        <div class="pdTab" style='display:block;'>
        <span id="div_Process">
        <table cellspacing="0" cellpadding="0" border="0">
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="value">&nbsp;</td></tr>
           <tr><td class="lAttr">&nbsp;</td></tr>
        </table>
        </span>
      </div></div></div></div>
    </div>
    
    </div></div></div>

    <script language="javascript">
    <!--
      function getBulletin(){
  		ajax('S_Main.y?cmd=getBulletin', {}, function(html){
          d("div_Bulletin").innerHTML=html;
        });
   	  }
      function getActionMessage(v){
   		ajax('S_Main.y?cmd=getActionMessage', {"actionID":v}, function(html){
          d("div_Message").innerHTML=html;
        });
      }
   	  function init(){
        getBulletin();
        getActionMessage(404);
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
    