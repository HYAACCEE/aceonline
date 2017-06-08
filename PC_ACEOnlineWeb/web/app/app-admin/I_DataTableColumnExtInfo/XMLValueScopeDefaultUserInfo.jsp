<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <input type="hidden" name="ao.tableID" value="<%=HIUtil.getParameter(request, "ao.tableID", "-1")%>" >
    <input type="hidden" name="s" value="<%=HIUtil.getParameter(request, "s", "")%>">

    <div id="db_main">
    <table class="tbBorder" cellspacing=1 width=100% cellpadding=4>
      <tr><td class=tdHeaderP onclick="commit(this,'user.id')">当前登录ID</td></tr>
      <tr><td class=tdHeaderP onclick="commit(this,'user.name')">当前登录姓名</td></tr>
      <tr><td class=tdHeaderP onclick="commit(this,'user.organ')">当前登录公司</td></tr>
      <tr><td class=tdHeaderP onclick="commit(this,'user.job')">当前登录岗位</td></tr>
      <tr><td class=tdHeaderP onclick="commit(this,'user.role')">当前登录角色</td></tr>
      <tr><td class=tdHeaderP onclick="commit(this,'user.department')">当前登录部门</td></tr>
    </table>
    </div>
    </form>

    <script language="javascript">
    <!--
      function commit(obj,v){
        if(1==0){
	        parent.document.all("ao.extValueScopeTypeParam").value = v;
	        parent.document.all("ao.extValueScope").value = "默认值："+obj.innerText;
	        parent.closeBox();
	      }else{
	        window.returnValue = new Array(v, "默认值："+obj.innerText);
          window.close();
        }
      }
      function init(){
      }
    -->
    </script>
<%@ include file="/common/IncludeBottom.jsp" %>

