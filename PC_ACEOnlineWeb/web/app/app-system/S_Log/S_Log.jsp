<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ include file="/common/IncludeTop.jsp" %>

<!--script language=javascript>setTitle("超级管理 - 日志管理 - 系统日志");</script-->
<form name="MainForm" action="/" method="POST">
<html:hidden name="S_LogBean" property="id" />
<input type=hidden name="LM" />

<div id="db_main">
<table width="100%" cellSpacing=1 cellPadding=0><tr><td class="d_th">
  <input type="radio" class="radio" name="logType" id="i_log_t" onclick="logTypeController('T')" />
  <label for="i_log_t">全局日志</label>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" class="radio" name="logType" id="i_log_m" onclick="logTypeController('M')" />
  <label for="i_log_m">在线日志</label>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" class="radio" name="logType" id="i_log_b" onclick="logTypeController('B')" />
  <label for="i_log_b">业务日志</label>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" class="radio" name="logType" id="i_log_s" onclick="logTypeController('S')" />
  <label for="i_log_s">系统日志</label>
  </td></tr>
</table>
<table class=tbBorder cellSpacing=1>
  <tr>               
    <td class="tdHeader" width="80">开始时间:</td> 
    <td class="tdBody di_date">
      <html:text styleClass="ipt_text easyui-datebox" name="S_LogBean" property="c_startTime" size="10" maxlength="15" />
    </td> 
    <td class="tdHeader">结束时间:</td>    
    <td class="tdBody di_date">
      <html:text styleClass="ipt_text easyui-datebox" name="S_LogBean" property="c_endTime" size="10" maxlength="15" />
    </td> 
    <td class="tdHeader">日志类型:</td> 
    <td class="tdBody"><html:select styleClass="sel_text" name="S_LogBean" property="c_logType" style="width:120px;">
                       <html:optionsCollection name="S_LogBean" property="logTypeList" /></html:select></td> 
    <td class="tdHeader">关键字:</td> 
    <td class="tdBody"><html:text styleClass="ipt_text" name="S_LogBean" property="c_keyword" size="15" /></td> 
    <td class="tdHeader" colspan="2">
      <input type="button" class="button" value=" 查询 " onclick="query(this);">&nbsp;&nbsp;
      <logic:equal name="S_LogBean" property="superAdmin" value="true">
      <input type="button" class="button" value=" 按条件删除 " onclick="dels();">
      </logic:equal>
    </td> 
  </tr>
</table>

<div id="list_div" align="center"></div>    

</div>

</form>

<script language="javascript">
<!--
  function logTypeController(v){
    d.LM.value=v;
    page_redirect();
  }
  function selectAll(v){ 	
  	d("chb_all").checked = v;
    if(!d("listradio")){
      d("chb_all").checked = false;
      return;
    }
    if(d("listradio").value){
      var obj = d("listradio");
      if(obj.checked != v){
        obj.checked = v;
        selectControler(obj);
      }
    }else{
      for(var i=0; i<d("listradio").length; i++){
       var obj = d("listradio")[i];
       if(obj.checked != v){
         obj.checked = v;
         selectControler(obj);
       }
     }
    }
  }
  function selectControler(obj){
  	var tmp = d.id.value;
    var no = obj.value;
    if(obj.checked){
      tmp += "_" + no + "_";
    }else{
      d("chb_all").checked = false;
      tmp = eval("tmp.replace(/\_" + no + "_/g,\"\")");
    }
    d.id.value = tmp;
  }    
  function dels(){
    checkAdminPass('确定要删除 ['+d.c_startTime.value+'] 至 ['+d.c_endTime.value+'] 的日志吗？', function(){
        ajax("S_Log.y?cmd=dels", { "c_startTime":d.c_startTime.value,"c_endTime":d.c_endTime.value,"c_keyword":d.c_keyword.value }, function(html){
                   setMessage(html);
                   page_redirect();
        });
    });
  }
  function query(btn){
    var f = document.MainForm;
    if(!queryCheck(f)) return false;        
    page_redirect();
  }
  function queryCheck(f){
    if( checkStrInput(d.c_startTime, 100, true, "开始时间")
     && checkStrInput(d.c_endTime, 100, true, "结束时间")
     && checkStrInput(d.c_keyword, 50, false, "关键字")
     && checkStrInput(d.c_logType, 50, false, "日志类型")
      ) return true;
    return false;
  }
  function page_redirect(page,pageKey){
    var dx = new DynaXmlHttp();
    dx.setAction("S_Log.y?cmd=query"+d.LM.value);
    dx.addParam("c_startTime", d.c_startTime.value);
    dx.addParam("c_endTime", d.c_endTime.value);
    dx.addParam("c_keyword", d.c_keyword.value);
    dx.addParam("c_logType", d.c_logType.value);
    load(dx,true,-1,true,page,pageKey);
  }
  
  function init(){
    if(d("logType")[0]) d("logType")[0].click();
  }
-->
</script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
