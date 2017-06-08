<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle(" 帐户管理");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_UserBean" property="c_organID" />
    <html:hidden name="S_UserBean" property="user.userID" />
    <html:hidden name="S_UserBean" property="user.userName" />

    <div id="db_main">
    
    <div class="dt_header">【用户列表】
         <!--input type="button" class="button" value=" 添 加 新 用 户" onclick="go('addPage')"--></div>
    <div id="list_div" align="center"></div>
    
    
    </div>
    
    </form>

    <script language="javascript">
    <!--
      function valid(obj,id){
        showBox('设置帐户', '../system/S_UserStart.y?user.userID='+id, 600, 295)
      }
      function stop(obj,id){
        confirmAction('确定要停用此帐户吗？', function(){
            $.ajax({ url: '../system/S_UserStop.y?user.userID='+id,
                     type: "POST",
                     data: null,
                     success: function(html,textStatus,XMLHttpRequest){
                       page_redirect();
                       setMessage(html);
                     }
            });
         });
      }
      function go(cmd){
        location.href = "S_User.y?cmd="+cmd;
      }      
      function edit(obj,id){
        var f = document.MainForm;
        f["user.userID"].value = id;
        f.action = "S_User.y?cmd=editPage";
        f.submit();
      }      
      function del(obj,id,name){
        var f = document.MainForm;
        f["user.userID"].value = id;
        f["user.userName"].value = name;
        if(!delCheck(f)) return false;
        f.action = "S_User.y?cmd=del";
        f.submit();
      }      
      function delCheck(f){
        if(f["user.userID"].value==1){
          alert("您没有权限删除超级用户！");
          return false;
        }
        if(checkSelect(f.userID, "用户")
         && confirm('确定要删除[' + f["user.userID"].value + ':' + f("user.userName").value + ']吗？')
          ) return true;
        return false;
      }
      function page_redirect(page,pageKey){
        var dx = new DynaXmlHttp();
        dx.addParam("c_organID", d.c_organID.value);
        dx.setAction("S_User.y?cmd=query");
        load(dx,true,-1,true,page,pageKey);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
