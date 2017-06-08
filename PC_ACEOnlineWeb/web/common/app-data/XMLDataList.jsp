<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.gs.db.database.BizAResult" %>
<%@ include file="/common/IncludeTop_s.jsp" %>
<%
BizAResult o = (BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_RESULT_HTML);
int editFlag = HIUtil.getParameter(request, "editFlag", 0);
%>

<% if(o!=null && !HIUtil.isEmpty(o.getInfo())){ %>
  <script>
    $(function(){
      $('#div_tree').datagrid({
<%
  out.print(o.getInfo());
%>    

    });

    function reload(){
      $('#div_tree').datagrid('reload');
    }
<% if(editFlag==1){ %>   
    function add(){
      //var result = OpenWin("../"+d.methodName.value+"_add.y?cmd=addPage&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, 800, 0);
      //var result = showDialog("../"+d.methodName.value+"_add.y?cmd=addPage&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, null, 800, 0);
      //if(result){
      //   setMessage(result);
      //   reload();
      //}

      var result = parent.showBox("新增", "../"+d.methodName.value+"_add.y?cmd=addPage&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, 800, 0,
      function(html){
           setMessage(html);
           reload();
        });
    }
    function edit(dataid){
      if(!dataid){
        var node = $('#div_tree').datagrid('getSelected');
        if(node) dataid = node.dataid;
      }
      if (dataid){
        if(dataid=='') return add();
        //var result = OpenWin("../"+d.methodName.value+"_edit.y?cmd=editPage&ao.dataid="+dataid+"&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, 800, 0);
        //var result = showDialog("../"+d.methodName.value+"_edit.y?cmd=editPage&ao.dataid="+dataid+"&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, null, 800, 0);
        if(1==0 && result){
           setMessage(result);
           reload();
        }

        var result = parent.showBox("编辑", "../"+d.methodName.value+"_edit.y?cmd=editPage&ao.dataid="+dataid+"&ao.tableID="+d("ao.tableID").value+"&ao.parentDataid="+d("ao.parentDataid").value+"&ao.dataSctLevel="+d("ao.dataSctLevel").value+"&formationID="+d("formationID").value, 800, 0,
        function(html){
           setMessage(html);
           reload();
        });
      }else{
        parent.setError("请选择数据");
      }
    }
    function remove(dataid){
      var ids = [];
      var rows = $('#div_tree').datagrid('getSelections');
      for(var i=0;i<rows.length;i++){
        ids.push(rows[i].dataid);
      }
      if (rows.length > 0){
        var methodName = d.methodName.value;
        if(methodName=='biz/B_Formation') methodName = 'biz/B_Formation_add';
        checkAdminPass('确定要删除 '+rows.length+' 条数据[数据ID:'+ids.join(',')+']吗？', function(){
            ajax("../"+methodName+'.y?cmd=delData', {"dataids":ids.join(','), "ao.tableID":d("ao.tableID").value}, function(html){
                parent.setMessage(html);
                reload();
            });
        });
      }else{
        parent.setError("请选择数据");
      }
    }
    function copy(dataid){
      if(!dataid){
        var node = $('#div_tree').datagrid('getSelected');
        if(node) dataid = node.dataid;
      }
      if (dataid){
        confirmAction('确定要复制添加数据[数据ID='+dataid+']吗？', function(){
            if(dataid > 0){
              ajax("../"+d.methodName.value+'.y?cmd=copyData', {"ao.dataid":dataid, "ao.tableID":d("ao.tableID").value}, function(html){
                  parent.setMessage(html);
                  reload();
              });
            }
        });
      }else{
        parent.setError("请选择数据");
      }
    }
    function his(dataid){
      if(!dataid){
        var node = $('#div_tree').datagrid('getSelected');
        if(node) dataid = node.dataid;
      }
      if (dataid){
        //showDialog("../"+d.methodName.value+"_his.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid, null, 1000, 0);
        parent.showBox("历史", "../"+d.methodName.value+"_his.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid, 800, 0);
      }else{
        parent.setError("请选择数据");
      }
    }
<% } %>
    function showAttachFiles(dataid,afp){
      //var result = showDialog("../xml/XMLDataAttachFile.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp, null, 1000, 0);
      //if(result){
      //   reload();
      //}
      var result = parent.showBox("附件", "../xml/XMLDataAttachFile.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp, 800, 0,
      function(html){
         reload();
      });
    }
    function showResources(dataid,afp){
      //var result = showDialog("../biz/B_DataResource.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp);
      //if(result){
      //   reload();
      //}
      var result = parent.showBox("数据来源", "../biz/B_DataResource.y?ao.tableID="+d("ao.tableID").value+"&ao.dataid="+dataid+"&afp="+afp, 800, 0,
      function(html){
         reload();
      });
    }
    function showChildTables(dataid,childTableID,childTableMemo,afp){
      if(!dataid){
        var node = $('#div_tree').datagrid('getSelected');
        if(node) dataid = node.dataid;
      }
      if (dataid){
        //var result = showDialog("../"+d.methodName.value+"Child.y?ao.tableID="+childTableID+"&ao.parentDataid="+dataid+"&afp="+afp);
        //if(result){
        //   reload();
        //}        
	      var result = parent.showBox(childTableMemo, "../"+d.methodName.value+"Child.y?ao.tableID="+childTableID+"&ao.parentDataid="+dataid+"&afp="+afp, 800, 0,
	      function(html){
	           reload();
        });        
      }else{
        parent.setError("请选择数据");
      }
    }
    function imt(){
      showBox("导入数据", "B_DataAdds.y?cmd=XMLDataAdds&ao.tableID="+d("ao.tableID").value, 500,300);
    }
    function out(){
      var f = document.MainForm;
      f.action = "../"+d.methodName.value+".y?cmd=out&ks="+d.query_sql.value;
      f.target = "_blank";
      f.submit();
    }
    function init(){
      if(!version_bizPubOtherFuns || version_bizPubOtherFuns!=1.13) alert('在线服务器有更新，请右键刷新!');
    }
  </script>
<% } %>

<script type="text/javascript" src="<%=DOCPATH%>spec/bizPubOtherFuns.js"></script>
<script type="text/javascript" src="<%=DOCPATH%>spec/bizDataForm.js"></script>

<table width=99% height=100% border=0 cellspacing=0 cellpadding=0><tr><td valign=top>
<form name="MainForm" method="post">
<input type=hidden name="CONTAINER">
<input type=hidden name="query_sql" value="<%=HIUtil.getAttribute(request, "QUERY_CONDITION_SQL", "")%>">
<input type=hidden name="editFlag" value="<%=editFlag%>">
<input type=hidden name="formationID" value="<%=HIUtil.getParameter(request, "formationID", "")%>">
<input type=hidden name="formationName" value="<%=HIUtil.getParameter(request, "formationName", "")%>">
<input type=hidden name="methodName" value="<%=HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_METHODPATH, "")%>">
<input type=hidden name="ao.tableID" value="<%=HIUtil.getParameter(request, "ao.tableID", 0)%>">
<input type=hidden name="ao.moduleID" value="<%=HIUtil.getParameter(request, "ao.moduleID", "")%>">
<input type=hidden name="ao.parentDataid" value="<%=HIUtil.getParameter(request, "ao.parentDataid", "")%>">
<input type=hidden name="ao.dataSctLevel" value="<%=HIUtil.getParameter(request, "ao.dataSctLevel", 0)%>">
</form>
  
  <table id="div_tree"></table>
  <iframe name="subwin_out" width=0 height=0 frameborder=0></iframe>
</td></tr></table>
<%@ include file="/common/IncludeBottom.jsp" %>