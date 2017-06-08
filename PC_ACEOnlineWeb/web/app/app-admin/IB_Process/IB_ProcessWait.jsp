<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 待办事项");</script-->
    <form name="MainForm" action="/" method="POST">

    <div id="content-query-bar">
    <bean:write name="IB_ProcessBean" property="bo.organID_desc" />： 
        <html:select styleClass="sel_text" name="IB_ProcessBean" property="c_organID" onchange="page_redirect();">
        <html:optionsCollection name="IB_ProcessBean" property="organList" /></html:select>
    <input type="button" class="button" value=" 查 询 " onclick="page_redirect()">
    </div>

    <div id="db_main">
    <div class="dt_header">【待办事项】</div>
    <div id="list_div" align="center"></div>

    <div class="dt_header">【我提交的流程】</div>
    <div id="list_div2" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
    function deal(obj,id,name,tableid){
        var result = showDialog("../biz/IB_ProcessWait.y?cmd=editPage&bo.processID="+id+"&ao.tableID="+tableid,'',0,0,1);
        if(result){
          page_redirect();
          showMsgWin(result);
        }
    }
    function detail(obj,id,name,tableid){
        var result = showDialog("../biz/IB_ProcessWait.y?cmd=detail&bo.processID="+id+"&ao.tableID="+tableid,'',0,0,1);
        if(result){
          showMsgWin(result);
          page_redirect();
        }
    }
    function reback(obj,id,name){
      checkAdminPass('确定要撤回[' + id + ':' + name + ']吗？', function(){
          ajax('IB_Process.y?cmd=reback', {'bo.processID':id,'bo.processTitle':name}, function(html){
              setMessage(html);
              page_redirect();
          });
      });
    }
    function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("IB_ProcessWait.y?cmd=queryWait");
        dx.addParam("c_organID", d("c_organID").value);
        load(dx,true,300,0,page,pageKey,null,"list_div");

        var dx = new DynaXmlHttp();
        dx.setAction("IB_ProcessWait.y?cmd=queryMy");
        dx.addParam("c_organID", d("c_organID").value);
        load(dx,true,300,0,page,pageKey,null,"list_div2");
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
