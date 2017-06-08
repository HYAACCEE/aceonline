<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 系统参数管理");</script-->
    <form name="MainForm" action="/" method="POST">
    
    <div class="dt_header">【系统参数列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建系统参数 " onclick="add();"></div>
    <div id="list_div" align="center"></div>

    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        d.id.value = items[0];
        d.paramName.value = items[1];
        d.paramValue.value = items[2];
        d.remark.value = items[3];
      }
      function add(){
        d("id").value = '新增';
        d("paramName").value = '';
        d("paramValue").value = '';
        d("remark").value = '';
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【系统参数 - 添加】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【系统参数 - 编辑】','div_temp_win');
      }
      function exec(a){
        var f = document.DataForm;
        if(!eval(a+"Check(f)")) return false;
        f.action = "S_Param.y?cmd="+a;
        f.submit();
      }
      function addCheck(f){
        if( checkStrInput(f["paramName"], 100, true, "参数名称")
         && checkStrInput(f["paramValue"], 100, false, "参数值")
         && confirm('确定要添加[' + f["paramName"].value + ']吗？')
         ) return true;
        return false;
      }
      function editCheck(f){
        if( checkSelect(f["id"], "系统参数")
         && checkStrInput(f["paramName"], 100, true, "系统参数名称")
         && checkStrInput(f["paramValue"], 100, false, "参数值")
         && confirm('确定要修改[' + f["id"].value + ':' + f["paramName"].value + ']吗？')
         ) return true;
        return false;
      }
      function copy(obj,id,name){
        confirmMsg('确定要复制添加吗？', function(){
            var f = document.MainForm;
            f["id"].value = id;
            f["paramName"].value = name;
            f.action = "S_Param.y?cmd=copy";
            f.target = "_self";
            f.submit();
        });
      }
      function del(obj,id,name){
        confirmMsg('确定要删除吗？', function(){
            var f = document.MainForm;
            f["id"].value = id;
            f["paramName"].value = name;
            f.action = "S_Param.y?cmd=del";
            f.target = "_self";
            f.submit();
        });
      }
      function page_redirect(page){
        var dx = new DynaXmlHttp();
        dx.setAction("S_Param.y?cmd=query");
        load(dx,true,420);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>

    <div id="div_temp_win" class="easyui-dialog">
    <form name="DataForm" action="/" method="POST">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="100">ID</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="S_ParamBean" property="id" size="40" readonly="true" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">参数名称</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ParamBean" property="paramName" size="40" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader">参数值</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ParamBean" property="paramValue" size="40" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader">备注</td> 
        <td class="tdBody"><html:textarea name="S_ParamBean" property="remark" rows="5" cols="30" /><br/></td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value=" 添加 " onclick="exec('add');">&nbsp;
          <input type="button" class="button" name="btn_edit" value=" 修改 " onclick="exec('edit');">&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </form>
    </div>
