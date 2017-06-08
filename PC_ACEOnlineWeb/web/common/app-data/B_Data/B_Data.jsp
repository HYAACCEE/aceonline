<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <script language=javascript>setTitle("数据管理 - 数据编辑");</script>
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataBean" property="ao.dataid" />
    <input type=hidden name=parentID>
    
    <table cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0><tr><td height=1>
    <div id="db_main">
    
    <table class=tbBorder cellSpacing=0 cellPadding=0 border=0 height=30>
      <tr>
<logic:present name="B_DataBean" property="topDataTableTypeList" scope="request">
<logic:iterate id="pi" name="B_DataBean" property="topDataTableTypeList" >
        <td align=center class="DM" onclick="DM_Select(<bean:write name="pi" property="value" />)">
        <b><bean:write name="pi" property="label" /></td>
</logic:iterate>
</logic:present>
      </tr>
    </table>
    
    <table class="tbBorder" cellSpacing=1 cellPadding=0 width="100%" border=0>
      <tr>
        <td class="tdHeaderL">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span title="请点击输入框右边的搜索图标"><bean:write name="B_DataBean" property="ao.tableID_desc" />: 
        <html:hidden name="B_DataBean" property="ao.tableID" />
        <html:text styleClass="ipt_text" readonly="true" size="30" name="B_DataBean" property="ao.tableMemo"/></span>
        <img onclick="Select_DataTable(1,d('parentID').value,'',null,'ao.tableID','ao.tableMemo');page_redirect();" src="<%=DOCPATH%>images/search.png" title="点击查询">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span title="关键字仅查询列名带*号的字段">关键字: <html:text styleClass="ipt_text" name="B_DataBean" property="c_keyword" size="20" onclick="setDisable(d('btn_query'),false)" /></span>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" id="btn_query" disabled value=" 查 询 " onclick="page_redirect();">
        </td>
      </tr>
    </table>
    
    </div>
    
    </td></tr><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0"></iframe>
    </td></tr></table>
    
    </form>

    <script language="javascript">
    <!--
      function go(cmd){
        location.href = "B_Data.y?cmd="+cmd;
      }      
      function edit(obj,id){
        var f = document.MainForm;
        f("ao.dataid").value = id;
        f.action = "B_Data.y?cmd=editPage";
        f.submit();
      } 
      function del(obj,id,name){
        confirmAction('确定要删除[' + name + ']吗？', function(){
            ajax('B_Data.y?cmd=del', {"ao.dataid":id}, function(html){
                setMessage(html);
                page_redirect();
            });
         });
      }
      function page_redirect(page,pageKey){
        var f = document.MainForm;
        f.action = "B_Data.y?cmd=getRowsHead&editFlag=1&outFlag=1";
        f.target = "sub_frame_data";
        f.submit();
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>