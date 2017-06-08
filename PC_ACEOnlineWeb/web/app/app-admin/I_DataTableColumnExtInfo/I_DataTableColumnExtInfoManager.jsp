<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>
<%@ page isELIgnored="false"%>
<body style="overflow:hidden">

    <!--script language=javascript>setTitle("系统管理 - 元数据编辑");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.id" />
    <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.colid" />
    <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.tableID" />
    
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="120"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extCode_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extCode" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameZh_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extNameZh" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameZhs_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extNameZhs" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameEn_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extNameEn" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameEns_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extNameEns" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extDefine_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extDefine" /></td> 
      </tr>
      <tr style="display:none">
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extShow_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extShow" /></td> 
      </tr>
      <!--tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extLength_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extLength" onblur="intInput(this)" maxlength="6" /></td> 
      </tr-->
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extPrecision_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extPrecision" onblur="intInput(this)" maxlength="6" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extUnit_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extUnit" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extValueScope_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="40" name="I_DataTableColumnExtInfoBean" property="ao.extValueScope" />
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extValueScopeTypeID" />
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extValueScopeTypeParam" />
                           <input type=button value="清空" onclick="clearScopeType()"> &nbsp;&nbsp;
                           <img src="<%=DOCPATH%>/images/query.png" onclick="selectScopeType()"></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extRelationSubCols_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extRelationSubCols" onclick="selectRelationSubCols(this.value)" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extSynName_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extSynName" /></td>
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extRelateEnvironment_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extRelateEnvironment" /></td>
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extVersion_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extVersion" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extMemo_desc"/></td>
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="I_DataTableColumnExtInfoBean" property="ao.extMemo" /></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="I_DataTableColumnExtInfoBean" property="ao.state_desc"/></td>
        <td class="tdBody"><html:select styleClass="sel_text" name="I_DataTableColumnExtInfoBean" property="ao.extState">
                  <html:optionsCollection name="I_DataTableColumnExtInfoBean" property="stateList" /></html:select></td>
      </tr>
      <tr>
        <td class="tdHeader">其他配置</td>
        <td class="tdBody">
                           <input type=checkbox class=checkbox id="id_extKeyIDFlag" /> <label for="id_extKeyIDFlag"><b><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extKeyIDFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extKeyIDFlag" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type=checkbox class=checkbox id="id_extKeyNameFlag" /> <label for="id_extKeyNameFlag"><b><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extKeyNameFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extKeyNameFlag" />
                  <br>
                           <input type=checkbox class=checkbox id="id_extKeywordFlag" /> <label for="id_extKeywordFlag"><b><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extKeywordFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extKeywordFlag" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type=checkbox class=checkbox id="id_extQueryByFlag" /> <label for="id_extQueryByFlag"><b><bean:write name="I_DataTableColumnExtInfoBean" property="ao.extQueryByFlag_desc" /></b></label>
                           <html:hidden name="I_DataTableColumnExtInfoBean" property="ao.extQueryByFlag" />
                  </td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value="  添 加  " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit" value="  修 改  " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    
    </div>
    </form>


    <div id="div_temp_win" class="easyui-dialog" style="width: 200px;">
    <div id="db_main">
    <table class="tbBorder" cellSpacing=1 cellpadding=5>    
<logic:present name="I_DataTableColumnExtInfoBean" property="extValueScopeTypeList" scope="request">
<logic:iterate id="pi" name="I_DataTableColumnExtInfoBean" property="extValueScopeTypeList" indexId="z">
    <tr class="tdBody" onmouseover="trMouseOver(this)" onmouseout="trMouseOut(this)">
      <td>
    <html:radio name="I_DataTableColumnExtInfoBean" property="extValueScopeType" value="value" 
      onclick="setValueScopeType(this.value,getRadioText('extValueScopeType'))"     
      idName="pi" styleId="id_evst_${z}" styleClass="radio" />
    <label for="id_evst_${z}"><bean:write name="pi" property="label"/></label><br>
    </td></tr>
