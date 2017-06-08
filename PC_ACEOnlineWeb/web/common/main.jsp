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

String DOCPATH = "doc/";
String CSSPATH = DOCPATH + "css/" + HIUtil.getCssStyle(session);
CSSPATH = "doc/css/001";
%>

<html>
<head>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
<script type="text/javascript">
window.staticTime=new Date().getTime();
</script>

  <link type="text/css" rel="stylesheet" href="<%=CSSPATH%>/styles.css" />
	<link rel="stylesheet" href="<%=CSSPATH%>/jquery-ui-1.9.1.custom.css" type="text/css" />
	<link rel="stylesheet" href="<%=CSSPATH%>/jquery.cluetip.css" type="text/css"  />
	<link rel="stylesheet" href="<%=CSSPATH%>/uniform.default.css" type="text/css"  />
	<link rel="stylesheet" href="<%=CSSPATH%>/pirobox.css" type="text/css"  />
	<link rel="stylesheet" href="<%=CSSPATH%>/pagination.css" type="text/css" />
 
	<script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/jquery-ui-1.9.1.custom.min.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/wpcji.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/wp-custom-functions.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/formtips.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/jquery.pagination.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/jquery.cluetip.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/full_js/jquery.field-tip.js"></script>
	<script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/jquery.uniform.min.js"></script>
	<script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/jquery.cycle.all.min.js"></script>
	<script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/swfobject.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/js/pirobox_extended_min.js"></script>
  
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/menu/jquery.min.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/menu/menu_min.js"></script>
  <script type="text/javascript" language="JavaScript" src="<%=CSSPATH%>/menu/menu.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=CSSPATH%>/menu/menu-css.css">

  <script language="JavaScript">
  <!--
    var currentSection = "";
		
    //moveTo(0,0);
    //resizeTo(screen.width,screen.height);

	  function setTitle(s){
	    document.all("mainTitle").innerHTML = s;
	  }
	  function setMessage(s, clear){
	    document.all("mainMessage").innerHTML = "&nbsp;&nbsp;" + s + "&nbsp;&nbsp;";
	    if(clear) setTimeout('clearMessage()', 5000);
	  }
	  function clearMessage(){
	    document.all("mainMessage").innerHTML = '';
	  }
    function init(){    
      //alert(initMenu());
      //main_nav_bar.innerHTML = initMenu();
      //clickFirstMenu();
      resizeMainWorkArea();
      go("system/S_Main.y");
      document.all("left-nav-container").style.height = document.documentElement.clientHeight - document.all("div_top").offsetHeight - 9;
    }
    function resizeMainWorkArea(){    
      document.all("left-nav-container").style.height = document.documentElement.clientHeight - document.all("div_top").offsetHeight - 9;
      document.all("mainWorkArea").style.height = document.body.offsetHeight-MainTable_BOTTOM.offsetTop - document.all("bread-crumb-bar").offsetHeight;
    }
    function logout(){
      if(confirm('您确定要退出系统吗？')) parent.index();
    }
    
    var frameName = "mainWorkArea";
    var Menus = new Array();
    var SubMenus = new Array();
    <%=request.getAttribute("menu.list")%>
    //expandAll();
    
    function go(u){
      eval(frameName).location.href=u;
    }
    var status = 1;
    function switchSysBar(){
      if (1 == window.status){
        window.status = 0;
        switchPoint.innerHTML = '<img src="<%=CSSPATH%>/images/left.gif">';
        document.all("left-nav-container").style.display = "none";
      }else{
        window.status = 1;
        switchPoint.innerHTML = '<img src="<%=CSSPATH%>/images/right.gif">';
        document.all("left-nav-container").style.display = "";
      }
    }
    var sizestatus = 1;
    function switchWinBar(){
      if (1==sizestatus){
        sizestatus = 0;
        document.all("switchSize").title = "恢复正常大小";
        document.all("switchSize").src = "<%=CSSPATH%>/images/min.png";
        document.all("header").style.display = 'none';
        
        window.status = 0;
        document.all("left-nav-container").style.display = "none";
      }else{
        sizestatus = 1;
        document.all("switchSize").title = "最大化";
        document.all("switchSize").src = "<%=CSSPATH%>/images/max.png";
        document.all("header").style.display = '';
        
        window.status = 1;
        document.all("left-nav-container").style.display = "";
      }
      resizeMainWorkArea();
    }
  //-->
  </script>
</head>

<BODY class="topBody" onload="init()" onContextMenu="return true" style="MARGIN: 0px; OVERFLOW:hidden;">

<table id="MainTable" width=100% height=100% border=0 cellpadding=0 cellspacing=0><tr><td id="MainTable_TOP" height=1 colspan=3>

  <div id="header" style="BACKGROUND-IMAGE: url(<%=CSSPATH%>/images/top_r_bg.png);BACKGROUND-REPEAT: repeat-x;">
     <div>
		<div id="div_top" style="float:left; width:514px; height:70px;">
		  <a href="#"><img src="<%=CSSPATH%>/images/logo<%=Constants.WEB_DOMAIN%>.png" border="0" height=70 /></a>
		</div>

		<div style="float:right; margin-right:0px;">
     <div id="bread-crumb-content" style="float:right; font-size:12px; margin-right:5px; margin-top:-3px; color:#ccc;">
           <logic:present name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" scope="session">
             当前登录帐户：  <bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="userName"/>，
             角色：<bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="roleName"/>，
             上次登录：<bean:write name="<%=Constants.SESSION_ATTRIBUTE_SUSER%>" property="lastLoginDate"/>
           </logic:present>&nbsp;&nbsp;
           <a href="logout.y" style="color:#cccccc; font-size:12px;">退出</a>
		  </div>
		</div>
		</div>
		<div style="clear:both;"></div>   

  </div>
        
</td></tr>
<tr><td height=2></td></tr>
<tr><td valign=top id="MainTable_BOTTOM" width=1>
    
    <div id="left-nav-container" style="height:200px;overflow:auto;">
      <script language="javascript">
      document.write(initMenu());
      </script>
    </div>
  </td>
  
  <td style="WIDTH: 10px" valign=top>
    <table height="300" cellSpacing=0 cellPadding=0 border=0>
      <tr>
        <td onclick=switchSysBar()>
        <SPAN class=navPoint id=switchPoint title=关闭/打开左栏>
        <IMG src="<%=CSSPATH%>/images/right.gif"></SPAN> 
      </td></tr></table>
  </td> 
  
  <td>
    <div id="workarea-content-container" style="width:100%;height:100%;border:0px solid red">
    
    <div id="bread-crumb-bar">
    <div id="bread-crumb-container">
      <div class="content-header"><h1><img src="<%=CSSPATH%>/images/main.png"> <span id="mainTitle"></span></h1></div>
      
      <div class="print-header">
      <span id="mainMessage" style="background:#ffff00;"><%=  request.getRemoteAddr() %></span>
      <!--img src="<%=CSSPATH%>/images/print_page.png" /-->
      <span><img name="switchSize" src="<%=CSSPATH%>/images/max.png" onclick="switchWinBar()" title="最大化" width=16 style="cursor:hand;"></span>
      </div>
      <div style="clear:both;"></div>
    </div>
    </div>
  
    <IFRAME id="mainWorkArea" name="mainWorkArea" class=main_iframe src="" frameborder="0" scrolling="auto" style="width:100%;"></IFRAME>
    </div>
 
 
</td></tr></table>

</body>
</html>

