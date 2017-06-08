<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 >> 日志管理");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_LogBean" property="id" />

    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>               
        <td class="tdHeader" width="80">开始时间</td> 
        <td class="tdBody di_date">
          <html:text styleClass="ipt_text" name="S_LogBean" property="c_startTime" styleId="start_date" size="15" maxlength="15" />
        </td> 
        <td class="tdHeader">结束时间</td>    
        <td class="tdBody di_date">
          <html:text styleClass="ipt_text" name="S_LogBean" property="c_endTime" styleId="end_date" size="15" maxlength="15" />
            <script type="text/javascript">  
            popCalendar("start_date");popCalendar("end_date");
            </script>
        </td> 
        <td class="tdHeader">操 作 员</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_LogBean" property="c_operator" size="15" /></td> 
        <td class="tdHeader">内容匹配</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_LogBean" property="c_context" size="15" /></td> 
        <td class="tdHeaderM" colspan="2">
          <input type="button" class="button" value=" 查询 " onclick="query(this);">
        </td> 
      </tr>
    </table>
    
    <div id="list_div" align="center"></div>
    

    </div>

    </form>

    <script language="javascript">
    <!--
      function query(btn){
        var f = document.MainForm;
        if(!queryCheck(f)) return false;
        
        actionBegin("", btn);
        page_redirect();
        actionEnd("查询成功!", btn);
      }
      function queryCheck(f){
        if( checkStrInput(d.c_startTime, 100, true, "开始时间")
         && checkStrInput(d.c_endTime, 100, true, "结束时间")
         && checkStrInput(d.c_operator, 20, false, "操作员")
         && checkStrInput(d.c_context, 50, false, "内容匹配")
          ) return true;
        return false;
      }
      function page_redirect(page,pageKey){
        var f = document.MainForm;
        var dx = new DynaXmlHttp();
        dx.addParam("c_startTime", d.c_startTime.value);
        dx.addParam("c_endTime", d.c_endTime.value);
        dx.addParam("c_operator", d.c_operator.value);
        dx.addParam("c_context", d.c_context.value);
        dx.setAction("S_Log.y?cmd=query");
        load(dx,true,-1,true,page,pageKey);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
