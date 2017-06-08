<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="DataForm" action="/" method="POST">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader">A4打印机名称</td>
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_EmpBean" property="print_a4" size="80" /><br>
        HP LaserJet Pro MFP M127-M128 PCLmS (副本 1) &nbsp;&nbsp;&nbsp;&nbsp; Snagit 11</td> 
      </tr>
      <tr>
        <td class="tdHeader">标签打印机名称</td>
        <td class="tdBody"><html:text styleClass="ipt_text" name="I_EmpBean" property="print_mark" size="80" />
        </td> 
      </tr>      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_edit" value=" 修改 " onclick="setPrintInfo();">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    
    </div>
    </form>

    <script language="javascript">
    <!--
      function setPrintInfo(){
        confirmMsg('确定要修改吗？', function(){
             ajax('I_EmpInfo.y?cmd=setPrintInfo', {'print_a4':d.print_a4.value,'print_mark':d.print_mark.value}, function(html){
                 setMessage(html);
             });
        });
      }
      function init(){
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
