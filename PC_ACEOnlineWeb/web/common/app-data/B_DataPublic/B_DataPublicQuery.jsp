<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <!--script language=javascript>setTitle("<bean:write name="B_DataPublicBean" property="pagePath" />");</script-->
    
    <table width=100% cellSpacing=0 cellPadding=0 style="padding-left:2px;"><tr><td>
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataPublicBean" property="ao.dataid" />
    <html:hidden name="B_DataPublicBean" property="ao.tableID" />
    <input type=hidden name="CONTAINER">

    <div id="content-query-bar">
    <span title="关键字仅查询列名带*号的字段">关键字: <html:text styleClass="ipt_text" name="B_DataPublicBean" property="c_keyword" size="20" onclick="setDisable(d('btn_query'),false)" /></span>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" id="btn_query" disabled value=" 查 询 " onclick="page_redirect();">
    </div>
    </form>
    
    </td></tr><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0"></iframe>
    </td></tr></table>
    

    <script language="javascript">
    <!--
      function page_redirect(page,pageKey){
        var qh = 0;
        if(document.all("content-query-bar")) qh = document.all("content-query-bar").style.height;
        var h = document.documentElement.clientHeight - 80 - qh;
        
        var f = document.MainForm;
        f.action = "B_DataPublicQuery.y?cmd=getRowsHead&editFlag=0&outFlag=1&h="+h;
        f.target = "sub_frame_data";
        f.submit();
      }
      function init(){
        var qh = 0;
        if(document.all("content-query-bar")) qh = document.all("content-query-bar").style.height;
        document.all("sub_frame_data").style.height = document.documentElement.clientHeight - 75 - qh;
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>