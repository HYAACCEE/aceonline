<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_nop.jsp" %>

    <script language=javascript>setTitle("角色权限管理");</script>
    <form name="MainForm" method="post" onreset="return confirm('您确定要重新选择吗？');">
    <html:hidden name="S_RoleBean" property="role.roleID" />
    <html:hidden name="S_RoleBean" property="role.roleName" />

    <table width="100%" height="100%" cellSpacing="0" cellPadding="0" border="1"><tr><td class="tdCommonTop">
    
    <div id="content-header-bar">
      <div class="content-header"><h1>角色 : <bean:write name="S_RoleBean" property="role.roleName" /></h1></div>
      <div class="print-header">
          <input type="button" class="button" value=" 提 交 " onclick="exec()">&nbsp;&nbsp;
          <input type="reset" class="button" value=" 恢 复 ">&nbsp;&nbsp;
          <input type="button" class="button" value=" 关 闭 " onclick="window.close()">&nbsp;&nbsp;
      </div>
      <div style="clear:both;"></div>
    </div>

    <div class="dt_header">【模块列表】
      &nbsp;&nbsp;&nbsp;<input type="checkbox" class="checkbox" onclick="allselect(this.checked, MainForm.myModules)">全选
    </div>
    <div id="list_div" align="center"></div>
    
    </td></tr></form></table>

    <script language="javascript">
    <!--
      function power(obj,moduleid,j){
        var pw = d('id_pw_'+moduleid);
        var chks = d('chk_'+moduleid);
        var tmp = 0;
        var len = 8;
        if(chks){
          if(chks.length){
	          for(var i=0;i<chks.length;i++){
	            if(chks[i].checked) tmp += Math.pow(10, (len-1)-chks[i].value);
	          }
          }else{
            if(chks.checked) tmp += Math.pow(10, (len-1)-chks.value);
          }
          pw.value = (tmp+"").lpad(len, "0");
        }
      }
      function onSelector(obj){
        var v = obj.checked;
        var chks = d('id_'+obj.value);
        if(chks){
        	if(chks.length){
	          for(var i=0; i<chks.length; i++){
	        	  chks[i].checked = v;
	            onSelector(chks[i]);
	          }
        	}else{
            chks.checked = v;
            onSelector(chks);
        	}
        }
        var pw = d('id_pw_'+obj.value);
        if(pw){
          pw.disabled = !v;
          power(null, obj.value);
        }
      }
      function input_power_check(obj){
        code=event.keyCode;
        if(!(code==48||code==49||code==50||code==57|| code==8||code==13||code==46)) //0,1,2,9  退格,回车,删除
            event.returnValue=false;
      }
      function exec(){
        confirmAction('确定提交吗？', function(){
	        var f = document.MainForm;
	        f.action = "S_Role.y?cmd=set";
	        f.submit();
        });
      }
      function page_redirect(page){
        var dx = new DynaXmlHttp();
        dx.setAction("S_Role.y?cmd=getModules");
        dx.addParam("role.roleID", d("role.roleID").value);
        dx.addParam("tableHeight", getDivMaxHeight(122));
        load(dx, true);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
<%@ include file="/common/IncludeBottom.jsp" %>
