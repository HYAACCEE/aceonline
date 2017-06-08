<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 编辑流程");</script-->
    <form name="MainForm" action="/" method="POST" encType="multipart/form-data">
    <html:hidden name="IB_ProcessBean" property="po.psid" />
    <html:hidden name="IB_ProcessBean" property="po.processName" />
    <html:hidden name="IB_ProcessBean" property="po.organID" />
    <html:hidden name="IB_ProcessBean" property="ao.tableID" />
    <html:hidden name="IB_ProcessBean" property="ao.dataid" />
    <html:hidden name="IB_ProcessBean" property="ao.parentDataid" />
    <html:hidden name="IB_ProcessBean" property="ao.dataStatus" />
    <html:hidden name="IB_ProcessBean" property="bo.processID" />
    <html:hidden name="IB_ProcessBean" property="bo.curSeq" />
    <html:hidden name="IB_ProcessBean" property="bo.curStatus" />
    <html:hidden name="IB_ProcessBean" property="bo.processID" />
    <html:hidden name="IB_ProcessBean" property="bo.processTitle" />
    <html:hidden name="IB_ProcessBean" property="bo.organID" />
    <html:hidden name="IB_ProcessBean" property="bo.psid" />
    <html:hidden name="IB_ProcessBean" property="bo.tableID" />
    <html:hidden name="IB_ProcessBean" property="bo.dataid" />
    <html:hidden name="IB_ProcessBean" property="bo.creator" />
    <html:hidden name="IB_ProcessBean" property="bo.processSeq" />
    <html:hidden name="IB_ProcessBean" property="bo.processStatus" />
    <html:hidden name="IB_ProcessBean" property="bo.processActResult" />
    <input type=hidden name="CONTAINER">

    <div id="div_head" class="dt_header">当前正在处理流程：【 <bean:write name="IB_ProcessBean" property="po.processName" />】</div>

    <div id="div_listdata" style="width:100%; overflow:auto;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1 border=0>
      <tr style="display:none">
        <td class="tdHeader"><bean:write name="IB_ProcessBean" property="ao.dataSctLevel_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="IB_ProcessBean" property="ao.dataSctLevel">
                           <html:optionsCollection name="IB_ProcessBean" property="sctLevelList" /></html:select></td>
      </tr>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>
<logic:notEqual name="IB_ProcessBean" property="bo.processSeq" value="1">
      <tr>
        <td class="tdHeader"><bean:write name="IB_ProcessBean" property="bo.processActMemo_desc" /></td>
        <td class="tdBody"><html:textarea name="IB_ProcessBean" property="bo.processActMemo" cols="60" rows="5"></html:textarea></td>
      </tr>
</logic:notEqual>
<logic:notEqual name="IB_ProcessBean" property="ao.table.childTableNum" value="0">
      <tr><td class="tdBody" colspan=6>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0" style="width:98%;height:300px;"></iframe>
      </tr>
</logic:notEqual>
      <tr>
        <td class="tdHeaderP" colspan=6>
          <input type="button" class="button" value="    提交    " onclick="r(1);exec('提交','<%=action%>');">
            <logic:notEqual name="IB_ProcessBean" property="bo.processSeq" value="1">
          <input type="button" class="button" value="    拒绝    " onclick="r(2);exec('拒绝','refuse');">
          <input type="button" class="button" value="    退回修改    " onclick="r(4);exec('退回','back');">
            </logic:notEqual>
          <br><br>
        </td>
      </tr>
    </table>
    </div>
    </div>

    </form>

    <script type="text/javascript" src="<%=DOCPATH%>spec/bizDataForm.js"></script>
    <script language="javascript">
    <!--
      function r(v){
    	  d("bo.processActResult").value = v;
      }
      function exec(tip,a){
        var f = document.MainForm;
        if(check(f)){
          confirmAction('确定要'+tip+'吗？', function(){
              f.action = "IB_ProcessWait.y?cmd="+a;
              f.target = "_self";
              f.submit();
          });
        }
      }
      function check(f){
        if(1==1
        		<logic:notEqual name="IB_ProcessBean" property="bo.processSeq" value="1">
          && checkStrInput(f["bo.processActMemo"], 200, true, '<bean:write name="IB_ProcessBean" property="bo.processActMemo_desc" />')
            </logic:notEqual>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMCHECKJS));
%>
        ){
          return true;
        }
        return false;
      }
      function page_redirect(){
          <logic:notEqual name="IB_ProcessBean" property="ao.table.childTableNum" value="0">
            var f = document.MainForm;
            <logic:equal name="IB_ProcessBean" property="bo.processSeq" value="1">
            var editFlag = 1;
            </logic:equal>
            <logic:notEqual name="IB_ProcessBean" property="bo.processSeq" value="1">
            var editFlag = 0;
            </logic:notEqual>
            f.action = 'IB_ProcessChild.y?cmd=getRowsHead&editFlag='+editFlag+'&ao.tableID=<bean:write name="IB_ProcessBean" property="childTableID"/>&ao.parentDataid='+d("ao.dataid").value;
            f.target = "sub_frame_data";
            f.submit();
          </logic:notEqual>
          }
      function init(){
        if(document.all("div_listdata").offsetHeight > document.documentElement.clientHeight - document.all("div_head").offsetHeight)
           document.all("div_listdata").style.height = (document.documentElement.clientHeight - document.all("div_head").offsetHeight) +'px';
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_INITJS));
%>
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>