<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    <input type="hidden" name="ao.tableID" value="<%=HIUtil.getParameter(request, "ao.tableID", "-1")%>" >
    <input type="hidden" name="s" value="<%=HIUtil.getParameter(request, "s", "")%>">

    <div id="db_main">
    <div id="div_listdata" align="center" style="width:100%; overflow-y:auto; overflow-x:hidden;"></div>
    <br>
    <center>
    <input type="button" class="button" value="  确 定  " onclick="commit();">
    </center>
    </div>
    </form>

    <script language="javascript">
    <!--
      function commit(){
        var s = "";
        var colids = MainForm.sel_colid;
        for(var i=0; i<colids.length; i++){
          if(colids[i].checked){
            s += colids[i].value + ',';
          }
        }
        if(s.length>0) s = s.substring(0,s.length-1);
        parent.document.all("ao.extRelationSubCols").value = s;
        parent.closeBox();
      }
      function page_redirect(){
        var f = document.MainForm;
        ajax("I_DataTable.y?cmd=queryXMLCols", {"ao.tableID": f["ao.tableID"].value, "relationFlag":1, "s": f["s"].value, "scrollFlag": 0}, function(html){
            div_listdata.innerHTML = html;
        });
      }
      function init(){
        var iHeight = document.documentElement.clientHeight+document.documentElement.scrollTop*2;
        div_listdata.style.height = iHeight-70;
        page_redirect();
      }
    -->
    </script>
<%@ include file="/common/IncludeBottom.jsp" %>

