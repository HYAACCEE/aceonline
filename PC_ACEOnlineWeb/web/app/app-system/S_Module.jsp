<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle(" 超级管理 > 模块管理");</script-->
    <form name="MainForm" action="/" method="POST">
  
    <div id="db_main">
    <div class="dt_header">【模块列表】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value=" 新建模块 " onclick="add();" style="display:none">
    </div>
    <div id="list_div" align="center"></div>
    </div>
    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        d("ao.s_moduleID").value = items[0];
        d("ao.moduleID").value = items[0];
        d("ao.moduleName").value = items[1];
        d("ao.state").value = items[2];
        d("ao.isMenu").value = items[3];
        d("ao.parent").value = items[4];
        d("ao.hasChild").value = items[5];
        d("ao.url").value = items[6];
        d("ao.img").value = items[7];
        d("ao.power").value = items[8];
        
        var power = d("ao.power").value;
        d("power_chk_all").checked = true;
        if(power.length>0){
	        for(var j=0;j<power.length;j++){
	          d("power_chk_"+j).checked = power.charAt(j)=='1';
	          if(power.charAt(j)=='0') d("power_chk_all").checked = false;
	        }
	      }else{
          for(var j=0;j<d("power_chk").length;j++){
            d("power_chk_"+j).checked = false;
          }
          d("power_chk_all").checked = false;
        }
      }
      function power_all(v){
        for(var j=0;j<d("power_chk").length;j++){
          d("power_chk_"+j).checked = v;
        }
      }
      function add(node){
        d("ao.s_moduleID").value = '新增';
        d("ao.moduleID").value = '';
        d("ao.moduleName").value = '';
        d("ao.state").value = 1;
        d("ao.isMenu").value = 1;
        d("ao.hasChild").value = 0;
        d("ao.parent").value = '';
        d("ao.url").value = '';
        d("ao.img").value = '';
        d("ao.power").value = '';
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【模块 - 添加】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【模块 - 编辑】','div_temp_win');
      }
      function exec(tip,a){
        var f = document.DataForm;
        if( checkStrInput(f["ao.moduleID"], 100, true, '<bean:write name="S_ModuleBean" property="ao.moduleID_desc" />')
         && checkStrInput(f["ao.moduleName"], 100, true, '<bean:write name="S_ModuleBean" property="ao.moduleName_desc" />')
         && checkIntInput(f["ao.state"], 100, true, '<bean:write name="S_ModuleBean" property="ao.state_desc" />')
         && checkIntInput(f["ao.isMenu"], 100, true, '<bean:write name="S_ModuleBean" property="ao.isMenu_desc" />')
         //&& checkStrInput(f["ao.parent"], 100, true, '<bean:write name="S_ModuleBean" property="ao.parent_desc" />')
         && checkIntInput(f["ao.hasChild"], 100, true, '<bean:write name="S_ModuleBean" property="ao.hasChild_desc" />')
         && checkStrInput(f["ao.url"], 100, false, '<bean:write name="S_ModuleBean" property="ao.url_desc" />')
         && checkStrInput(f["ao.img"], 100, false, '<bean:write name="S_ModuleBean" property="ao.img_desc" />')
         && confirmMsg('确定要'+tip+'[' + f["ao.moduleName"].value + ']吗？', function(){
                 
		        var power = "";
	          for(var j=0;j<d("power_chk").length;j++){
	            power += d("power_chk_"+j).checked ? "1":"0";
	          }
	          d("ao.power").value = power;
         
            //f.appendChild(d("div_temp_win"));
            f.action = "S_Module.y?cmd="+a;
            f.target = "_self";
            f.submit();
         })                 
         ) return true;
        return false;
      }
      function copy(obj,id,name){
        confirmMsg('确定要复制添加吗？', function(){
            var f = document.DataForm;
            f["ao.s_moduleID"].value = id;
            f["ao.moduleName"].value = name;
            f.action = "S_Module.y?cmd=copy";
            f.target = "_self";
            f.submit();
        });
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除 [' + id + " : " + name + '] 吗？', function(){
            var f = document.DataForm;
            f["ao.s_moduleID"].value = id;
            f["ao.moduleName"].value = name;
            f.action = "S_Module.y?cmd=del";
            f.target = "_self";
            f.submit();
        });
      }
      function dataModule(obj,id,name){
        //showWin("../biz/I_DataTable.y?cmd=editPage&ao.tableID="+id,'',0,0,1);
        OpenWin("../xml/I_DataModule.y?cmd=editPage&ao.moduleID="+id,0,0,'',1);
      }
      function validate(f){     	 
      	 var dx = new DynaXmlHttp(); 
      	 dx.setAction("S_Module.y?cmd=validate");
         dx.addParam("s_moduleID", f["ao.s_moduleID"].value);
         dx.addParam("moduleID", f["ao.moduleID"].value);
      	 dx.setXmlHttpObj(createXmlHttp());
         if(dx.send()){
           return dx.getResponseText();
         }
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.setAction("S_Module.y?cmd=query");
        load(dx,true);
      }
      
      function init(){
        $('#div_temp_win').dialog('close');
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>

   
    <div id="div_temp_win" class="easyui-dialog" style="position:relative;margin:0 auto;">
    <form name="DataForm" action="/" method="POST">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="130"><bean:write name="S_ModuleBean" property="ao.s_moduleID_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="S_ModuleBean" property="ao.s_moduleID" size="30" readonly="true" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.moduleID_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ModuleBean" property="ao.moduleID" size="30" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.moduleName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ModuleBean" property="ao.moduleName" size="30" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.state_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="S_ModuleBean" property="ao.state">
                  <html:optionsCollection name="S_ModuleBean" property="stateList" /></html:select><br/></td> 
      </tr>      
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.isMenu_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="S_ModuleBean" property="ao.isMenu">
                  <html:optionsCollection name="S_ModuleBean" property="ismenuList" /></html:select><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.parent_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ModuleBean" property="ao.parent" size="30" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.hasChild_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="S_ModuleBean" property="ao.hasChild">
                  <html:optionsCollection name="S_ModuleBean" property="haschildList" /></html:select><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.url_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ModuleBean" property="ao.url" size="30" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.img_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_ModuleBean" property="ao.img" size="30" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="S_ModuleBean" property="ao.power_desc" /><br/>
         <input type=checkbox id="power_chk_all" onclick="power_all(this.checked)"><label for="power_chk_all">全选 </label>
        </td> 
        <td class="tdBody"><html:hidden name="S_ModuleBean" property="ao.power" />
        <input type=checkbox name="power_chk" id="power_chk_0"><label for="power_chk_0">详情 </label>
        <input type=checkbox name="power_chk" id="power_chk_1"><label for="power_chk_1">新增 </label>
        <input type=checkbox name="power_chk" id="power_chk_2"><label for="power_chk_2">复制 </label>
        <input type=checkbox name="power_chk" id="power_chk_3"><label for="power_chk_3">编辑 </label><br>
        <input type=checkbox name="power_chk" id="power_chk_4"><label for="power_chk_4">删除</label>
        <input type=checkbox name="power_chk" id="power_chk_5"><label for="power_chk_5">历史</label>
        <input type=checkbox name="power_chk" id="power_chk_6"><label for="power_chk_6">导入</label>
        <input type=checkbox name="power_chk" id="power_chk_7"><label for="power_chk_7">导出</label>
        </td> 
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
