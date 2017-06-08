<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <script language=javascript>setTitle("数据管理 - 数据录入");</script>
    <form name="MainForm" action="/" method="POST" encType="multipart/form-data">
    <input type=hidden name=parentID>
    
    <table cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0><tr><td height=1 align=center>
    <div id="db_main">
    
    <table class=tbBorder cellSpacing=0 cellPadding=0 border=0 height=30>
      <tr>
<logic:present name="B_DataAddsBean" property="topDataTableTypeList" scope="request">
<logic:iterate id="pi" name="B_DataAddsBean" property="topDataTableTypeList" >
        <td align=center class="DM" onclick="DM_Select(<bean:write name="pi" property="value" />)">
        <b><bean:write name="pi" property="label" /></td>
</logic:iterate>
</logic:present>
      </tr>
    </table>
    
    <table class="tbBorder" cellSpacing=1 cellPadding=0 width="100%" border=0>
      <tr>
        <td class="tdHeaderL">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span title="请点击输入框右边的搜索图标"><bean:write name="B_DataAddsBean" property="ao.tableID_desc" />: 
        <html:hidden name="B_DataAddsBean" property="ao.tableID" />
        <html:text styleClass="ipt_text" readonly="true" size="30" name="B_DataAddsBean" property="ao.tableMemo"/></span>
        <img id="img_search" onclick="Select_DataTable(1,d('parentID').value,'',null,'ao.tableID','ao.tableMemo');page_redirect();" src="<%=DOCPATH%>images/search.png" title="点击搜索">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span title="关键字仅查询列名带*号的字段">关键字: <html:text styleClass="ipt_text" name="B_DataAddsBean" property="c_keyword" size="20" onclick="setDisable(d('btn_query'),false)" /></span>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" id="btn_query" disabled value=" 查 询 " onclick="page_redirect();">
        </td>
        <td width=1 align=right><input type="button" class="button" value="选择文件导入" onclick="selectFile()">
        </td>
      </tr>
    </table>

    <div id="div_temp_win" style="position:absolute;right:1px;margin:0 auto;width:400px; height:170px; display:none">
    <div id="db_main_c">
    <table class="tbBorder" cellSpacing=3 cellPadding=10 width="100%" border=0>
      <tr>
        <td class="tdHeaderL" height=50>
       请选择数据<bean:write name="B_DataAddsBean" property="ao.dataSctLevel_desc" />：
          <html:select styleClass="sel_text" name="B_DataAddsBean" property="ao.dataSctLevel">
          <html:optionsCollection name="B_DataAddsBean" property="sctLevelList" /></html:select><br><br>
        请选择数据文件：
          <html:hidden name="B_DataAddsBean" property="dataFileName" />
          <html:file styleClass="ipt_text" size="30" name="B_DataAddsBean" property="dataFile"/></td>        
      </tr>
      <tr>
        <td class="tdBodyM" height=80>
        注：暂支持.xls类型。<a href=# onclick="getXls()">下载模板</a><br><br>
        <input type="button" class="button" value=" 导入 " onclick="adds();">&nbsp;&nbsp;&nbsp;&nbsp;        
        <input type="button" class="button" value=" 取消 " onclick="setDisplay(d('div_temp_win'), true);">
        </td>
      </tr>
    </table>
    </div>
    </div>
    
    <iframe id="subwin_tmp" name="subwin_tmp" src="" width="0" height="0" frameborder="0"></iframe>
    
    </div>
    
    </td></tr><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0"></iframe>
    </td></tr></table>
    
    </form>

    <script language="javascript">
    <!--
      function getXls(){
	      var f = d.MainForm;
	      f.action = "B_DataAdds.y?cmd=getXls&ao.tableID="+d("ao.tableID").value;
	      f.target = "_blank";
	      f.submit();
      }
      function selectFile(){
        if(checkStrInput(d("ao.tableMemo"), 100, true, '<bean:write name="B_DataAddsBean" property="ao.tableID_desc" />')){
          setDisplay(d('div_temp_win'), false);
        }      
      }
      function adds(){
        if(checkStrInput(d("dataFile"), 100, true, '数据文件')
        && confirmAction('确定要导入吗？', function(){
            setDisplay(d('div_temp_win'), true);
						var f = d.MainForm;
						f.action = "B_DataAdds.y?cmd=adds&ao.tableID="+d("ao.tableID").value;
						//f.target = "subwin_tmp";
						f.submit();
			  })) return true;
      }
      function page_redirect(){
        if(checkStrInput(d("ao.tableMemo"), 100, true, '<bean:write name="B_DataAddsBean" property="ao.tableID_desc" />')){
          setDisplay(d('div_temp_win'), true);
          var f = d.MainForm;
	        f.action = "B_DataAdds.y?cmd=getRowsHead&ao.tableID="+d("ao.tableID").value+"&editFlag=1";
	        f.target = "sub_frame_data";
	        f.submit();
	      }
      }
      function init(){
        if(!isEmpty(d("ao.tableID").value) && d("ao.tableID").value > 0) page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
