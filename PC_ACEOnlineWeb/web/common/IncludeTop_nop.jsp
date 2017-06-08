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
  
  <script type="text/javascript" src="<%=DOCPATH%>script/calendar/jquery_corner.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/calendar/fonc_utils.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/calendar/jquery-ui-1.8.2.custom.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/calendar/jquery-ui-1.8.2.custom.css" />
  
  <script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/jquery-easyui-1.2.3/yy-utils.js"></script>
  
  <!--script>var close_time = <%=Constants.DEF_CLOSE_AUTO_TIME%>;</script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery-1.4.4.min.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.bgiframe-2.1.2.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.core.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.widget.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.mouse.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.draggable.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.position.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.resizable.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.dialog.js'></script>
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/jquery.ui.datepicker.js'></script>
  <link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/jquery-ui/jquery.ui.all.css" />
  <script type='text/javascript' src='<%=DOCPATH%>script/jquery-ui/yy-utils.js'></script-->
 
  <script type="text/javascript" src="<%=DOCPATH%>script/DynaXmlHttp.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/Loading.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/DivResize.js"></script>
  
  <script type="text/javascript" src="<%=DOCPATH%>spec/bizCommon.js"></script>
  <script type="text/javascript" src="<%=DOCPATH%>script/money.js"></script>
  
  <script language="javascript">
    function setMessage(s){
        if(window.self.name == 'dialogframe') showMsgWin(s);
        else if(isUndefined(parent.name) || parent.name =='undefined' || parent.name=='_self' || parent.name=='') showMsgWin(s);
        else if(parent) parent.setMessage(s,true);
    }
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
      if(selRowObj!=obj) obj.className = "trOver_"+obj.className;
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
    
    var last_button;
    function btn_liCtrl(o){
      if(last_button == o) return false;
      if(o) o.className = "btn_liClick";
      if(last_button) last_button.className = "btn_li";
      last_button = o;
      return true;
    }    
    var orderBy = null;
    var orderByName = null;
    var orderByAsc = 1;
    function setOrderBy(obj,s){
      var _new = " order by " + s;
      if(orderByName==s && orderByAsc==1){
        orderBy = _new + " desc ";
        orderByAsc = 0;
      }else{
        orderBy = _new;
        orderByName = s;
        orderByAsc = 1;
      }
      page_redirect();
    }
    function load(dx, asyncFlag, maxH, isPage, page, pageKey, btn, list_div){
      var listDiv = 'list_div';
      if(list_div) listDiv = list_div;
      /*访问本文档中所有ListDiv的便签*/
      document.all(listDiv).innerHTML = '<img src="<%=CSSPATH%>/images/wait.png" style="padding-top:20px;">';
      if(maxH>0){
         dx.addParam("tableHeight", maxH);
      }else if(maxH==-1){
         dx.addParam("scrollFlag", 0);
      }
      if(isPage==true){
        dx.addParam("pageFlag", 1);
        if(page) dx.addParam("page", page);
        if(pageKey) dx.addParam("pageKey", pageKey);
      }
      dx.setXmlHttpObj(createXmlHttp());
      if(orderBy && orderBy!='') dx.addParam("orderBy", orderBy);
      
      //dx.enableDebug();
      if(asyncFlag){
        dx.setAsyncFlag(true);
        //dx.setRcvMethod("");
        dx.setResultDiv(listDiv);
        if(btn) dx.setButton(btn);
        dx.setBodyid("body");
        dx.send();
      }else{
        if(dx.send()){
          document.all(listDiv).innerHTML = dx.getResponseText();
        }
      }
    }
    function dxSend(dx, asyncFlag, btn){
      dx.setXmlHttpObj(createXmlHttp());
      //dx.enableDebug();
      if(asyncFlag){
        dx.setAsyncFlag(true);
        //dx.setRcvMethod(rcvMethod);
        if(btn) dx.setButton(btn);
        dx.setBodyid("body");
        dx.send();
        return true;
      }else{
        if(dx.send()){
          return true;
        }
      }
      return false;
    }
    
    var spliter = "<%=Constants.SPLITER%>";
    var spliter_data = "<%=Constants.SPLITER_DATA%>";
    function init(){}
    function initmsg(){}
  </script>
</head>

<body id="body" onContextMenu="return true" onload="init();initmsg();">
<div>