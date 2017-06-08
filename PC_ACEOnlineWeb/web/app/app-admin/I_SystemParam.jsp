<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 > 类别参数配置");</script-->
    <form name="MainForm" action="/" method="POST">

    <div id="content-query-bar">
     类别：<html:select styleClass="sel_text" name="I_SystemParamBean" property="c_class" onchange="page_redirect();">
        <html:optionsCollection name="I_SystemParamBean" property="classList" /></html:select>
    </div>

    <div id="db_main">
    <div class="dt_header">【类别参数列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建类别参数 " onclick="add();">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 刷新 " onclick="reflesh()">
    </div>
    <div id="list_div" align="center"></div>
    </div>

    </form>

    <script language="javascript">
    <!--
      function add(node){
        d("ao.id").value = '新增';
        d("ao.paramClass").value = '';
        d("ao.className").value = '';
        d("ao.value").value = '';
        d("ao.name").value = '';
        d("ao.parentClass").value = '';
        d("ao.state").value = 1;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【类别参数 - 添加】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【类别参数 - 编辑】','div_temp_win');
        
        d.value_1.value = d("ao.paramClass").value;
        d.value_2.value = d("ao.value").value.substring(3,6);
      }
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("ao.id").value = items[i++];
        d("ao.paramClass").value = items[i++];
        d("ao.className").value = items[i++];
        d("ao.value").value = items[i++];
        d("ao.name").value = items[i++];
        d("ao.parentClass").value = items[i++];
        d("ao.state").value = items[i++];
        
        d.value_1.value = d("ao.paramClass").value;
        d.value_2.value = d("ao.value").value.substring(3,6);
      }
      function paramClassController(v){
        d("ao.paramClass").value = v;
        d.c_class.value = v;
        d.value_1.value = v;
        page_redirect();
      }
      function reflesh(){
        ajax('I_SystemParam.y?cmd=reflesh', null, function(html){
        });
      }
      function exec(tip,a){
        var f = document.MainForm;
        if(d("value_2").value.length < 3){
          setError('参数值必须输入3位，请检查！');
          d.value_2.focus();
          return;
        }
        if( (a=='add' || checkSelect(d("ao.id"), "类别参数"))
         && checkIntInput(d("ao.paramClass"), 100, true, "参数类别")
         && checkStrInput(d("ao.name"), 100, true, "参数名称")
         && checkStrInput(d("ao.value"), 100, false, "参数值")
         && confirmAction('确定要'+tip+'[' + d("ao.name").value + ":" + d("ao.value").value + ']吗？', function(){
             f.appendChild(d("div_temp_win"));
             d("ao.className").value = getSelectText("ao.paramClass");
             d("ao.value").value = d.value_1.value + d.value_2.value;
             f.action = "I_SystemParam.y?cmd="+a;
             f.target = "_self";
             f.submit();
         })
         ) return true;
        return false;
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
            ajax('I_SystemParam.y?cmd=del', {'ao.id':id,'ao.name':name}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function copy(obj,id,name){
      }
      function page_redirect(page){
        var dx = new DynaXmlHttp();
        dx.setAction("I_SystemParam.y?cmd=query");
        dx.addParam("c_class", d.c_class.value);
        load(dx,true);
      }
      
      function init(){
        $('#div_temp_win').dialog('close');
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>


    <div id="div_temp_win" class="easyui-dialog">
    <form name="MainForm" action="/" method="POST">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="120">ID</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="I_SystemParamBean" property="ao.id" size="20" readonly="true" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">参数类别</td> 
        <td class="tdBody"><html:hidden name="I_SystemParamBean" property="ao.className" />
                  <html:select styleClass="sel_text" name="I_SystemParamBean" property="ao.paramClass" onchange="paramClassController(this.value);">
                  <html:optionsCollection name="I_SystemParamBean" property="classList" /></html:select>
        </td> 
      </tr>
      <tr>
        <td class="tdHeader">参数值</td> 
        <td class="tdBody"><html:hidden name="I_SystemParamBean" property="ao.value" />
                           <html:text name="I_SystemParamBean" property="value_1" size="2" styleClass="ipt_read" readonly="true" style="border:1px solid #ccccff;margin-right:-10px;" /><html:text name="I_SystemParamBean" property="value_2" size="2" styleClass="ipt_text" maxlength="3" onkeyup="intInput(this)" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">值名称</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_SystemParamBean" property="ao.name" size="20" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader">上级参数值</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_SystemParamBean" property="ao.parentClass" size="20" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader">状态</td>
        <td class="tdBody"><html:select styleClass="sel_text" name="I_SystemParamBean" property="ao.state">
                  <html:optionsCollection name="I_SystemParamBean" property="stateList" /></html:select></td> 
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