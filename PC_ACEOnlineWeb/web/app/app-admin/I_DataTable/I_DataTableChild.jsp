<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>//setTitle("超级管理 - 数据表配置");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataTableBean" property="ao.tableID" />
    <html:hidden name="I_DataTableBean" property="ao.tableTypeID" />
    <html:hidden name="I_DataTableBean" property="ao.parentTableID" />

    <div id="db_main">
    
    <div class="dt_header">
    <bean:write name="I_DataTableBean" property="ao.parentTableID_desc" />: 
    <html:text styleClass="ipt_read" readonly="true" size="50" name="I_DataTableBean" property="parentTableMemo" />
    <logic:equal name="I_DataTableBean" property="powerAddTable" value="true">
    <input type="button" class="button" value=" 查 询 " onclick="page_redirect()">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建子表 " onclick="go('addPage')">
    </logic:equal>
    </div>
    <div id="list_div" align="center"></div>
        
    </div>
    </form>

    <script language="javascript">
    <!--
      function go(cmd){
        OpenWin('',0,0,'win_childnew',1);
        var f = document.MainForm;
        f.action = "../biz/I_DataTable.y?cmd=addPage&childFlag=1";
        f.target = "win_childnew";
        f.submit();
        
        //showWin("../biz/I_DataTable.y?cmd=addPage",'',0,0,1);
        //location.href = "I_DataTable.y?cmd="+cmd;
      }
      function childTable(obj,id,name,memo){
        OpenWin("../biz/I_DataTable.y?cmd=addPage&childFlag=1&ao.parentTableID="+id,0,0,'',1);
      }
      function showDDL(obj,id,name,memo){
        OpenWin("../biz/I_DataTable.y?cmd=showDDL2&ao.tableID="+id,1000,500,'',1);
      }
      function detail(obj,id,name,memo){
        showWin("../biz/I_DataTable.y?cmd=detail&ao.tableID="+id,'',0,0,1);
      }
      function edit(obj,id){
        var f = document.MainForm;
        f["ao.tableID"].value = id;
        f.action = "I_DataTable.y?cmd=editPage";
        f.submit();
      }
      function copy(obj,id,name,memo){
        confirmMsg('确定要复制添加吗？', function(){
            ajax('I_DataTable.y?cmd=copy', {"ao.tableID":id, "ao.tableName":name, "ao.tableMemo":memo}, function(html){
                showMsgWin(html);
                page_redirect();
            });
        });
      }
      function del(obj,id,name,memo){
        checkAdminPass('确定要删除 [ ' + memo + ' ] 吗？', function(){
            ajax('I_DataTable.y?cmd=del', {"ao.tableID":id, "ao.tableName":name, "ao.tableMemo":memo}, function(html){
                showMsgWin(html);
                page_redirect();
            });
         });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.addParam("ao.parentTableID", d("ao.parentTableID").value);
        dx.setAction("I_DataTable.y?cmd=query");
        load(dx,true,-1,true,page,pageKey);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>