</logic:iterate>
</logic:present>    
    </table>
    </div>
    </div>

    <script language="javascript">
    <!--
      function selectRelationSubCols(s){
        showBox('选择关联的下级列', 'I_DataTable.y?cmd=XMLGetCols&ao.tableID='+d("ao.tableID").value+'&s='+s, 500,300);
      }
      function selectScopeType(){
        showFormBox('请选择数据类型：', 'div_temp_win', 200, document.MainForm)
      }
      function setValueScopeType(extValueScopeType,memo){
        closeBox();
        d("ao.extValueScopeTypeID").value = extValueScopeType;
        if(extValueScopeType==<%= ParamClass.VALUE_VALUE_SCOPE_TYPE_SYS_DATAPARAM %>){
          Select_DataParamType(0,"",1,null,"ao.extValueScopeTypeParam","ao.extValueScopeTypeID___","ao.extValueScope");
          
        }else if(extValueScopeType==<%= ParamClass.VALUE_VALUE_SCOPE_TYPE_BIZ_DATATABLE %>){
          Select_DataTable(0,"","",null,"ao.extValueScopeTypeParam","ao.extValueScopeTypeID___","ao.extValueScope");
          
        }else if(extValueScopeType==<%= ParamClass.VALUE_VALUE_SCOPE_TYPE_DEF_USERINFO %>){
          var result = showWin("../biz/I_DataTableColumnExtInfo.y?cmd=XMLValueScopeDefaultUserInfo", null, 250, 200, 1);
          if(result){
            d("ao.extValueScopeTypeParam").value = result[0];
            d("ao.extValueScope").value = result[1];
          }
        }else if(extValueScopeType==<%= ParamClass.VALUE_VALUE_SCOPE_TYPE_DEF_DEFINE %>){
          var result = showWin("../biz/I_DataTableColumnExtInfo.y?cmd=XMLValueScopeDefault", null, 300, 80, 1);
          if(result){
            d("ao.extValueScopeTypeParam").value = result[0];
            d("ao.extValueScope").value = result[1];
          }
        
        }else{
          d("ao.extValueScopeTypeParam").value = extValueScopeType;
          d("ao.extValueScope").value = memo;
        }
//        if(isEmpty(d("ao.extValueScopeTypeParam").value)){
//          d("ao.extValueScopeTypeID").value = '';
//        }
      }
      function clearScopeType(){
        confirmMsg('确定要清空值域吗？', function(){
          d("ao.extValueScopeTypeID").value = '';
          d("ao.extValueScopeTypeParam").value = '';
          d("ao.extValueScope").value = '';
        });
      }
    
      function exec(tip,a){
        if(d("id_extKeyIDFlag").checked) d("ao.extKeyIDFlag").value = 1;
        else d("ao.extKeyIDFlag").value = 0;
        if(d("id_extKeyNameFlag").checked) d("ao.extKeyNameFlag").value = 1;
        else d("ao.extKeyNameFlag").value = 0;
        if(d("id_extKeywordFlag").checked) d("ao.extKeywordFlag").value = 1;
        else d("ao.extKeywordFlag").value = 0;
        if(d("id_extQueryByFlag").checked) d("ao.extQueryByFlag").value = 1;
        else d("ao.extQueryByFlag").value = 0;
        
        var f = document.MainForm;
        if( checkStrInput(d("ao.extCode"), 100, true, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extCode_desc"/>')
         && checkStrInput(d("ao.extNameZh"), 100, true, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameZh_desc"/>')
         && checkStrInput(d("ao.extNameZhs"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameZhs_desc"/>')
         && checkStrInput(d("ao.extNameEn"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameEn_desc"/>')
         && checkStrInput(d("ao.extNameEns"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extNameEns_desc"/>')
         && checkStrInput(d("ao.extDefine"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extDefine_desc"/>')
         && checkStrInput(d("ao.extShow"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extShow_desc"/>')
         //&& checkIntInput(d("ao.extLength"), 6, true, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extLength_desc"/>')
         && checkIntInput(d("ao.extPrecision"), 6, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extPrecision_desc"/>')
         && checkStrInput(d("ao.extUnit"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extUnit_desc"/>')
         && checkStrInput(d("ao.extValueScope"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extValueScope_desc"/>')
         && checkStrInput(d("ao.extSynName"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extSynName_desc"/>')
         && checkStrInput(d("ao.extRelateEnvironment"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extRelateEnvironment_desc"/>')
         && checkStrInput(d("ao.extVersion"), 100, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extVersion_desc"/>')
         && checkStrInput(d("ao.extMemo"), 200, false, '<bean:write name="I_DataTableColumnExtInfoBean" property="ao.extMemo_desc"/>')
         && confirmAction('确定要'+tip+'[' + d("ao.extNameZh").value + ']元数据吗？', function(){
              f.action = "I_DataTableColumnExtInfo.y?cmd="+a;
              f.submit();
         })
         ) return true;
        return false;
      }
      function init(){
        if(isEmpty(d("ao.id").value) || d("ao.id").value==-1){
          setDisplay(d("btn_add"), false);
          setDisplay(d("btn_edit"), true);
        }else{
          setDisplay(d("btn_add"), true);
          setDisplay(d("btn_edit"), false);
        }
        d("id_extKeyIDFlag").checked = d("ao.extKeyIDFlag").value==1;
        d("id_extKeyNameFlag").checked = d("ao.extKeyNameFlag").value==1;
        d("id_extKeywordFlag").checked = d("ao.extKeywordFlag").value==1;
        d("id_extQueryByFlag").checked = d("ao.extQueryByFlag").value==1;
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>