<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 数据表类别管理");</script-->
    <form name="MainForm" action="/" method="POST">
    
    <div id="db_main">
    <div class="dt_header">【数据表类别列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建 " onclick="add()">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 刷新 " onclick="reflesh()">
    </div>
    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("dtt.tableTypeID").value = items[i++];
        d("dtt.tableTypeName").value = items[i++];
        d("dtt.typeLevel").value = items[i++];
        levelController(d("dtt.typeLevel").value);
        d("dtt.parentID").value = items[i++];
        d("dtt.memo").value = items[i++];
        d("dtt.state").value = items[i++];
      }
      function add(node){
        d("dtt.tableTypeID").value = '';
        d("dtt.tableTypeName").value = '';
        d("dtt.typeLevel").value = '';
        d("dtt.parentID").value = '';
        d("dtt.memo").value = '';
        d("dtt.state").value = 1;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【数据表类别 - 添加】','div_temp_win');
      }
      function reflesh(){
        ajax('I_DataTableType.y?cmd=reflesh', null, function(html){
        });
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【数据表类别 - 编辑】','div_temp_win');
      }
      function levelController(v){
        if(v==<%=ParamClass.VALUE_LEVEL_ONE%>) d("dtt.parentID").innerHTML = "";
        var dx = new DynaXmlHttp();
        dx.setAction("S_Main.y?cmd=XMLGetDataTableTypeList");
        dx.addParam("typeLevel", v-1);
        dx.setXmlHttpObj(createXmlHttp());
        if(dx.send()) res = htmlEncode(dx.getResponseText());
        d("dtt.parentID").outerHTML = "<select class=sel_text name=\"dtt.parentID\" style=\"width:140px;\">" + res + "</select>";
      }
      function exec(tip,a){
        if(d("dtt.tableTypeID").value<100000){
          setError('<bean:write name="I_DataTableTypeBean" property="dtt.tableTypeID_desc" />必须输入六位数字，请检查！');
          return;
        }
        if( (a=='add' || ((a=='edit'||a=='del') && checkSelect(f("dtt.tableTypeID"), "数据表类别")))
         && checkIntInput(d("dtt.tableTypeID"), 6, true, '<bean:write name="I_DataTableTypeBean" property="dtt.tableTypeID_desc" />')
         && checkStrInput(d("dtt.tableTypeName"), 100, true, '<bean:write name="I_DataTableTypeBean" property="dtt.tableTypeName_desc" />')
         && checkStrInput(d("dtt.memo"), 100, false, '<bean:write name="I_DataTableTypeBean" property="dtt.memo_desc" />')
         && confirmAction('确定要'+tip+'【'+d("dtt.tableTypeName").value+'】吗？', function(){
             var f = document.DataForm;
             f.action = "I_DataTableType.y?cmd="+a;
             f.submit();
         }))
           return true;
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
		        ajax('I_DataTableType.y?cmd=del', {'dtt.tableTypeID':id,'dtt.tableTypeName':name}, function(html){
                setMessage(html);
                page_redirect();
		        });
	      });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("I_DataTableType.y?cmd=query");
        load(dx,true);
      }
      function init(){
        page_redirect();
        levelController(d("dtt.typeLevel").value);
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
    
    <div id="div_temp_win" class="easyui-dialog">
    <form name="DataForm" action="/" method="POST">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="100"><bean:write name="I_DataTableTypeBean" property="dtt.tableTypeID_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataTableTypeBean" property="dtt.tableTypeID" maxlength="6" size="20" onkeyup="intInput(this)" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableTypeBean" property="dtt.tableTypeName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataTableTypeBean" property="dtt.tableTypeName" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableTypeBean" property="dtt.typeLevel_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataTableTypeBean" property="dtt.typeLevel" onchange="levelController(this.value)">
                           <html:optionsCollection name="I_DataTableTypeBean" property="levelList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableTypeBean" property="dtt.parentID_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataTableTypeBean" property="dtt.parentID" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableTypeBean" property="dtt.memo_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataTableTypeBean" property="dtt.memo" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableTypeBean" property="dtt.state_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataTableTypeBean" property="dtt.state">
                           <html:optionsCollection name="I_DataTableTypeBean" property="stateList" /></html:select></td> 
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
    