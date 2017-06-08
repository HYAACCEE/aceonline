<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("用户信息 - 用户日志");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_LogBean" property="id" />

    <!-- Start content header bar -->
    <div id="content-header-bar">
      <div class="content-header"><h1>用户日志</h1></div>
      <div class="print-header"><img src="<%=CSSPATH%>/images/print_page.png" /></div>
      <div style="clear:both;"></div>
    </div>

    <div id="content-query-bar">
     开始时间: <html:text styleClass="ipt_text" name="S_LogBean" property="c_startTime" styleId="start_date" size="15" maxlength="15" />
     结束时间: <html:text styleClass="ipt_text" name="S_LogBean" property="c_endTime" styleId="end_date" size="15" maxlength="15" />
     关键字: <html:text styleClass="ipt_text" name="S_LogBean" property="c_keyword" size="15" />
     <input type="button" class="button" value=" 查询 " onclick="query(this);">
    </div>
    
    <div id="db_main">
    <div id="list_div" align="center"></div>    
    </div>

    </form>

    <script language="javascript">
    <!--
      function query(btn){
        var f = document.MainForm;
        if(!queryCheck(f)) return false;
        
        page_redirect();
      }
      function queryCheck(f){
        if( checkStrInput(d.c_startTime, 100, true, "开始时间")
         && checkStrInput(d.c_endTime, 100, true, "结束时间")
         && checkStrInput(d.c_keyword, 50, false, "内容匹配")
          ) return true;
        return false;
      }
      function page_redirect(page,pageKey){
        var f = document.MainForm;
        var dx = new DynaXmlHttp();
        dx.setAction("S_LogForUser.y?cmd=query");
        dx.addParam("c_startTime", d.c_startTime.value);
        dx.addParam("c_endTime", d.c_endTime.value);
        dx.addParam("c_keyword", d.c_keyword.value);
        load(dx,true,-1,true,page,pageKey);
      }
      
      function init(){ 
        popCalendar("start_date");
        popCalendar("end_date");
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
