<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 数据表配置");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataTableBean" property="ao.tableID" />
    <html:hidden name="I_DataTableBean" property="ao.tableName" />
    <input type=hidden name=temp>
    
    <div id="content-query-bar">
    <bean:write name="I_DataTableBean" property="ao.tableTypeID_desc" />： 
        <html:select styleClass="sel_text" name="I_DataTableBean" property="c_tableTypeID" onchange="page_redirect();">
        <html:optionsCollection name="I_DataTableBean" property="c_tableTypeList" /></html:select>
    关键字： <html:text styleClass="ipt_text" name="I_DataTableBean" property="c_keyword" size="20" />
    <input type="button" class="button" value=" 查 询 " onclick="page_redirect()">
    </div>

    <div id="db_main">
    <div class="dt_header">【数据表列表】
    <logic:equal name="I_DataTableBean" property="powerAddTable" value="true">
    <input type="button" class="button" value=" 新建 " onclick="go('addPage')">
    </logic:equal>
    <logic:equal name="I_DataTableBean" property="powerSQLOut" value="true">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 重设关键字 " onclick="doCmd('resetKeyword')">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 显示树列表 " onclick="Select_DataTable(0)">
    </logic:equal>
    <logic:equal name="I_DataTableBean" property="powerSQLOut" value="true">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 导出SQL文件 " onclick="doCmd('toDDLFile')">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 导出Z表SQL文件 " onclick="doCmd('toDDLFile&Z=1')">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 导出升级文件 " onclick="doCmd('toUpgradeFile')">
    </logic:equal>
    </div>
    <div id="list_div" align="center"></div>
    </div>
        
    </form>

    <script language="javascript">
    <!--
      function go(cmd){
        OpenWin("../biz/I_DataTable.y?cmd="+cmd,0,0,'',1);
        //showWin("../biz/I_DataTable.y?cmd="+cmd,'',0,0,1);
      }
      function doCmd(a){
        var f = d.MainForm;
        f.action = "../biz/I_DataTable.y?cmd="+a;
        f.target = "_blank";
        f.submit();
      }
      function childTable(obj,id,name,memo){
        OpenWin("../biz/I_DataTable.y?cmd=child&childFlag=1&ao.parentTableID="+id,0,0,'',1);
      }
      function showDDL(obj,id,name,memo){
        OpenWin("../biz/I_DataTable.y?cmd=showDDL2&ao.tableID="+id,1000,500,'',1);
      }
      function detail(obj,id,name,memo){
        //showWin("../biz/I_DataTable.y?cmd=detail&ao.tableID="+id,'',0,0,1);
        OpenWin("../biz/I_DataTable.y?cmd=detail&ao.tableID="+id,0,0,'',1);
      }
      function edit(obj,id){
        //showWin("../biz/I_DataTable.y?cmd=editPage&ao.tableID="+id,'',0,0,1);
        OpenWin("../biz/I_DataTable.y?cmd=editPage&ao.tableID="+id,0,0,'',1);
      }
      function copy(obj,id,name,memo){
        confirmMsg('确定要复制添加吗？', function(){
            ajax('I_DataTable.y?cmd=copy', {"ao.tableID":id, "ao.tableName":name, "ao.tableMemo":memo}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function del(obj,id,name,memo){
        checkAdminPass('确定要删除 [ ' + memo + ' ] 吗？', function(){
            ajax('I_DataTable.y?cmd=del', {"ao.tableID":id, "ao.tableName":name, "ao.tableMemo":memo}, function(html){
                setMessage(html);
                page_redirect();
            });
         });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        d.temp.value = "c_tableTypeID="+d.c_tableTypeID.value+"&c_keyword="+d.c_keyword.value;
        dx.addParam("c_tableTypeID", d.c_tableTypeID.value);
        dx.addParam("c_keyword", d.c_keyword.value);
        dx.setAction("I_DataTable.y?cmd=query");
        load(dx,true,-1,true,page,pageKey);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>