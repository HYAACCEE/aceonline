<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 流程配置");</script-->
    <form name="MainForm" action="/" method="POST">

    <div id="content-query-bar">
    <bean:write name="I_ProcessBean" property="ao.organID_desc" />： 
        <html:select styleClass="sel_text" name="I_ProcessBean" property="c_organID" onchange="page_redirect();synOrgan();">
        <html:optionsCollection name="I_ProcessBean" property="organList" /></html:select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <bean:write name="I_ProcessBean" property="ao.processType_desc" />： 
        <html:select styleClass="sel_text" name="I_ProcessBean" property="c_processType" onchange="page_redirect();">
        <html:optionsCollection name="I_ProcessBean" property="c_processTypeList" /></html:select>
    <input type="button" class="button" value=" 查 询 " onclick="page_redirect()">
    </div>

    <div id="db_main">
    <div class="dt_header">【流程列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建 " onclick="add()">
    </div>
    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("ao.psid").value = items[i++];
        d("ao.organID").value = items[i++];
        d("ao.processName").value = items[i++];
        d("ao.processType").value = items[i++];
        d("ao.tableID").value = items[i++];
        d("ao.creator").value = items[i++];
        d("ao.remark").value = items[i++];
        d("ao.state").value = items[i++];
      }
      function formWord(id){
        showWin("../biz/I_Process.y?cmd=formWord&ao.psid="+id,'',0,0,1);
      }
      function detail(id){
        showWin("../biz/I_ProcessDesc.y?po.psid="+id,'',0,0,1);
      }
      function ppic(id,name){
        showWin("../biz/I_Process.y?cmd=ppic&ao.psid="+id,'',0,0,1);
      }
      function selectTable(){
        Select_DataTable(1,100001,"",null,'ao.tableID','ao.processName','_tableName');
      }
      function synOrgan(){
        d("ao.organID").value = d("c_organID").value;
      }
      function add(node){
        d("ao.psid").value = '';
        d("ao.processName").value = '';
        d("ao.tableID").value = '';
        d("ao.creator").value = '';
        d("ao.remark").value = '';
        d("ao.state").value = 1;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【流程 - 添加】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【流程 - 编辑】','div_temp_win');
      }
      function exec(tip,a){
        var f = document.DataForm;
        if( (a=='add' || ((a=='edit'||a=='del') && checkSelect(f["ao.psid"], "流程")))
         && checkStrInput(f["ao.processName"], 100, true, '<bean:write name="I_ProcessBean" property="ao.processName_desc" />')
         && checkStrInput(f["ao.remark"], 500, false, '<bean:write name="I_ProcessBean" property="ao.remark_desc" />')
         && confirmAction('确定要'+tip+'【'+f["ao.processName"].value+'】吗？', function(){
             f.action = "I_Process.y?cmd="+a;
             f.submit();
         }))
           return true;
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
            ajax('I_Process.y?cmd=del', {'ao.psid':id,'ao.processName':name}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function copy(obj,id,name){
        confirmAction('确定要复制[' + id + ':' + name + ']吗？', function(){
            ajax('I_Process.y?cmd=copy', {'ao.psid':id,'ao.processName':name}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("I_Process.y?cmd=query");
        dx.addParam("c_organID", d("c_organID").value);
        dx.addParam("c_processType", d("c_processType").value);
        load(dx,true);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
    
    <div id="div_temp_win" class="easyui-dialog">
    <form name="DataForm" action="/" method="POST">
    <html:hidden name="I_ProcessBean" property="ao.psid" />
    <html:hidden name="I_ProcessBean" property="ao.creator" />
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="100"><bean:write name="I_ProcessBean" property="ao.organID_desc" /></td> 
        <td class="tdBody" width="400"><html:select styleClass="sel_text" name="I_ProcessBean" property="ao.organID">
                           <html:optionsCollection name="I_ProcessBean" property="organList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessBean" property="ao.processType_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_ProcessBean" property="ao.processType">
                           <html:optionsCollection name="I_ProcessBean" property="processTypeList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessBean" property="ao.tableID_desc" /></td> 
        <td class="tdBody"><html:hidden name="I_ProcessBean" property="ao.tableID" />
                           <input type="hidden" name="_tableName" />
                           <html:text styleClass="ipt_text" name="I_ProcessBean" property="ao.processName" size="50" readonly="true" />&nbsp;&nbsp;
                           <img src="<%=DOCPATH%>/images/query.png" onclick="selectTable()"></td>
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessBean" property="ao.state_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_ProcessBean" property="ao.state">
                           <html:optionsCollection name="I_ProcessBean" property="stateList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessBean" property="ao.remark_desc" /></td> 
        <td class="tdBody"><html:textarea styleClass="ipt_text" name="I_ProcessBean" property="ao.remark" cols="60" rows="5" /></td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </form>
    </div>
    