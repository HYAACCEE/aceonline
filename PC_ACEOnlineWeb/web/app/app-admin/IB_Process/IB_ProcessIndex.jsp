<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 新建流程");</script-->
    <form name="MainForm" action="/" method="POST">

    <div id="content-query-bar">
    <bean:write name="IB_ProcessBean" property="po.processType_desc" />： 
        <html:select styleClass="sel_text" name="IB_ProcessBean" property="c_processType" onchange="page_redirect();">
        <html:optionsCollection name="IB_ProcessBean" property="c_processTypeList" /></html:select>
    </div>

    <div id="db_main">
    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        var result = showDialog("../biz/IB_ProcessNew.y?cmd=addPage&po.psid="+items[0]+"&ao.tableID="+items[4],'',0,0,1);
	      if(result){
	        showMsgWin(result);
	      }
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("IB_ProcessNew.y?cmd=queryPS");
        dx.addParam("c_processType", d("c_processType").value);
        load(dx,true);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>