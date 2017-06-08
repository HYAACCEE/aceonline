<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_UserBean" property="c_organID" />
    <html:hidden name="S_UserBean" property="user.roleName" />
    <html:hidden name="S_UserBean" property="user.operator" />

    <div id="db_main">
        
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="140">ID</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="S_UserBean" property="user.userID" readonly="true" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">登 录 名</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="S_UserBean" property="user.loginName" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">从业人员</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" readonly="true" name="S_UserBean" property="user.userName" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">所属从业机构</td> 
        <td class="tdBody"><html:hidden name="S_UserBean" property="user.organID" />
                           <html:text styleClass="ipt_read" readonly="true" size="50" name="S_UserBean" property="user.organName" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">角色</td> 
        <td class="tdBody"><html:select name="S_UserBean" property="user.roleID">
            <html:optionsCollection name="S_UserBean" property="roleList" /></html:select></td> 
      </tr>      
      <tr>
        <td class="tdHeader">帐户状态</td> 
        <td class="tdBody"><html:select name="S_UserBean" property="user.state">
                  <html:optionsCollection name="S_UserBean" property="stateList" /></html:select></td> 
      </tr>
      <tr>
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value=" 提交 " onclick="exec('set');">&nbsp;&nbsp;&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
      
    </div>
    </form>

    <script language="javascript">
    <!--
      function exec(a,id){
        var f = document.MainForm;
        if(!eval(a+"Check(f)")) return false;
        f["user.roleName"].value = getSelectText("user.roleID");
        f.action = "S_UserStart.y?cmd="+a;
        f.submit();
      }
      function setCheck(f){
        if( checkSelect(f["user.userID"], "帐户")
         && checkStrInput(f["user.roleID"], 100, true, "角色")
         && checkIntInput(f["user.state"], 100, true, "帐户状态")
         && confirm('确定要提交吗？')
         ) return true;
        return false;
      }
      function init(){
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
