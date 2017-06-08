<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 查看流程明细");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="IB_ProcessBean" property="bo.processID" />
    <html:hidden name="IB_ProcessBean" property="bo.curSeq" />
    <html:hidden name="IB_ProcessBean" property="bo.curActor" />
    <html:hidden name="IB_ProcessBean" property="bo.curStatus" />
    <html:hidden name="IB_ProcessBean" property="ao.tableID" />
    <html:hidden name="IB_ProcessBean" property="ao.parentDataid" />
    
    <div id="div_head" class="dt_header">
    <table width=100% cellSpacing=0 cellPadding=0><tr><td>
        当前正在新建流程：【 <bean:write name="IB_ProcessBean" property="po.processName" />】
    </td>
    <td id=div_piclist align=right></td>
    </tr></table>
    </div>
    
    <div id="div_listdata" style="width:100%; overflow-y:auto; overflow-x:hidden;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>
      <tr>
        <td class="tdHeaderP" colspan=6>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0" style="width:98%;height:300px;"></iframe>
          <br><br>
        </td>
      </tr>

      <tr>
        <td class="tdHeaderP" colspan=6>
          <input type="button" class="button" name="btn1" value="    提交    " onclick="addCommit();">
          <br><br>
        </td>
      </tr>
    </table>
    </div>
    </div>


    </form>

    <script language="javascript">
    <!--
      function addCommit(){
        confirmAction('确定要提交吗？', function(){
	        var f = document.MainForm;
	        f.action = "IB_ProcessNew.y?cmd=addCommit";
	        f.target = "_self";
	        f.submit();
        });
      }
      function page_redirect(){
        var f = document.MainForm;
        f.action = "IB_ProcessChild.y?cmd=getRowsHead&editFlag=1";
        f.target = "sub_frame_data";
        f.submit();
      }
      function init(){
        if(document.all("div_listdata").offsetHeight > document.documentElement.clientHeight - document.all("div_head").offsetHeight)
            document.all("div_listdata").style.height = (document.documentElement.clientHeight - document.all("div_head").offsetHeight) +'px';
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>