<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("超级管理 - 系统监控");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="S_LogBean" property="id" />
    
    <div id="db_main">
    <table width="100%" height="100%" cellSpacing="1" cellPadding="0"><tr><td class="d_th">
     	 <input type="radio" class="radio" name="logType" checked="checked" id="i_log_s" value="0" onclick="query(this);"/><!--返回【system】 -->
     	 <label for="i_log_s">用户登入日志</label> &nbsp;&nbsp;&nbsp;&nbsp;
         <input type="radio" class="radio" name="logType" id="i_log_b" value="1" onclick="query(this);"/><!--返回【biz】 -->
         <label for="i_log_a">用户操作日志</label>&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="radio" class="radio" name="logType" id="i_log_t" value="2" onclick="query(this);" /><!--返回【data】 -->
         <label for="i_log_d">数据调用日志</label>     
         </td></tr>
    </table>
    
	<table class=tbBorder cellSpacing=1>
      <tr>               
      	<td class="tdHeader" width="80">用户名:</td> 
      	<td class="tdHeader" width="80"> 
      		<html:text styleClass="ipt_text" name="S_LogBean" property="c_UserName" size="15" />
      	</td>
        <td class="tdHeader" width="80">登入时间:</td> 
        <td class="tdBody di_date">
          <html:text styleClass="ipt_text easyui-datebox" name="S_LogBean" property="c_startTime" styleId="start_date" size="15" maxlength="15" />
        </td> 
        <td class="tdHeader">退出时间:</td>    
        <td class="tdBody di_date">
          <html:text styleClass="ipt_text easyui-datebox" name="S_LogBean" property="c_endTime" styleId="end_date" size="15" maxlength="15" />
      	</td>
      	<td class="tdHeader">
          <input type="button" class="button" value=" 查询 " onclick="query(this);">&nbsp;&nbsp;
        </td>
      </tr>
    </table>
    
    <!-- 中间显示部分 -->
    <div id="list_div" align="center"></div>
    
    </div>
    </div>
    </form>

    <script language="javascript">
    <!--
  	  	function selectAll(v){ 	
      	document.all("chb_all").checked = v;
        if(!document.all("listradio")){
          document.all("chb_all").checked = false;
          return;
        }
        if(document.all("listradio").value){
          var obj = document.all("listradio");
          alert("当前的值："+document.all("listradio").value);
          if(obj.checked != v){
            obj.checked = v;
            selectControler(obj);
          }
        }else{
          for(var i=0; i<document.all("listradio").length; i++){
	          var obj = document.all("listradio")[i];
	          alert("当前的值："+document.all("listradio").value);
	          if(obj.checked != v){
	            obj.checked = v;
	            selectControler(obj);
	          }
	        }
        }
      }
      /*拼接所有便签的Value和*/
      function selectControler(obj){
      	var tmp = document.all.id.value;
        var no = obj.value;
        if(obj.checked){
          tmp += "_" + no + "_";
        }else{
          document.all("chb_all").checked = false;
          tmp = eval("tmp.replace(/\_" + no + "_/g,\"\")");
        }
        document.all.id.value = tmp;
      }
      
      function query(btn){
        var f = document.MainForm;
        if(!queryCheck(f)) return false;        
        page_redirect();
      }
      function queryCheck(f){
        if( checkStrInput(d.c_UserName, 50, false, "用户名")
         && checkStrInput(d.c_startTime, 100, true, "开始时间")
         && checkStrInput(d.c_endTime, 100, true, "结束时间")
          ) return true;
        return false;
      }
      function page_redirect(page,pageKey){
        var f = document.MainForm;
        var radioValue = getRadioValue("logType");
        var dx = new DynaXmlHttp();
        dx.setAction("S_LogQuery.y?cmd=queryBlog");
        dx.addParam("logType", radioValue);
        dx.addParam("c_userName", d.c_UserName.value);
        dx.addParam("c_startTime", d.c_startTime.value);
        dx.addParam("c_endTime", d.c_endTime.value);
        load(dx,true,-1,true,page,pageKey);
      }
      function init(){
	      page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
