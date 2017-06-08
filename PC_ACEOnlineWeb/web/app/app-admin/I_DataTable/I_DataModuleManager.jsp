<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataModuleBean" property="ao.moduleID" />
    <html:hidden name="I_DataModuleBean" property="ao.moduleName" />
    <input type="hidden" name="linenum" value="-1">

    <div id=db_main>
    <div class="dt_header">
         <div style="width:60%; float:left;"><b>【配置数据模块】</b></div>
         <div style="text-align:right">
    <!--input type="button" class="button" value=" 返 回 " onclick="goback()"-->
    <input type="button" class="button" value=" VIEW SQL " onclick="showDDL()">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="button" value=" 关 闭 " onclick="window.close()">&nbsp;&nbsp;&nbsp;&nbsp;
         </div>
    </div>
    <table class="tbBorder" cellSpacing=1 cellPadding=5 width="100%" border=0>
      <tr>
        <td class="tdHeader" width="40"><bean:write name="I_DataModuleBean" property="ao.moduleID_desc" />：</td>
        <td class="tdBody" width="40"><bean:write name="I_DataModuleBean" property="ao.moduleID" /></td>
        <td class="tdHeader" width="60"><bean:write name="I_DataModuleBean" property="ao.moduleName_desc" />：</td>
        <td class="tdBody" width="120"><bean:write name="I_DataModuleBean" property="ao.moduleName" /></td>
        <td class="tdHeader"><bean:write name="I_DataModuleBean" property="ao.viewName_desc" /></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="30" name="I_DataModuleBean" property="ao.viewName" /></td>
        <td class="tdHeader"><bean:write name="I_DataModuleBean" property="ao.state_desc" /></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataModuleBean" property="ao.state">
                           <html:optionsCollection name="I_DataModuleBean" property="stateList" /></html:select>
        <td class="tdHeader">行数</td>
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_DataModuleBean" property="rowNum" size="3" onkeyup="this.value=this.value.replace(/\D/g,'')"/>
                          <input type="button" class="button" value=" 重新生成表格 " onclick="page_redirect();">
      <tr>
      <tr>
        <td class="tdHeader" colspan="2">其它SQL条件（and开头）</td>
        <td class="tdBody" colspan="4"><input class="ipt_text" name="ao.otherCondition" size="120"/></td>
        <td class="tdHeader">其他功能配置</td>
        <td class="tdBody" colspan="3">
            <html:hidden name="I_DataModuleBean" property="ao.otherButtons" />
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
            
      </tr>
      </tr>
        <td class="tdBody" colspan="11">
            <html:hidden name="I_DataModuleBean" property="ao.tableIDs" />
            <html:hidden name="I_DataModuleBean" property="ao.viewSql" />
            <html:hidden name="I_DataModuleBean" property="tables_str" />
            <input type="button" class="button" name="btn_table1" value=" 选择主表 " onclick="select_table();">
            <span id=si_tables></span>
        </td>
            
        </td>
        </td>
      </tr>
    </table>
    <div id="list_div" align="center" onkeydown="tabsControl(this,this.getElementsByTagName('INPUT'),11)"></div>

    </div>
    
    <table class=tbBorder cellSpacing=1 cellPadding=3 width="100%" border=0>
      <tr>
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value="         提交         " onclick="exec('提交','edit');">
        </td> 
      </tr>
    </table>
    
     </div>
    </form>

    <script language="javascript">
    <!--
      var CUR_ROW = <bean:write name="I_DataModuleBean" property="ao.colNum" />;
      var tableIDStr, tableID, relationID, tableMemo, isReplationTable, tableIndex;
      var table_z;
      function select_table(r,z){
        if(r){
          isReplationTable = true;
          table_z = z+".";
          relationID = r;
          Select_DataTable(0,"",r,"select_table_callback","colid0","colstr0","colMemo0");
        }else{
	        if(d("si_tables").innerHTML!=''){
	          alert('主表只能选择一个！');
	          return;
	        }
          isReplationTable = false;
          table_z = "";
          relationID = "";
	        Select_DataTable(0,"","","select_table_callback","colid0","colstr0","colMemo0");
	      }
      }
      function select_table_callback(p1,p2){
        closeBox();
        table_z += p1;
        select_cols(table_z,p1,p2);
      }
      function select_cols(z,p1,p2){
        if(p1.indexOf('[')<0){
          tableID = p1;
          tableIndex = "["+z+"]";
          tableIDStr = tableIndex;
        }else{
	        tableIndex = z;
	        tableIDStr = p1;
          tableID = p1.substring(p1.indexOf('[',p1.indexOf('.'))+1, p1.indexOf(']',p1.indexOf('.')));
        }
        tableMemo = p2;
        showBox("选择表列", "../biz/I_DataTable.y?cmd=XMLSelectTableCols&ao.tableID="+tableID, 500, 500);
      }
      function select_cols_callback(html){
        var tableids = d("ao.tableIDs").value;
        if(tableids.length>0) tableids = ",".concat(tableids);
        if((tableids+",").indexOf(","+tableIndex+",")<0){
          tableids += "," + tableIndex;
          d("ao.tableIDs").value = tableids.substring(1);
          d("si_tables").innerHTML += "<span id='si_table"+tableIDStr+"'><a href=# onclick=\"select_cols('"+tableIndex+"','"+tableIDStr+"','"+tableMemo+"')\" title='"+tableIndex+"'>"+ tableMemo + "</a><a href=# onclick=\"del_table('si_table"+tableIDStr+"','"+tableIndex+"')\"><删></a>" + "<input type=button onclick=\"select_table("+tableID+",'"+tableIndex+"')\" value=关联表>"+"</span>";
        }
      
        var ss = html.split(",");
        var sss;
        for(var i=0;i<ss.length;i++){
          CUR_ROW++;
          sss = ss[i].split("|");          
          d("tableid_"+CUR_ROW).value = tableID;
          d("colid_"+CUR_ROW).value = sss[0];
          d("colstr_"+CUR_ROW).value = "【" + tableMemo + "】.【" + sss[1] + "】";
          d("colMemo_"+CUR_ROW).value = sss[1];
          d("colName_as_"+CUR_ROW).value = "t"+relationID+"_"+tableID+"."+sss[2];
        }
      }
      function init_tables(){
        var tmp = d("tables_str").value;
        if(!isEmpty(tmp)){
          var bs = tmp.split(",");
          for(var i=0;i<bs.length;i++){
            var ss = bs[i].split("|");
            d('si_tables').innerHTML += "<span id='si_table"+ss[1]+"'><a href=# onclick=select_cols('"+ss[0]+"','"+ss[1]+"','"+ss[3]+"') title='"+ss[0]+"'>"+ ss[3] + "</a><a href=# onclick=\"del_table('si_table"+ss[1]+"','"+ss[0]+"')\"><删></a>" + "<input type=button onclick=\"select_table("+ss[2]+",'"+ss[0]+"')\" value=关联表>"+"</span>";
          }
        }
      }
      function del_table(si,z){
        confirmMsg("要删除吗？", function(){
          if(z.indexOf('[')<0) t = z;
          else t = z.substring(z.indexOf('[',z.indexOf('.'))+1, z.indexOf(']',z.indexOf('.')));
        
          var rowNum = d("rowNum").value;
          var dataNum = 0;
          CUR_ROW = 0;
          for(var i=1;i<=rowNum;i++){
            if(d("tableid_"+i).value==t){
              d("id_"+i).value = '';
              d("tableid_"+i).value = '';
              d("colid_"+i).value = '';
              d("colstr_"+i).value = '';
              d("colMemo_"+i).value = '';
              d("colName_"+i).value = '';
            }
            if(d("colstr_"+i).value != '') CUR_ROW = i;
          }
          var tmp = d('si_tables').innerHTML;
          d('si_tables').innerHTML = tmp.replace(d(si).outerHTML, '');
          
          var tableids = d("ao.tableIDs").value;
          tableids = ","+tableids+",";
          tableids = tableids.replace(","+z+",", ",");
          if(tableids.length==1) tableids = "";
          else tableids = tableids.substring(1, tableids.length-1);
          d("ao.tableIDs").value = tableids;
        });
      }
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
        var tmp = d('ao.otherButtons').value;
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
      function doFocus(row){
        var old_row = d("linenum").value;
        if(row != old_row){
          if(old_row != -1){
            //checkInput(old_row);
          }
          d("linenum").value = row;
          setDisable(d("id_"+row), false);
          setDisable(d("tableid_"+row), false);
          setDisable(d("colid_"+row), false);
          setDisable(d("colstr_"+row), false);
          setDisable(d("colMemo_"+row), false);
          setDisable(d("colName_"+row), false);
          setDisable(d("colName_as_"+row), false);
          setDisable(d("groupFunc_"+row), false);
          setDisable(d("listShowFlag_"+row), false);
          setDisable(d("showWidth_"+row), false);
          setDisable(d("formShowFlag_"+row), false);
          setDisable(d("extKeywordFlag_"+row), false);
          setDisable(d("extQueryByFlag_"+row), false);
          setDisable(d("sctLevel_"+row), false);
          setDisable(d("state_"+row), false);
        }
      }
      function checkInput(row){
        //判断表格输入
        if(!isEmpty(d("colstr_"+row).value)){
          if(checkStrInput(d("colMemo_"+row), 200, true, '<bean:write name="I_DataModuleBean" property="dc.colMemo_desc"/>')
          ){
            line++;
            d("colName_"+row).value = "c"+line;
          }else{
            return false;
          }
        }else{
          setDisable(d("id_"+row), true);
          setDisable(d("tableid_"+row), true);
          setDisable(d("colid_"+row), true);
          setDisable(d("colstr_"+row), true);
          setDisable(d("colMemo_"+row), true);
          setDisable(d("colName_"+row), true);
          setDisable(d("colName_as_"+row), true);
          setDisable(d("groupFunc_"+row), true);
          setDisable(d("listShowFlag_"+row), true);
          setDisable(d("showWidth_"+row), true);
          setDisable(d("formShowFlag_"+row), true);
          setDisable(d("extKeywordFlag_"+row), true);
          setDisable(d("extQueryByFlag_"+row), true);
          setDisable(d("sctLevel_"+row), true);
          setDisable(d("state_"+row), true);
        }
        return true;
      }
      function goback(){
        confirmMsg('确定要离开吗？', function(){
            location.href = "I_DataModule.y";
        });
      }
      var line;
      function exec(tip,a){        
        var f = document.MainForm;
        if( checkStrInput(f.elements["ao.viewName"], 100, false, '<bean:write name="I_DataModuleBean" property="ao.viewName_desc"/>')
         && confirmMsg('确定要提交吗？', function(){
              line = 0;
			        for(var i=1;i<=f.elements["rowNum"].value;i++){
			          if(!checkInput(i)) return false;
			        }
			        f.action = "I_DataModule.y?cmd="+a;
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
        ajax("I_DataModule.y?cmd=addRows", {"ao.moduleID": f.elements["ao.moduleID"].value, "rowNum": f.elements["rowNum"].value, "scrollFlag": 0}, function(html){
            list_div.innerHTML = html;
            GetParamClassList(<%=ParamClass.CLASS_SCT_LEVEL%>, "sctLevel", 50, "", function(){
              var oo = d("sctLevel");
              var oo_ = d("sctLevel_");
              for(var i=0;i<oo.length;i++){
                oo[i].value = oo_[i].value;
              }
            });
            GetParamClassList(<%=ParamClass.CLASS_GROUPFUNC%>, "groupFunc", 50, "", function(){
              var oo = d("groupFunc");
              var oo_ = d("groupFunc_");
              for(var i=0;i<oo.length;i++){
                oo[i].value = oo_[i].value;
              }
            });
        });
      }
      function init(){
        $('#div_temp_win').dialog('close');
        init_tables();
        initOtherButtons();
        
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom_win.jsp" %>
