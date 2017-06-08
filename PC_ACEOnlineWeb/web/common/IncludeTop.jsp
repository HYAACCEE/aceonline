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
  <script type="text/javascript" src="<%=DOCPATH%>spec/bizCommon.js"></script>
  
  <script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/yy-utils.js"></script>
   
  <script type="text/javascript" src="<%=DOCPATH%>script/DynaXmlHttp.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/Loading.js"></script>
  
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

    var selRowObj = null;
    function trMouseOver(obj){
      if(selRowObj!=obj && obj.className.indexOf("trOver_")<0) obj.className = "trOver_"+obj.className;
    }
    function trMouseOut(obj){
      if(selRowObj!=obj) obj.className = obj.className.replace("trOver_","");
    }
    function trMouseClick(obj){
      if(selRowObj){
        var index = selRowObj.rowIndex;
        if(index%2==0){
          selRowObj.className = 'listLineAlter';
        }else{
          selRowObj.className = 'listLine';
        }
      }
      obj.className = 'trFocuse';
      selRowObj = obj;
    }
    
    var spliter = "<%=Constants.SPLITER%>";
    var spliter_data = "<%=Constants.SPLITER_DATA%>";
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