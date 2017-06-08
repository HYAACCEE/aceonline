<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 数据应用字典管理");</script-->
    <form name="MainForm" action="/" method="POST">
    
    <div id="content-query-bar">
     类别：<html:select styleClass="sel_text" name="I_DataParamTypeBean" property="c_class" onchange="page_redirect();">
        <html:optionsCollection name="I_DataParamTypeBean" property="classList" /></html:select>
    </div>

    <div id="db_main">
    <div class="dt_header">【数据应用字典列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 显示列表 " onclick="showList()">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 显示树" onclick="Select_DataParamType(0)">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建 " onclick="add();">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 刷新 " onclick="reflesh()">
    </div>
    <div id="list_div" align="center"></div>
    </form>

    <script language="javascript">
    <!--
      function showList(){
        showWin("../xml/XMLDataParamTypeTree.y?cmd=XMLDataList", null, 1080, 680);
      }
      function levelController(v){
        if(v==<%=ParamClass.VALUE_LEVEL_ONE%>) d("dtt.parentID").innerHTML = "";
        var dx = new DynaXmlHttp();
        dx.setAction("S_Main.y?cmd=XMLGetDataParamTypeList");
        dx.addParam("typeLevel", v-1);
        dx.setXmlHttpObj(createXmlHttp());
        if(dx.send()) res = htmlEncode(dx.getResponseText());
        d("dtt.parentID").outerHTML = "<select class=sel_text name=\"dtt.parentID\" style=\"width:240px;\">" + res + "</select>";
      }
      function add(node){
        d("dtt.paramClassID").value = '新增';
        d("dtt.className").value = '';
        d("dtt.classNameEn").value = '';
        d("dtt.typeLevel").value = '';
        d("dtt.parentID").value = '';
        d("dtt.memo").value = '';
        d("dtt.state").value = 1;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【数据应用字典 - 添加】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【数据应用字典 - 编辑】','div_temp_win');
      }
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("dtt.paramClassID").value = items[i++];
        d("dtt.className").value = items[i++];
        d("dtt.classNameEn").value = items[i++];
        d("dtt.typeLevel").value = items[i++];
        levelController(d("dtt.typeLevel").value);
        d("dtt.parentID").value = items[i++];
        d("dtt.memo").value = items[i++];
        d("dtt.state").value = items[i++];
      }
      function reflesh(){
        ajax('I_DataParamType.y?cmd=reflesh', null, function(html){
        });
      }
      function exec(tip,a){
        if(d("dtt.paramClassID").value<100){
          setError('<bean:write name="I_DataParamTypeBean" property="dtt.paramClassID_desc" />必须输入三位-六位数字，请检查！');
          return;
        }
        if( (a=='add' || ((a=='edit'||a=='del') && checkSelect(d("dtt.paramClassID"), "数据应用字典")))
         //&& checkIntInput(d("dtt.paramClassID"), 6, true, '<bean:write name="I_DataParamTypeBean" property="dtt.paramClassID_desc" />')
         && checkStrInput(d("dtt.className"), 100, true, '<bean:write name="I_DataParamTypeBean" property="dtt.className_desc" />')
         && checkStrInput(d("dtt.classNameEn"), 100, true, '<bean:write name="I_DataParamTypeBean" property="dtt.classNameEn_desc" />')
         && checkStrInput(d("dtt.memo"), 100, false, '<bean:write name="I_DataParamTypeBean" property="dtt.memo_desc" />')
         && confirmAction('确定要'+tip+'【'+d("dtt.className").value+'】吗？', function(){
             var f = document.DataForm;
             f.action = "I_DataParamType.y?cmd="+a+"&c_class="+d.c_class.value;
             f.submit();
         }))
           return true;
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
		        ajax('I_DataParamType.y?cmd=del', {'dtt.paramClassID':id,'dtt.className':name}, function(html){
                setMessage(html);
                page_redirect();
		        });
	      });
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("I_DataParamType.y?cmd=query");
        dx.addParam("c_class", d.c_class.value);
        load(dx,true,-1,true,page,pageKey);
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
        <td class="tdHeader" width="140"><bean:write name="I_DataParamTypeBean" property="dtt.paramClassID_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataParamTypeBean" property="dtt.paramClassID" maxlength="6" size="20" onkeyup="intInput(this)" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.className_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataParamTypeBean" property="dtt.className" size="30" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.classNameEn_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataParamTypeBean" property="dtt.classNameEn" size="30" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.typeLevel_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataParamTypeBean" property="dtt.typeLevel" onchange="levelController(this.value)">
                           <html:optionsCollection name="I_DataParamTypeBean" property="levelList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.parentID_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataParamTypeBean" property="dtt.parentID" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.memo_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataParamTypeBean" property="dtt.memo" size="30" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataParamTypeBean" property="dtt.state_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataParamTypeBean" property="dtt.state">
                           <html:optionsCollection name="I_DataParamTypeBean" property="stateList" /></html:select></td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </Form>
    </div>
    