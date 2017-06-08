<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_ProcessDescBean" property="po.tableID" />
    <input type=text size=60 name=conditions value="<%=new String(HIUtil.getParameter(request,"conditions","").getBytes("ISO-8859-1"),"UTF-8") %>">

    <div id="db_main">
    <table class=tbBorder cellSpacing=0>
      <tr>
        <td class="tdHeaderR" colspan="2">
          <input type="button" class="button" value=" 确定 " onclick="commit();">
        </td> 
      </tr>
    </table>

    <div id="list_div" align="center"></div>
    
    <hr style="BORDER-BOTTOM-STYLE: dotted; BORDER-LEFT-STYLE: dotted; BORDER-RIGHT-STYLE: dotted; BORDER-TOP-STYLE: dotted" color=#cccccc size=1>
    <table class=tbBorder cellSpacing=0>
      <tr>
        <td class="tdHeaderL">
          <html:select styleClass="sel_text" name="I_ProcessDescBean" property="condition_whc1">
                           <html:optionsCollection name="I_ProcessDescBean" property="tableColList" /></html:select>
          <select name="whc1_and"><option value="=">等于</option>
                  <option value="<>">不等于</option>
                  <option value=">">大于</option>
                  <option value="<">小于</option>
          </select>
          <input type="text" name="whc1_value" size=10>
        </td> 
      </tr>
      <tr>
        <td class="tdHeader">
          <select name="cand1" onchange="setDisplay(d.condition_2, this.value=='')"><option value=""></option>
                  <option value="and">并且</option>
                  <option value="or">或者</option>
          </select>
        </td> 
      </tr>
      <tr id="condition_2" style="display:none">
        <td class="tdHeaderL">
          <html:select styleClass="sel_text" name="I_ProcessDescBean" property="condition_whc2">
                           <html:optionsCollection name="I_ProcessDescBean" property="tableColList" /></html:select>
          <select name="whc2_and"><option value="=">等于</option>
                  <option value="<>">不等于</option>
                  <option value=">">大于</option>
                  <option value="<">小于</option>
          </select>
          <input type="text" name="whc2_value" size=10>
        </td> 
      </tr>
      <tr>
        <td class="tdHeaderR">
          <select name="cand2" onchange="setDisplay(d.condition_3, this.value=='')"><option value=""></option>
                  <option value="and">并且</option>
                  <option value="or">或者</option>
          </select>
        </td> 
      </tr>
      <tr id="condition_3" style="display:none">
        <td class="tdHeaderL">
          <html:select styleClass="sel_text" name="I_ProcessDescBean" property="condition_whc3">
                           <html:optionsCollection name="I_ProcessDescBean" property="tableColList" /></html:select>
          <select name="whc3_and"><option value="=">等于</option>
                  <option value="<>">不等于</option>
                  <option value=">">大于</option>
                  <option value="<">小于</option>
          </select>
          <input type="text" name="whc3_value" size=10>
        </td> 
      </tr>
      <tr>
        <td class="tdHeaderL">转到步骤
          <input type="text" name="nextseq" size=10>
        </td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value=" 添加 " onclick="add();">
        </td> 
      </tr>
    </table>
    
    </div>
    </form>
    
    <script language="javascript">
    <!--
      function add(){
    	  var s = "("+d("condition_whc1").value+d("whc1_and").value+d("whc1_value").value+")";
    	  var sm = "("+d("condition_whc1").options[d("condition_whc1").selectedIndex].text+d("whc1_and").options[d("whc1_and").selectedIndex].text+d("whc1_value").value+")";
    	  if(d("cand1").value != ""){
          s += d("cand1").value;
    		  s += "("+d("condition_whc2").value+d("whc2_and").value+d("whc2_value").value+")";
          sm += d("cand1").options[d("cand1").selectedIndex].text;
          sm += "("+d("condition_whc2").options[d("condition_whc2").selectedIndex].text+d("whc2_and").options[d("whc2_and").selectedIndex].text+d("whc2_value").value+")";
    	  }
        if(d("cand2").value != ""){
          s += d("cand2").value;
          s += "("+d("condition_whc3").value+d("whc3_and").value+d("whc3_value").value+")";
          sm += d("cand2").options[d("cand2").selectedIndex].text;
          sm += "("+d("condition_whc3").options[d("condition_whc3").selectedIndex].text+d("whc3_and").options[d("whc3_and").selectedIndex].text+d("whc3_value").value+")";
        }
        s += "to"+d("nextseq").value;
        sm += " 转向步骤"+d("nextseq").value;
        d.conditions.value += ","+s+"|"+sm;
        page_redirect();
      }
      function commit(){
        parent.d("ao.conditions").value = d.conditions.value;
        parent.closeBox();
      }
      function del(i){
    	  d.conditions.value = d.conditions.value.replace(","+d("hhh"+i).value, "");
    	  page_redirect();
      }
      function page_redirect(){
        var s = "";
    	  if(d.conditions && d.conditions.value != ""){
          var ss = d.conditions.value.split(",");
          for(var i=0;i<ss.length;i++){
            if(ss[i] != ""){
              var sss = ss[i].split("|");
              s += "<div id=ddd"+i+"><input type=hidden name=hhh"+i+" value=\""+ss[i]+"\">" + sss[1]+" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=# onclick=del("+i+")>删</a><div>";
            }
          }
        }
    	  d.list_div.innerHTML = s;
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
    
<%@ include file="/common/IncludeBottom.jsp" %>