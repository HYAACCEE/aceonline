<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>
<%
String execmd = HIUtil.getParameter(request, "execmd", "");
String dataid = HIUtil.getParameter(request, "dataid", "");
%>

    <form name="MainForm" action="/" method="POST">
    <input type=hidden name=dataid value=<%=dataid%>>
    <div id="db_main">

    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
      function page_redirect(page){
        var dx = new DynaXmlHttp();
        dx.setAction("../xml/S_Main.y?cmd=<%=execmd%>");
        dx.addParam("dataid", d.dataid.value);
        load(dx,true);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>