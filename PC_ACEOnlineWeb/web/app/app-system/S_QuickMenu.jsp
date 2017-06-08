<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("用户信息 - 个性设置");</script-->
    <form name="MainForm" action="/" method="POST">
        
    <div id="db_main"><div class="dt_left">
    
    <div class="dt_header">【快捷菜单列表】</div>
    <div id="list_div" align="center"></div>
    
    
    </div><div class="dt_right">

    <div class="dt_header">【快捷菜单管理】</div>
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader">选择菜单</td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="S_QuickMenuBean" property="qm.moduleID">
                  <html:optionsCollection name="S_QuickMenuBean" property="moduleList" /></html:select><br/></td> 
      </tr>      
      <tr>
        <td class="tdHeader">显示排序</td> 
        <td class="tdBody"><html:text styleClass="ipt_text" name="S_QuickMenuBean" property="qm.seq"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value=" 添加 " onclick="exec('add');">
    <br><br>
    <div align=left>
    【提示】：<br>
    * 最多添加五个快捷菜单。<br>
    * 更新后必须重新登录才生效。
    </div> 
        </td> 
      </tr>
    </table>
       
    </div></div>

    </form>

    <script language="javascript">
    <!--
      function exec(a){
        var f = document.MainForm;
        if(!eval(a+"Check(f)")) return false;
        f.action = "S_QuickMenu.y?cmd="+a;
        f.submit();
      }
      function addCheck(f){
        if( checkIntInput(f["qm.seq"], 100, true, "序号")
         && confirm('确定要添加吗？')
         ) return true;
        return false;
      }
      function del(obj,id,moduleName){
        confirmAction('确定要删除吗？', function(){
            ajax('S_QuickMenu.y?cmd=del', {"qm.id":id, "qm.moduleName":moduleName}, function(res){
                setMessage(res);
                page_redirect();
            })
        });
      }
      function page_redirect(page){
        var dx = new DynaXmlHttp();
        dx.setAction("S_QuickMenu.y?cmd=query");
        load(dx, true);
      }
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
