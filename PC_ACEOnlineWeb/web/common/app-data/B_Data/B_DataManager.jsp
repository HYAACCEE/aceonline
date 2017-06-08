<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>
<%
String methodName = HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_METHODPATH, "");
%>
<body style="OVERFLOW-x: hidden; OVERFLOW-y: hidden;">
    <script language=javascript>setTitle("数据管理 - <%=actName%>数据");</script>
    <form name="MainForm" action="/" method="POST" encType="multipart/form-data">
    <html:hidden name="B_DataBean" property="ao.tableID" />
    <html:hidden name="B_DataBean" property="ao.dataid" />
    <html:hidden name="B_DataBean" property="ao.parentDataid" />
    <html:hidden name="B_DataBean" property="ao.dataStatus" />
    <input type=hidden name="CONTAINER">
    
    <div id="div_head" class="dt_header">
    <table width=100% cellSpacing=0 cellPadding=0><tr><td>
    【<%=actName%>数据：<bean:write name="B_DataBean" property="ao.tableMemo" />】
    </td>
    
    <td id=div_piclist align=right>
    </td>
    <td align=right>
    <input type="button" class="button" value="     <%=actName%>     " onclick="exec('<%=actName%>','<%=action%>');">
    &nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    </tr></table>
    </div>
        
    <div id="div_listdata" style="width:100%; overflow:auto;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1 border=0>
      <tr style="display:none">
        <td class="tdHeader" colspan=5><bean:write name="B_DataBean" property="ao.dataSctLevel_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="B_DataBean" property="ao.dataSctLevel">
                           <html:optionsCollection name="B_DataBean" property="sctLevelList" /></html:select></td>
      </tr>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>
      <tr>
        <td class="tdHeaderP" colspan=6>
          <input type="button" class="button" value="     <%=actName%>     " onclick="exec('<%=actName%>','<%=action%>');">
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
			        f.action = "../<%=methodName%>.y?cmd=addData";
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
      function getPicList(){
        ajax('../xml/S_Main.y?cmd=XMLGetDataPicList', {"tableID":d("ao.tableID").value, "dataid":d("ao.dataid").value, "managerFlag":1}, function(html){
            d("div_piclist").innerHTML = html;
        });
      }
      function showAttachFiles(dataid,afp){
        showBox('',"../xml/XMLDataAttachFile.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp, 980, 700);
      }
      function init(){
        if(document.all("div_listdata").offsetHeight > document.documentElement.clientHeight - document.all("div_head").offsetHeight)
           document.all("div_listdata").style.height = (document.documentElement.clientHeight - document.all("div_head").offsetHeight) +'px';
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_INITJS));
%>
        getPicList();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
