<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle(" <%=actName%>帐户信息");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_UserBean" property="user.cssStyle" />
    <html:hidden name="S_UserBean" property="c_organID" />

    <div id="db_main">
        
    <div class="dt_header">【<%=actName%>帐户】</div>
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="140">ID</td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="S_UserBean" property="user.userID" readonly="true" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">登 录 名</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_UserBean" property="user.loginName" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">密码</td> 
        <td class="tdBody"><html:password styleClass="ipt_text" name="S_UserBean" property="user.password" size="30" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">二级验证密码</td> 
        <td class="tdBody"><html:password styleClass="ipt_text" name="S_UserBean" property="user.validatePassword" size="30" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">姓名</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_UserBean" property="user.userName" size="20" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">所属从业机构</td> 
        <td class="tdBody"><html:hidden name="S_UserBean" property="user.organID"/>
             <html:text styleClass="ipt_read" readonly="true" size="30" name="S_UserBean" property="user.organName" /></td> 
      </tr>
      <tr>
        <td class="tdHeader">从业人员</td> 
        <td class="tdBody"><html:hidden name="S_UserBean" property="user.empID" />
                           <html:text styleClass="ipt_read" readonly="true" size="20" name="S_UserBean" property="user.empName" /></td> 
      </tr>
      <tr>
        <td class="tdHeader" width="100">角色</td> 
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
          <input type="button" class="button" value=" <%=actName%> " onclick="exec('<%=action%>');">&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="button" class="button" value=" 返 回 " onclick="location='S_User.y?c_organID='+d.c_organID.value;">
        </td> 
      </tr>
    </table>
      
    </div>
    </form>

    <script language="javascript">
    <!--
      function select_organ(id,name){
        var temp = window.showModalDialog('../xml/XMLSelectOrgan.y','','dialogWidth:1000px;dialogHeight:550px;');
        if(temp!=null){
          var i = 0;
          d(id).value = temp[i++];
          d(name).value = temp[i++];
          temp[i++];
          d("user.areaID").value = temp[i++];
        }
      }
      function exec(a,id){
        var f = document.MainForm;
        if(!eval(a+"Check(f)")) return false;
        f.action = "S_User.y?cmd="+a;
        f.submit();
      }
      function addCheck(f){
        if( checkUserNameInput(f["user.loginName"], 100, true, "登录名")
         && checkStrInput(f["user.userName"], 100, true, "帐户名字")
         && checkStrInput(f["user.roleID"], 100, true, "角色")
         && checkIntInput(f["user.state"], 100, true, "帐户状态")
         && confirm('确定要添加[' + f["user.loginName"].value + ']吗？')
         ) return true;
        return false;
      }
      function editCheck(f){
        if( checkSelect(f["user.userID"], "帐户")
         && checkStrInput(f["user.userName"], 100, true, "帐户名字")
         && checkStrInput(f["user.password"], 100, true, "密码")
         && checkStrInput(f["user.roleID"], 100, true, "角色")
         && checkIntInput(f["user.state"], 100, true, "帐户状态")
         && confirm('确定要修改[' + f["user.userID"].value + ':' + f["user.loginName"].value + ']吗？')
         ) return true;
        return false;
      }
      function init(){
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
