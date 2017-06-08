<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA管理 - 工作流程管理");</script-->
    <form name="MainForm" action="/" method="POST">

    <div id="content-query-bar">
    <bean:write name="IB_ProcessBean" property="bo.organID_desc" />： 
        <html:select styleClass="sel_text" name="IB_ProcessBean" property="c_organID" onchange="page_redirect();">
        <html:optionsCollection name="IB_ProcessBean" property="organList" /></html:select>
    <input type="button" class="button" value=" 查 询 " onclick="page_redirect()">
    </div>

    <div id="db_main">
    <div class="dt_header">【工作流程列表】</div>
    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
	    function detail(obj,id,name,tableid){
	        var result = showDialog("../biz/IB_Process.y?cmd=detail&bo.processID="+id+"&ao.tableID="+tableid,'',0,0,1);
	        if(result){
	          showMsgWin(result);
	        }
	    }
      function control(obj,id,name,tableid){
          var result = showDialog("../biz/IB_Process.y?cmd=control&bo.processID="+id+"&ao.tableID="+tableid,'',0,0,1);
          if(result){
            showMsgWin(result);
            page_redirect();
          }
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
            ajax('IB_Process.y?cmd=del', {'bo.processID':id,'bo.processTitle':name}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("IB_Process.y?cmd=query");
        dx.addParam("c_organID", d("c_organID").value);
        load(dx,true);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
