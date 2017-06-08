<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <script language=javascript>setTitle("查看流程步骤");</script>
    <form name="MainForm" action="/" method="POST">

    <div id="db_main">

    <div class="dt_header">当前正在配置流程：【 <bean:write name="I_ProcessDescBean" property="po.processName" />】
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="     新建步骤    " onclick="add()">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="     流程图     " onclick="ppic()"></div>
    <div id="list_div" align="center"></div>
    
    </div>
    </form>

    <script language="javascript">
    <!--
      function doFocus(){
        var items = doFocus.arguments;
        var i = 0;
        d("ao.ccid").value = items[i++];
        d("ao.psid").value = items[i++];
        d("ao.seq").value = items[i++];
        d("ao.processTitle").value = items[i++];
        d("ao.processDesc").value = items[i++];
        d("ao.nextSeq").value = items[i++];
        d("ao.conditions").value = items[i++];
        d("ao.processCols").value = items[i++];
        d("ao.processActorMode").value = items[i++];
        d("ao.processActor").value = "";
        initProcessActorCheckbox("actors", items[i++]);
        d("ao.processActorDepartment").value = "";
        initProcessActorCheckbox("actorsDepartment", items[i++]);
        d("ao.processActorRole").value = "";
        initProcessActorCheckbox("actorsRole", items[i++]);
        d("ao.actorSelectRule").value = items[i++];
        d("ao.actorAutoSelectRule").value = items[i++];
        d("ao.attachFilePower").value = items[i++];
        initAttachFilePowerCheckbox();
        d("ao.attachFileEditFlag")[1-items[i++]].checked = true;
        d("ao.state").value = items[i++];
      }
      function conditions(){
    	  showBox("【条件设置】", "../biz/I_ProcessDesc.y?cmd=conditions&po.tableID="+d("po.tableID").value+"&conditions="+d("ao.conditions").value,500,400);
      }
      function selectCols(){
        showBox("【设置字段】", "../biz/I_ProcessDesc.y?cmd=cols&po.tableID="+d("po.tableID").value+"&cols="+d("ao.processCols").value, 500,400);
      }
      function ppic(){
        showWin("../biz/I_ProcessDesc.y?cmd=ppic&po.psid="+d("po.psid").value,'',0,0,1);
      }
      function initProcessActorCheckbox(objName,v){
        var o = ","+v+",";
        var cc = d(objName);
        for(var i=0;i<cc.length;i++){
          if(o.indexOf(","+cc[i].value+",")>=0) cc[i].checked = true;
          else cc[i].checked = false;
        }
      }function initAttachFilePowerCheckbox(){
        var v = d("ao.attachFilePower").value;
        var cc = d("attachFilePower");
        for(var i=0;i<cc.length;i++){
          if(cc[i].value.charAt(0)==v.charAt(i)) cc[i].checked = true;
          else cc[i].checked = false;
        }
      }
      function updateColSeq(obj,id,name,memo){
			  confirmMsg("请输入新排序：B<input type=text size=3 name=newseq>", function() {
			        ajax("I_ProcessDesc.y?cmd=updateSeq", {"ao.ccid":id, "ao.processTitle":name, "ao.LastCCID":d.newseq.value}, function(html){
			              setMessage(html);
			              page_redirect();
			        });
			  });
      }
      function add(node){
        d("ao.ccid").value = '';
        d("ao.seq").value = '';
        d("ao.processTitle").value = '';
        d("ao.processDesc").value = '';
        d("ao.nextSeq").value = '';
        d("ao.conditions").value = '';
        d("ao.processCols").value = '';
        d("ao.processActorMode").options[0].selected = true;
        d("ao.processActor").value = '';
        initProcessActorCheckbox("actors", '');
        d("ao.processActorDepartment").value = '';
        initProcessActorCheckbox("actorsDepartment", '');
        d("ao.processActorRole").value = '';
        initProcessActorCheckbox("actorsRole", '');
        d("ao.actorSelectRule").options[0].selected = true;
        d("ao.actorAutoSelectRule").options[0].selected = true;
        d("ao.attachFilePower").value = '';
        initAttachFilePowerCheckbox();
        d("ao.attachFileEditFlag")[1].checked = true;
        d("ao.state").value = 1;
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), false);
        setDisplay(d('btn_edit'), true);
        showFormBox('【新建步骤】','div_temp_win');
      }
      function edit(){
        setDisplay(d('div_btn'), false);
        setDisplay(d('btn_add'), true);
        setDisplay(d('btn_edit'), false);
        showFormBox('【编辑步骤】','div_temp_win');
      }
      function exec(tip,a){
        var f = document.DataForm;
        if( (a=='add' || ((a=='edit'||a=='del') && checkSelect(f["ao.ccid"], "流程步骤")))
         && checkStrInput(f["ao.seq"], 2, true, '<bean:write name="I_ProcessDescBean" property="ao.seq_desc" />')
         && checkStrInput(f["ao.processTitle"], 100, true, '<bean:write name="I_ProcessDescBean" property="ao.processTitle_desc" />')
         && checkStrInput(f["ao.processDesc"], 100, false, '<bean:write name="I_ProcessDescBean" property="ao.processDesc_desc" />')
         && confirmAction('确定要'+tip+'【'+f["ao.processTitle"].value+'】吗？', function(){
             f.action = "I_ProcessDesc.y?cmd="+a;
             f.submit();
         }))
           return true;
      }
      function del(obj,id,name){
        checkAdminPass('确定要删除[' + id + ':' + name + ']吗？', function(){
            ajax('I_ProcessDesc.y?cmd=del', {'ao.ccid':id,'ao.processTitle':name}, function(html){
                setMessage(html);
                page_redirect();
            });
        });
      }
      function page_redirect(){
        var dx = new DynaXmlHttp();
        dx.setAction("I_ProcessDesc.y?cmd=query");
        dx.addParam("ao.psid", d("po.psid").value);
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
    <html:hidden name="I_ProcessDescBean" property="ao.ccid" />
    <html:hidden name="I_ProcessDescBean" property="ao.psid" />
    <html:hidden name="I_ProcessDescBean" property="po.psid" />
    <html:hidden name="I_ProcessDescBean" property="po.processName" />
    <html:hidden name="I_ProcessDescBean" property="po.tableID" />
    <html:hidden name="I_ProcessDescBean" property="po.organID" />
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="dt_header" colspan="4" style="font-weight:bold;">基本属性设置</td> 
      </tr>
      <tr>
        <td class="tdHeader" width="100"><bean:write name="I_ProcessDescBean" property="ao.seq_desc" /></td> 
        <td class="tdBody" width="300"><html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.seq" size="5" /></td> 
        <td class="tdHeader" width="100"><bean:write name="I_ProcessDescBean" property="ao.state_desc" /></td>
        <td class="tdBody" width="300"><html:select styleClass="sel_text" name="I_ProcessDescBean" property="ao.state">
                           <html:optionsCollection name="I_ProcessDescBean" property="stateList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processTitle_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.processTitle" size="40" /></td> 
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.nextSeq_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.nextSeq" size="5" />
        <html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.conditions" size="1" />
        <input type="button" class="button" value="条件设置" onclick="conditions()"></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processDesc_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.processDesc" size="40" /></td> 
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processCols_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_ProcessDescBean" property="ao.processCols" size="20" onclick="selectCols()" /></td> 
      </tr>
      <tr>
        <td class="dt_header" colspan="4" style="font-weight:bold;">经办权限设置</td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processActorMode_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="I_ProcessDescBean" property="ao.processActorMode">
                           <html:optionsCollection name="I_ProcessDescBean" property="processActorModeList" /></html:select></td>  
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.actorSelectRule_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="I_ProcessDescBean" property="ao.actorSelectRule">
                           <html:optionsCollection name="I_ProcessDescBean" property="actorSelectRuleList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processActor_desc" /></td> 
        <td class="tdBody" colspan="3"><html:hidden name="I_ProcessDescBean" property="ao.processActor" />
               <logic:iterate id="i_o" name="I_ProcessDescBean" property="processActorList" indexId="z">
               <html:multibox name="I_ProcessDescBean" property="actors" styleId="i_actor_${z}" styleClass="checkbox" >
               <bean:write name="i_o" property="value"/>
               </html:multibox>
               <label for="i_actor_${z}"><bean:write name="i_o" property="label"/></label>
               </logic:iterate></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processActorDepartment_desc" /></td> 
        <td class="tdBody" colspan="3"><html:hidden name="I_ProcessDescBean" property="ao.processActorDepartment" />
               <logic:iterate id="i_o" name="I_ProcessDescBean" property="processActorDepartmentList" indexId="z">
               <html:multibox name="I_ProcessDescBean" property="actorsDepartment" styleId="i_actorDepartment_${z}" styleClass="checkbox" >
               <bean:write name="i_o" property="value"/>
               </html:multibox>
               <label for="i_actorDepartment_${z}"><bean:write name="i_o" property="label"/></label>
               </logic:iterate></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.processActorRole_desc" /></td> 
        <td class="tdBody" colspan="3"><html:hidden name="I_ProcessDescBean" property="ao.processActorRole" />
               <logic:iterate id="i_o" name="I_ProcessDescBean" property="processActorRoleList" indexId="z">
               <html:multibox name="I_ProcessDescBean" property="actorsRole" styleId="i_actorRole_${z}" styleClass="checkbox" >
               <bean:write name="i_o" property="value"/>
               </html:multibox>
               <label for="i_actorRole_${z}"><bean:write name="i_o" property="label"/></label>
               </logic:iterate></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.actorAutoSelectRule_desc" /></td>
        <td class="tdBody" colspan="3"><html:select styleClass="sel_text" name="I_ProcessDescBean" property="ao.actorAutoSelectRule">
                           <html:optionsCollection name="I_ProcessDescBean" property="actorAutoSelectRuleList" /></html:select>
                           <span id="actorAutoSelectRuleMemo">指定字段: <html:select styleClass="sel_text" name="I_ProcessDescBean" property="ao.actorAutoSelectRuleMemo">
                           <html:optionsCollection name="I_ProcessDescBean" property="tableColList" /></html:select></span></td>  
      </tr>
      <tr>
        <td class="dt_header" colspan="4" style="font-weight:bold;">其他相关设置</td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.attachFilePower_desc" /></td> 
        <td class="tdBody" colspan="3"><html:hidden name="I_ProcessDescBean" property="ao.attachFilePower" />
               <logic:iterate id="i_o" name="I_ProcessDescBean" property="attachFilePowerList" indexId="z">
               <html:multibox name="I_ProcessDescBean" property="attachFilePower" styleId="i_attachFilePower_${z}" styleClass="checkbox" >
               <bean:write name="i_o" property="value"/>
               </html:multibox>
               <label for="i_attachFilePower_${z}"><bean:write name="i_o" property="label"/></label>
               </logic:iterate></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_ProcessDescBean" property="ao.attachFileEditFlag_desc" /></td> 
        <td class="tdBody" colspan="3"><logic:iterate id="i_o" name="I_ProcessDescBean" property="attachFileEditFlagList" indexId="z">
               <html:radio name="I_ProcessDescBean" property="ao.attachFileEditFlag" idName="i_o" value="value" styleId="i_attachFileEditFlag_${z}" styleClass="radio" />
               <label for="i_attachFileEditFlag_${z}"><bean:write name="i_o" property="label"/></label>
               </logic:iterate></td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="4">
          <input type="button" class="button" name="btn_add" value="     添加     " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit" value="     修改     " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </form>
    </div>
    