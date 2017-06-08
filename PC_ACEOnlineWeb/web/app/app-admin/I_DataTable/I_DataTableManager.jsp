<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>//setTitle("数据管理 - <%=actName%>数据表");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataTableBean" property="ao.tableID" />
    <html:hidden name="I_DataTableBean" property="ao.parentTableID" />
    <input type="hidden" name="linenum" value="-1">
    <input type="hidden" name="childFlag" value="<%=HIUtil.getParameter(request, "childFlag", 0)%>">


    <div id=db_main>
    <div class="dt_header">
         <div style="width:60%; float:left;"><b>【<%=actName%>数据表】</b></div>
         <div style="text-align:right">
    <!--input type="button" class="button" value=" 返 回 " onclick="goback()"-->
    <logic:equal name="I_DataTableBean" property="powerSQLOut" value="true">
    <!--input type="button" class="button" value=" VIEW SQL " onclick="showDDL()">&nbsp;&nbsp;&nbsp;&nbsp;-->
    </logic:equal>
    <input type="button" class="button" value="         <%=actName%>         " onclick="exec('<%=actName%>','<%=action%>');">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="button" value=" 关 闭 " onclick="window.close()">&nbsp;&nbsp;&nbsp;&nbsp;
         </div>
    </div>
    <table class="tbBorder" cellSpacing=1 cellPadding=5 width="100%" border=0>
      <tr>
        <td class="tdHeader">
            <span id="div_tableType_nm_0"><bean:write name="I_DataTableBean" property="ao.tableTypeID_desc" /></span>
            <span id="div_tableType_nm_1"><bean:write name="I_DataTableBean" property="ao.parentTableID_desc" /></span></td>
        <td class="tdBody" id="div_tableType">
            <span id="div_tableType_0">
                           <html:select styleClass="sel_text" name="I_DataTableBean" property="ao.tableTypeID">
                           <html:optionsCollection name="I_DataTableBean" property="tableTypeList" /></html:select>
            </span>
            <span id="div_tableType_1">
                           <html:hidden name="I_DataTableBean" property="ao.tableTypeID" />
                           <bean:write name="I_DataTableBean" property="parentTableMemo" />
            </span>
           </td>
        <td class="tdHeader"><bean:write name="I_DataTableBean" property="ao.sctLevel_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataTableBean" property="ao.sctLevel" onchange="sctLevelController()">
                           <html:optionsCollection name="I_DataTableBean" property="sctLevelList" /></html:select></td>
        <td class="tdHeader"><bean:write name="I_DataTableBean" property="ao.tableMemo_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="30" name="I_DataTableBean" property="ao.tableMemo" /></td>
        <td class="tdHeader"><bean:write name="I_DataTableBean" property="ao.tableName_desc" /></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="30" name="I_DataTableBean" property="ao.tableName" /></td>
        <td class="tdHeader">行数</td>
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataTableBean" property="rowNum" size="3" onkeyup="this.value=this.value.replace(/\D/g,'')"/>
                          <input type="button" class="button" value=" 重新生成表格 " onclick="page_redirect();">
      <tr>
      </tr>
        <td class="tdHeader"><bean:write name="I_DataTableBean" property="ao.state_desc" /></td>
        <td class="tdBody" colspan="5"><html:select styleClass="sel_text" name="I_DataTableBean" property="ao.state">
                           <html:optionsCollection name="I_DataTableBean" property="stateList" /></html:select>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type=checkbox class=checkbox id="id_sequenceFlag" /> <label for="id_sequenceFlag"><b><bean:write name="I_DataTableBean" property="ao.sequenceFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.sequenceFlag" />
                           <input type=checkbox class=checkbox id="id_pkFlag" /> <label for="id_pkFlag"><b><bean:write name="I_DataTableBean" property="ao.pkFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.pkFlag" />
                           <input type=checkbox class=checkbox id="id_sidFlag" /> <label for="id_sidFlag"><b><bean:write name="I_DataTableBean" property="ao.sidFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.sidFlag" />
                           <input type=checkbox class=checkbox id="id_scopeFlag" /> <label for="id_scopeFlag"><b><bean:write name="I_DataTableBean" property="ao.scopeFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.scopeFlag" />
                           <input type=checkbox class=checkbox id="id_attachFileFlag" /> <label for="id_attachFileFlag"><b><bean:write name="I_DataTableBean" property="ao.attachFileFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.attachFileFlag" />
                           <input type=checkbox class=checkbox id="id_dataStatusFlag" /> <label for="id_dataStatusFlag"><b><bean:write name="I_DataTableBean" property="ao.dataStatusFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.dataStatusFlag" />
                           <input type=checkbox class=checkbox id="id_sctLevelFlag" /> <label for="id_sctLevelFlag"><b><bean:write name="I_DataTableBean" property="ao.sctLevelFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableBean" property="ao.sctLevelFlag" />
        <td class="tdHeader"><bean:write name="I_DataTableBean" property="ao.serverPath_desc" /></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="30" name="I_DataTableBean" property="ao.serverPath" /></td>
        <td class="tdHeader">其他功能配置</td>
        <td class="tdBody">
            <html:hidden name="I_DataTableBean" property="ao.otherButtons" />
            <span id="div_otherButtons"></span>
            <a href="#" onclick="addOtherButtons()"><新增>            
    <div id="div_temp_win" class="easyui-dialog" style="position:relative;margin:0 auto;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="140">功能菜单显示名称</td>
        <td class="tdBody"><input class="ipt_text" name="button_showName" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">对应的function</td>
        <td class="tdBody"><input class="ipt_text" name="button_function" /></td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value=" 确定 " onclick="cmtOtherButtons();">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </div>
            
            
        </td>
        </td>
      </tr>
    </table>
    <div id="list_div" align="center" onkeydown="tabsControl(this,this.getElementsByTagName('INPUT'),11)"></div>

    </div>
    
    <table class=tbBorder cellSpacing=1 cellPadding=3 width="100%" border=0>
      <tr>
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value="         <%=actName%>         " onclick="exec('<%=actName%>','<%=action%>');">
        </td> 
      </tr>
    </table>
    
     </div>
    </form>

    <script language="javascript">
    <!--
      function addOtherButtons(){
        showFormBox('【其他功能配置】','div_temp_win', 400, document.MainForm);
      }
      function cmtOtherButtons(){
        if(!isEmpty(d("button_showName").value)){
          var button_showName = d("button_showName").value;
          var tmp = button_showName +"|"+d("button_function").value+",";
          d('div_otherButtons').innerHTML += "<span id='"+d("button_function").value+"' title='"+d("button_function").value+"'> " + button_showName
          + "<a href=# onclick=\"delOtherButtons(d('"+d("button_function").value+"'),'"+tmp+"')\"><删></a>"+"</span>";
          d('ao.otherButtons').value += tmp;
        }
        $( "#div_temp_win" ).dialog( "close" );
      }
      function delOtherButtons(o,b){
        var tmp = d('div_otherButtons').innerHTML;
        d('div_otherButtons').innerHTML = tmp.replace(o.outerHTML, '');
        tmp = d('ao.otherButtons').value;
        d('ao.otherButtons').value = tmp.replace(b, '');
      }
      function initOtherButtons(){
        var tmp = d("ao.otherButtons").value;
        if(!isEmpty(tmp)){
          var bs = tmp.split(",");
          for(var i=0;i<bs.length-1;i++){
            var ss = bs[i].split("|");
	          d('div_otherButtons').innerHTML += " <span id='"+ss[1]+"' title='"+ss[1]+"'>" + ss[0]
	          + "<a href=# onclick=\"delOtherButtons(d('"+ss[1]+"'),'"+bs[i]+","+"')\"><删></a>"+"</span>";
          }
        }
      }
      function closeWindow(){
        //return confirm('确定要离开吗？');
      }
      function showDDL(){
        var f = document.MainForm;
        for(var i=1;i<=f.elements["rowNum"].value;i++){
          if(!checkInput(i)) return false;
        }
        OpenWin('',1000,500,'win_new',1);
        f.action = "I_DataTable.y?cmd=showDDL";
        f.target = "win_new";
        f.submit();
      }
      function doFocus(row){
        var old_row = d("linenum").value;
        if(row != old_row){
          if(old_row != -1){
            //checkInput(old_row);
          }
          d("linenum").value = row;
          setDisable(d("colid_"+row), false);
          setDisable(d("state_"+row), false);
          setDisable(d("colName_"+row), false);
          setDisable(d("colMemo_"+row), false);
          setDisable(d("dataType_"+row), false);
          setDisable(d("dataLen_"+row), false);
          setDisable(d("dataDotLen_"+row), false);
          setDisable(d("sctLevel_"+row), false);
        }
      }
      function checkInput(row){
        //判断表格输入
        if(!isEmpty(d("colMemo_"+row).value)){
          if(checkStrInput(d("colMemo_"+row), 200, true, '<bean:write name="I_DataTableBean" property="dc.colMemo_desc"/>')
          && checkStrInput(d("colName_"+row), 200, true, '<bean:write name="I_DataTableBean" property="dc.colName_desc"/>')
          && checkIntInput(d("dataLen_"+row), 6, true, '<bean:write name="I_DataTableBean" property="dc.dataLen_desc"/>')
          && checkIntInput(d("dataDotLen_"+row), 6, true, '<bean:write name="I_DataTableBean" property="dc.dataDotLen_desc"/>')
          ){
          
          }else{
            return false;
          }
        }else{
          setDisable(d("colid_"+row), true);
          setDisable(d("state_"+row), true);
          setDisable(d("colName_"+row), true);
          setDisable(d("colMemo_"+row), true);
          setDisable(d("dataType_"+row), true);
          setDisable(d("dataLen_"+row), true);
          setDisable(d("dataDotLen_"+row), true);
          setDisable(d("sctLevel_"+row), true);
        }
        return true;
      }
      function sctLevelController(){
        confirmMsg('您更改了表的秘密级别，需要同步列的秘密级别吗？', function(){
            sctLevelSyn();
        });
      }
      function sctLevelSyn(){
        var oo = d("sctLevel");
        var v = d("ao.sctLevel").value;
        for(var i=0;i<oo.length;i++){
          oo[i].value = v;
        }
      }
      function DataTypeController(){
        var row = d("linenum").value;
        var v = d("dataType")[row-1].value;
        if(v== <%= ParamClass.VALUE_DATA_TYPE_NUMBER %>){
          if(d("dataLen_"+row).value > 10) d("dataLen_"+row).value = 6;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_CHAR %>){
          d("dataLen_"+row).value = 1;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_VARCHAR2 %>){
          if(d("dataLen_"+row).value < 13) d("dataLen_"+row).value = 30;
          d("dataDotLen_"+row).value = 0;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_TEXT %>){
          if(d("dataLen_"+row).value < 500) d("dataLen_"+row).value = 500;
          d("dataDotLen_"+row).value = 0;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_DATE %>){
          d("dataLen_"+row).value = 20;
          d("dataDotLen_"+row).value = 0;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_DATETIME %>){
          d("dataLen_"+row).value = 20;
          d("dataDotLen_"+row).value = 0;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_FILE %> || v== <%= ParamClass.VALUE_DATA_TYPE_IMGFILE %>){
            d("dataLen_"+row).value = 300;
            d("dataDotLen_"+row).value = 0;
        }else if(v== <%= ParamClass.VALUE_DATA_TYPE_IMGLINK %>){
            d("dataLen_"+row).value = 200;
            d("dataDotLen_"+row).value = 0;
        }
      }
      function goback(){
        confirmMsg('确定要离开吗？', function(){
            location.href = "I_DataTable.y";
        });
      }
      function addCheck(f){
        if( checkIntInput(f.elements["rowNum"], 100, true, "行数")
         ) return true;
        return false;
      }
      function exec(tip,a){
        if(d("id_sequenceFlag").checked) d("ao.sequenceFlag").value = 1;
        else d("ao.sequenceFlag").value = 0;
        if(d("id_pkFlag").checked) d("ao.pkFlag").value = 1;
        else d("ao.pkFlag").value = 0;
        if(d("id_sidFlag").checked) d("ao.sidFlag").value = 1;
        else d("ao.sidFlag").value = 0;
        if(d("id_scopeFlag").checked) d("ao.scopeFlag").value = 1;
        else d("ao.scopeFlag").value = 0;
        if(d("id_attachFileFlag").checked) d("ao.attachFileFlag").value = 1;
        else d("ao.attachFileFlag").value = 0;
        if(d("id_dataStatusFlag").checked) d("ao.dataStatusFlag").value = 1;
        else d("ao.dataStatusFlag").value = 0;
        if(d("id_sctLevelFlag").checked) d("ao.sctLevelFlag").value = 1;
        else d("ao.sctLevelFlag").value = 0;
        
        var f = document.MainForm;
        if( checkStrInput(f.elements["ao.tableMemo"], 100, true, '<bean:write name="I_DataTableBean" property="ao.tableMemo_desc"/>')
         && checkStrInput(f.elements["ao.tableName"], 100, true, '<bean:write name="I_DataTableBean" property="ao.tableName_desc"/>')
         && confirmMsg('确定要'+tip+'[' + f.elements["ao.tableMemo"].value + ']吗？', function(){
			        for(var i=1;i<=f.rowNum.value;i++){
			          if(!checkInput(i)) return false;
			        }
			        f.action = "I_DataTable.y?cmd="+a;
			        f.target = "_self";
			        f.submit();
         })
         ) return true;
        return false;
      }
      function addRowCheck(f){
        if( checkIntInput(f.elements["rowNum"], 100, true, "行数")
         ) return true;
        return false;
      }
      function page_redirect(){
        var f = document.MainForm;
        if(!addRowCheck(f)) return false;
        ajax("I_DataTable.y?cmd=addRows", {"ao.tableID": f.elements["ao.tableID"].value, "rowNum": f.elements["rowNum"].value, "scrollFlag": 0}, function(html){
            list_div.innerHTML = html;
            GetParamClassList(<%=ParamClass.CLASS_DATA_TYPE%>, "dataType", 100, "DataTypeController()", function(){
			        var oo = d("dataType");
			        var oo_ = d("dataType_");
              for(var i=0;i<oo.length;i++){
				        oo[i].value = oo_[i].value;
			        }
            });
            GetParamClassList(<%=ParamClass.CLASS_SCT_LEVEL%>, "sctLevel", 50, "", function(){
              var oo = d("sctLevel");
              var oo_ = d("sctLevel_");
              for(var i=0;i<oo.length;i++){
                oo[i].value = oo_[i].value;
              }
		            //sctLevelSyn();
		            for(var i=1;i<=f.rowNum.value;i++){
		              //if(!checkInput(i)) return false;
		            }
            });
        });
      }
      function init(){
        $('#div_temp_win').dialog('close');
        initOtherButtons();
        setDisplay(d("div_tableType_nm_0"), d("childFlag").value==1, true);
        setDisplay(d("div_tableType_nm_1"), d("childFlag").value==0, true);
        setDisplay(d("div_tableType_0"), d("childFlag").value==1, true);
        setDisplay(d("div_tableType_1"), d("childFlag").value==0, true);

        d("id_sequenceFlag").checked = d("ao.sequenceFlag").value==1;
        d("id_pkFlag").checked = d("ao.pkFlag").value==1;
        d("id_sidFlag").checked = d("ao.sidFlag").value==1;
        d("id_scopeFlag").checked = d("ao.scopeFlag").value==1;
        d("id_attachFileFlag").checked = d("ao.attachFileFlag").value==1;
        d("id_dataStatusFlag").checked = d("ao.dataStatusFlag").value==1;
        d("id_sctLevelFlag").checked = d("ao.sctLevelFlag").value==1;
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom_win.jsp" %>
