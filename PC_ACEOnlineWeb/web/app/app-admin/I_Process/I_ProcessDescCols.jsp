<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_ProcessDescBean" property="po.tableID" />
    <input type=hidden name=cols value="<%=HIUtil.getParameter(request,"cols","") %>">

    <div id="db_main">    

    <div id="list_div" align="center"></div>
    
    <table class=tbBorder cellSpacing=0>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" value=" 确定 " onclick="commit();">
        </td> 
      </tr>
    </table>
    
    </div>
    </form>
    
    <script language="javascript">
    <!--
      function changeFlag(colid, v){
         var cols = d.cols.value;
         var s = ","+colid+":";
         var pos = cols.indexOf(s);
         if(pos<0){
           if(v>0) cols += s + v;
         }else{
	         cols = cols.substring(0, pos+s.length)+v+cols.substring(pos+s.length+1);
	         if(v==0) cols = cols.replace(s+v, '');
	       }
	       d.cols.value = cols;
      }
      function commit(){
        parent.d("ao.processCols").value = d.cols.value;
        parent.closeBox();
      }
      function page_redirect(){
        var dx = new DynaXmlHttp();
        dx.setAction("I_ProcessDesc.y?cmd=queryCols");
        dx.addParam("po.tableID", d("po.tableID").value);
        dx.addParam("ao.processCols", d.cols.value);
        load(dx,true);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
    
<%@ include file="/common/IncludeBottom.jsp" %>