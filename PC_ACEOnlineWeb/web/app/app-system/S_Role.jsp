<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("系统管理 - 角色管理");</script-->

    <div id="db_main">
    <div class="dt_header">【角色列表】</div>
    <div id="list_div" align="center"></div>    
    
    </div>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("role.roleID").value = items[i++];
        d("role.roleSeq").value = items[i++];
        d("role.roleName").value = items[i++];
        d("role.organType").value = items[i++];
        d("role.state").value = items[i++];
        d("role.power").value = items[i++];
      }
    
      function setModules(roleID, roleName){
        OpenWin("../system/S_Role.y?cmd=init&role.roleID="+roleID);
      }
      function add(){
        d("role.roleID").value = '新增';
        d("role.roleSeq").value = '100';
        d("role.roleName").value = '';
        d("role.organType").value = '';
        d("role.state").value = 1;
        d("role.power").value = 0;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【角色 - 添加】','div_temp_win', 400, document.MainForm);
      }
      function edit(){
        if(d("role.roleID").value <= 0) return;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【角色 - 编辑】','div_temp_win', 400, document.MainForm);
      }
      function copy(obj,id,name){
        if(d("role.roleID").value <= 0) return;
        var id = d("role.roleID").value;
        var name = d("role.roleName").value;
        confirmMsg('确定要复制添加吗？', function(){
             ajax('S_Role.y?cmd=copy', {'role.roleID':id,'role.roleName':name}, function(html){
                 setMessage(html);
                 page_redirect();
             });
        });
      }
      function exec(tip, a){
        var f = document.DataForm;
        if(f["role.roleSeq"].value*1<100){
          setError('排序必须大于100，请检查！');
          return;
        }
        if( checkStrInput(f["role.roleName"], 100, true, "角色名称")
         && checkStrInput(f["role.roleSeq"], 100, true, "排序")
         && confirmMsg('确定要'+tip+'[' + f["role.roleName"].value + ']吗？', function(){
		        f.action = "S_Role.y?cmd="+a;
		        f.target = "_self";
		        f.submit();
         })                 
         ) return true;
        return false;
      }
      function del(obj,id,name){
        if(d("role.roleID").value <= 0) return;
        var id = d("role.roleID").value;
        var name = d("role.roleName").value;
        confirmMsg('确定要删除[' + id + ":" + name + ']吗？', function(){
             ajax('S_Role.y?cmd=del', {'role.roleID':id,'role.roleName':name}, function(html){
                 setMessage('删除成功.');
                 page_redirect();
             });
        });
      }      
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("S_Role.y?cmd=query");
        load(dx,true,-1,true,page,pageKey);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>

    <div id="div_temp_win" class="easyui-dialog" style="position:relative;margin:0 auto;">
    <form name="DataForm" action="/" method="POST">
    <html:hidden name="S_RoleBean" property="role.roleID" />
    <html:hidden name="S_RoleBean" property="role.power" />
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
<logic:equal name="S_RoleBean" property="superAdmin" value="false">
      <html:hidden name="S_RoleBean" property="role.roleSeq" />
</logic:equal>
      <tr>
        <td class="tdHeader">角色名称</td>
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_RoleBean" property="role.roleName" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">角色状态</td>
        <td class="tdBody"><html:select styleClass="sel_text" name="S_RoleBean" property="role.state">
                  <html:optionsCollection name="S_RoleBean" property="stateList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader">秘密级别</td>
        <td class="tdBody"><html:select styleClass="sel_text" name="S_RoleBean" property="role.sctLevel">
                  <html:optionsCollection name="S_RoleBean" property="sctLevelList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader">机构类别</td>
        <td class="tdBody"><html:select styleClass="sel_text" name="S_RoleBean" property="role.organType">
                  <html:optionsCollection name="S_RoleBean" property="organTypeList" /></html:select></td> 
      </tr>
<logic:equal name="S_RoleBean" property="superAdmin" value="true">
      <tr>
        <td class="tdHeader">排序</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_RoleBean" property="role.roleSeq" onblur="intInput(this)" maxlength="3" /></td> 
      </tr>
</logic:equal>
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
    
