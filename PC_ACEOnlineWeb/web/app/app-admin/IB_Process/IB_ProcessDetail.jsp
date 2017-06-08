<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 查看流程明细");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="IB_ProcessBean" property="bo.processID" />
    <html:hidden name="IB_ProcessBean" property="bo.curStatus" />
    <html:hidden name="IB_ProcessBean" property="ao.tableID" />
    <html:hidden name="IB_ProcessBean" property="ao.parentDataid" />
    <input type=hidden name="methodName" value="<%=HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_METHODPATH, "")%>">

    <div id="db_main">
    
    <div id="div_head" class="dt_header">
    <table width=100% cellSpacing=0 cellPadding=0><tr><td>
    【<bean:write name="IB_ProcessBean" property="bo.processTitle" />】
    </td>
    <td id=div_piclist align=right></td>
    </tr></table>
    </div>

    <div id="div_listdata" style="width:100%; overflow-y:auto; overflow-x:hidden;">
    <div class="dt_header">
    <table width=100% cellSpacing=0 cellPadding=0><tr><td>
    发起人： <bean:write name="IB_ProcessBean" property="bo.creatorName" />
    </td><td>
    当前状态： <bean:write name="IB_ProcessBean" property="bo.curStatus" />
    </td><td>
    当前经手人： <bean:write name="IB_ProcessBean" property="bo.curActorName" />
  <logic:equal name="IB_ProcessBean" property="control" value="1">
    </td><td>
    转向： <html:select styleClass="sel_text" name="IB_ProcessBean" property="bo.curSeq" onchange="d('bo.curStatus').value=this.options[this.selectedIndex].text;">
        <html:optionsCollection name="IB_ProcessBean" property="control_seqList" /></html:select>
    经手人： <html:select styleClass="sel_text" name="IB_ProcessBean" property="bo.curActor">
        <html:optionsCollection name="IB_ProcessBean" property="processActorList" /></html:select>
        <input type="button" class="button" value=" 提交 " onclick="control();">
  </logic:equal>
    </td>
    </tr></table>
    </div>
    
    <table class=tbBorder cellSpacing=1>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>
    </table>

<logic:notEqual name="IB_ProcessBean" property="ao.table.childTableNum" value="0">
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0" style="width:98%;height:300px;"></iframe>
</logic:notEqual>
    <div class="dt_header">审批记录：</div><b>
    <div id="list_div" align="center"></div></b>
    </div>

    </div>

    </form>

    <script language="javascript">
    <!--
      <logic:equal name="IB_ProcessBean" property="control" value="1">
      function control(){
          var f = document.MainForm;
          f.action = "IB_Process.y?cmd=controlCommit";
          f.target = "_self";
          f.submit();
      }
      </logic:equal>
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("../"+d.methodName.value+".y?cmd=queryDetail");
        dx.addParam("bo.processID", d("bo.processID").value);
        load(dx,true);

        <logic:notEqual name="IB_ProcessBean" property="ao.table.childTableNum" value="0">
          var f = document.MainForm;
          f.action = "B_DataPublicQueryChild.y?cmd=getRowsHead";
          f.target = "sub_frame_data";
          f.submit();
        </logic:notEqual>
      }
      function init(){
        if(document.all("div_listdata").offsetHeight > document.documentElement.clientHeight - document.all("div_head").offsetHeight)
            document.all("div_listdata").style.height = (document.documentElement.clientHeight - document.all("div_head").offsetHeight) +'px';
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>