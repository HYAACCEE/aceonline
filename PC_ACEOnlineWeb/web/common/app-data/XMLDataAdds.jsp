<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <form name="MainForm" action="/" method="POST" encType="multipart/form-data"> 
    <html:hidden name="B_DataAddsBean" property="ao.tableID" />
    
    <div id="db_main_c">
    <table class="tbBorder" cellSpacing=3 cellPadding=10 width="100%" border=0>
      <tr>
        <td class="tdHeaderL" height=50>
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
    
    <iframe id="subwin_tmp" name="subwin_tmp" src="" width="0" height="0" frameborder="0"></iframe>
    
    </form>

    <script language="javascript">
    <!--
      function getXls(){
	      var f = d.MainForm;
	      f.action = "B_DataAdds.y?cmd=getXls&ao.tableID="+d("ao.tableID").value;
	      f.target = "_blank";
	      f.submit();
      }
      function adds(){
        if(checkStrInput(d("dataFile"), 100, true, '数据文件')
        && confirmAction('确定要导入吗？', function(){
						var f = d.MainForm;
						f.action = "B_DataAdds.y?cmd=adds&ao.tableID="+d("ao.tableID").value;
						//f.target = "subwin_tmp";
						f.submit();
			  })) return true;
      }
      function init(){
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
