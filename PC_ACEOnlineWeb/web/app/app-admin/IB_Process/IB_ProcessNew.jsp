<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("OA在线 - 新建流程");</script-->
    <form name="MainForm" action="/" method="POST" encType="multipart/form-data">
    <html:hidden name="IB_ProcessBean" property="po.psid" />
    <html:hidden name="IB_ProcessBean" property="po.processName" />
    <html:hidden name="IB_ProcessBean" property="po.organID" />
    <html:hidden name="IB_ProcessBean" property="ao.tableID" />
    <html:hidden name="IB_ProcessBean" property="ao.dataid" />
    <html:hidden name="IB_ProcessBean" property="ao.parentDataid" />
    <html:hidden name="IB_ProcessBean" property="ao.dataStatus" />
    <html:hidden name="IB_ProcessBean" property="bo.curSeq" />
    <html:hidden name="IB_ProcessBean" property="bo.curStatus" />
    <html:hidden name="IB_ProcessBean" property="bo.processSeq" />
    <html:hidden name="IB_ProcessBean" property="bo.processStatus" />
    <html:hidden name="IB_ProcessBean" property="nextFlag" />
    <input type=hidden name="CONTAINER">

    <div id="div_head" class="dt_header">当前正在新建流程：【 <bean:write name="IB_ProcessBean" property="po.processName" />】</div>
        
    <div id="div_listdata" style="width:100%; overflow:auto;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1 border=0>
      <tr style="display:none">
        <td class="tdHeader" colspan=5><bean:write name="IB_ProcessBean" property="ao.dataSctLevel_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="IB_ProcessBean" property="ao.dataSctLevel">
                           <html:optionsCollection name="IB_ProcessBean" property="sctLevelList" /></html:select></td>
      </tr>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>
      <tr>
        <td class="tdHeaderP" colspan=6>
          <input type="button" class="button" name="btn1" value="    提交    " onclick="exec('<%=actName%>','<%=action%>');">
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
      function exec(tip,a){
        var f = document.MainForm;
        if(check(f)){
          confirmAction('确定要'+tip+'吗？', function(){
              f.action = "IB_ProcessNew.y?cmd=add";
              f.submit();
          });
        }
      }
      function check(f){
        if(1==1
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMCHECKJS));
%>
        ){
          return true;
        }
        return false;
      }
      function init(){
        if(document.all("div_listdata").offsetHeight > document.documentElement.clientHeight - document.all("div_head").offsetHeight)
           document.all("div_listdata").style.height = (document.documentElement.clientHeight - document.all("div_head").offsetHeight) +'px';
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_INITJS));
%>
        if(d("nextFlag").value==1) d("btn1").value = "  下一步  ";
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>