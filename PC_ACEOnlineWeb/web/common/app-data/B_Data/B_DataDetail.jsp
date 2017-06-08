<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

<body style="overflow:hidden;">

    <script language=javascript>setTitle("查看数据");</script>
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataBean" property="ao.tableID" />
    <html:hidden name="B_DataBean" property="ao.dataid" />
    <html:hidden name="B_DataBean" property="ao.parentDataid" />
    <html:hidden name="B_DataBean" property="ao.dataStatus" />
    <input type=hidden name="CONTAINER">
    
    <table cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0><tr><td height=1>
    
    <div class="dt_header">
    <table width=100% cellSpacing=0 cellPadding=0><tr><td>
    【查看数据：<bean:write name="B_DataBean" property="ao.tableMemo" />】
    </td>
    <td id=div_piclist align=right></td>
    </tr></table>
    </div>
    
    </td></tr><tr><td>
    <div id="div_listdata" style="width:100%; height:1400px; overflow-y:auto; overflow-x:hidden;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_FORMHTML));
%>

    </table>
    </div>
    </div>
    
    </td></tr></table>
    
    </form>

    <script language="javascript">
    <!--
      function getPicList(){
        ajax('../xml/S_Main.y?cmd=XMLGetDataPicList', {"tableID":d("ao.tableID").value, "dataid":d("ao.dataid").value}, function(html){
            d("div_piclist").innerHTML = html;
        });
      }
	    function showAttachFiles(dataid,afp){
	      showBox('',"../xml/XMLDataAttachFile.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp, 980, 700);
	    }
      function init(){
        var iHeight = document.documentElement.clientHeight+document.documentElement.scrollTop*2;
        div_listdata.style.height = iHeight-65;
        getPicList();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
