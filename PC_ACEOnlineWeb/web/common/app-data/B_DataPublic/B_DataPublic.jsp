<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <!--script language=javascript>setTitle("<bean:write name="B_DataPublicBean" property="pagePath" />");</script-->
    
    <table width=100% cellSpacing=0 cellPadding=0 style="padding-left:2px;"><tr><td>
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataPublicBean" property="ao.dataid" />
    <html:hidden name="B_DataPublicBean" property="ao.tableID" />
    <input type=hidden name="CONTAINER">
    
    <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_QUERYCONDITION%>" scope="request">
    <logic:notEqual name="<%=Constants.REQUEST_ATTRIBUTE_QUERYCONDITION%>" value="">
    <div id="content-query-bar">
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_QUERYCONDITION));
%>
    </div>
    </logic:notEqual>
    </logic:present>
    </form>
    
    </td></tr><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0"></iframe>
    </td></tr></table>
    
    <script type="text/javascript" src="<%=DOCPATH%>spec/bizDataForm.js"></script>
    <script language="javascript">
    <!--
      function go(cmd){
        location.href = "B_DataPublic.y?cmd="+cmd;
      }      
      function edit(obj,id){
        var f = document.MainForm;
        f("ao.dataid").value = id;
        f.action = "B_DataPublic.y?cmd=editPage";
        f.submit();
      } 
      function del(obj,id,name){
        confirmAction('确定要删除[' + name + ']吗？', function(){
            ajax('B_DataPublic.y?cmd=del', {"ao.dataid":id}, function(html){
                setMessage(html);
                page_redirect();
            });
         });
      }
      function page_redirect(page,pageKey){
        var qh = 0;
        if(document.all("content-query-bar")) qh = document.all("content-query-bar").style.height;
        var h = 470;//document.documentElement.clientHeight - 50 - qh;
        
        var f = document.MainForm;
        f.action = "B_DataPublic.y?cmd=getRowsHead&editFlag=1&outFlag=1&h="+h;
        f.target = "sub_frame_data";
        f.submit();
      }
      function init(){
<%
out.print((String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_INITJS));
%>
        var qh = 0;
        if(document.all("content-query-bar")) qh = document.all("content-query-bar").style.height;
        document.all("sub_frame_data").style.height = document.documentElement.clientHeight - 10 - qh;
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>