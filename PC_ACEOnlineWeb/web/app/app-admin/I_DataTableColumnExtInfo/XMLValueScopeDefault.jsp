<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <input type="hidden" name="ao.tableID" value="<%=HIUtil.getParameter(request, "ao.tableID", "-1")%>" >
    <input type="hidden" name="s" value="<%=HIUtil.getParameter(request, "s", "")%>">

    <div id="db_main">
    <div id="div_listdata" align="center" style="width:100%;"></div>
    <br>
    <center>
    <table class="tbBorder" cellspacing=0>
      <tr><td class=listBody>自定义：<input type=text name="aaa" style="display:hidden">
      <input type=button class=button value="确定" onclick="commit()"></td></tr>
    </table>
    </center>
    </div>
    </form>

    <script language="javascript">
    <!--
      function commit(){
        if(1==0){
	        parent.document.all("ao.extValueScopeTypeID").value = document.all("aaa").value;
	        parent.document.all("ao.extValueScopeTypeParam").value = document.all("aaa").value;
	        parent.document.all("ao.extValueScope").value = "默认值："+document.all("aaa").value;
	        parent.closeBox();
	      }else{
	        window.returnValue = new Array(document.all("aaa").value, "默认值："+document.all("aaa").value);
          window.close();
        }
      }
      function init(){
      }
    -->
    </script>
<%@ include file="/common/IncludeBottom.jsp" %>

