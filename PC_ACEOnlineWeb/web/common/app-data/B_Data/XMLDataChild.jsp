<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataChildBean" property="ao.tableID" />
    <html:hidden name="B_DataChildBean" property="ao.parentDataid" />
    
    <table cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0"></iframe>
    </td></tr></table>
    
    </form>

    <script language="javascript">
    <!--
      function page_redirect(){
        var f = document.MainForm;
        f.action = "B_DataPublicChild.y?cmd=getRowsHead&editFlag=<bean:write name="B_DataChildBean" property="afp" />";
        f.target = "sub_frame_data";
        f.submit();
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>