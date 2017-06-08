<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.gs.db.database.BizAResult" %>
<%@ include file="/common/IncludeTop_s.jsp" %>
<%
BizAResult o = (BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_RESULT_HTML);
%>

<% if(o!=null && !HIUtil.isEmpty(o.getInfo())){ %>
  <script>
    var edit_node;
    $(function(){
      $('#div_tree').datagrid({
<%
  out.print(o.getInfo());
%>
    });
    
    function focusNode(){
      var node = $('#div_tree').datagrid('getSelected');
      if(node){
        var fields = $('#div_tree').datagrid("getColumnFields", node.rowid);
        //alert(node.rowid+" : "+fields);
        for(var i=0;i<fields.length;i++){
          if(parent.d('ao'+d.pageTab.value+'.'+fields[i])) parent.d('ao'+d.pageTab.value+'.'+fields[i]).value = eval("node."+fields[i]);
        }
      }
    }
    function editNode(node){
      cancelNode();
      if (node){
        $('#div_tree').datagrid('beginEdit', node.rowid);
        edit_node = node;
      }
    }
    function saveNode(node){
      if (node){
        $('#div_tree').datagrid('endEdit',node.rowid);
        edit_node = null;
        confirmMsg('您需要保存数据吗？', function(){
          var dx = new DynaXmlHttp();
          var fields = $('#div_tree').datagrid("getColumnFields", node.rowid);
          //alert(node.rowid+" : "+fields);
          for(var i=0;i<fields.length;i++){
            dx.addParam('ao.'+fields[i], eval("node."+fields[i]));
          }
          dx.setAction("../"+d.methodName.value+".y?cmd=edit");
          dx.setXmlHttpObj(createXmlHttp());
          if(dx.send()){
            parent.setMessage(dx.getResponseText());
          }
        });
      }
    }
    function removeNode(){
      var node = $('#div_tree').datagrid('getSelected');
      if (node){
        $('#div_tree').datagrid('remove', node.rowid);
      }
    }
    function cancelNode(){
      var node = edit_node;
      if (node){
        $('#div_tree').datagrid('cancelEdit',node.rowid);
        //setDisplay(d("div_e_"+node.code), true);
        edit_node = null;
      }
    }

    function reload(){
      $('#div_tree').datagrid('reload');
    }
    function unSelect(){
      $('#div_tree').datagrid('unselectAll');
    }
   
    function add(){
      if(parent.add){
        var node = $('#div_tree').datagrid('getSelected');
        parent.add(node);
      }else{
        showWin("../"+d.methodName.value+".y?cmd=addPage&pageTab="+d.pageTab.value);
      }
    }
    function edit(){
      var node = $('#div_tree').datagrid('getSelected');
      if (node){
        if(parent.edit) parent.edit();
        else showWin("../"+d.methodName.value+".y?cmd=editPage&pageTab="+d.pageTab.value+"&id="+node.rowid);
      }else{
        parent.setError("请选择数据");
      }
    }
    function remove(){
      var node = $('#div_tree').datagrid('getSelected');
      if (node){
        checkAdminPass('确定要删除此条数据[ID='+node.keyid+']吗？', function(){
          if(node.rowid){
	          var dx = new DynaXmlHttp();
	          var fields = $('#div_tree').datagrid("getColumnFields", node.rowid);
	          for(var i=0;i<fields.length;i++){
	            dx.addParam('ao'+d.pageTab.value+'.'+fields[i], eval("node."+fields[i]));
	          }
	          dx.setAction("../"+d.methodName.value+".y?cmd=del&pageTab="+d.pageTab.value);
	          dx.setXmlHttpObj(createXmlHttp());
	          if(dx.send()){
	            parent.setMessage(dx.getResponseText());
              reload();
	          }
          }
        });
      }
    }
    function copy(){
      var node = $('#div_tree').datagrid('getSelected');
      if (node){
        confirmAction('确定要复制添加数据[ID='+node.keyid+']吗？', function(){
          if(node.rowid){
            var dx = new DynaXmlHttp();
            var fields = $('#div_tree').datagrid("getColumnFields", node.rowid);
            for(var i=0;i<fields.length;i++){
              dx.addParam('ao'+d.pageTab.value+'.'+fields[i], eval("node."+fields[i]));
            }
            dx.setAction("../"+d.methodName.value+".y?cmd=copy&pageTab="+d.pageTab.value);
            dx.setXmlHttpObj(createXmlHttp());
            if(dx.send()){
              parent.setMessage(dx.getResponseText());
              reload();
            }
          }
        });
      };
    }
    function out(){
      var f = document.MainForm;
      OpenWin('',0,0,'win_out')
      f.action = "../"+d.methodName.value+".y?cmd=out&pageTab="+d.pageTab.value;
      f.target = "win_out";
      f.submit();
    }
  </script>
<% } %>
</head>
<body onContextMenu="return true" style="margin:0px auto;">

<form name="MainForm" method="post">
<input type=hidden name="pageTab" value="<%=HIUtil.getAttribute(request, "pageTab", "")%>">
<input type=hidden name="methodName" value="<%=HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_METHODNAME, "")%>">
</form>

  <table id="div_tree"></table>
  
  <div id="mm" class="easyui-menu" style="width:120px;display:none;">
  <div onclick="add()"><img src="../doc/script/jquery-easyui-1.2.3/icons/edit_add.png" title="新增数据">&nbsp;&nbsp;新增数据</div>
  <div onclick="edit()"><img src="../doc/script/jquery-easyui-1.2.3/icons/pencil.png" title="编辑数据">&nbsp;&nbsp;编辑数据</div>
  <div onclick="remove()"><img src="../doc/script/jquery-easyui-1.2.3/icons/edit_remove.png" title="删除数据">&nbsp;&nbsp;删除数据</div>
  <div onclick="unSelect()"><img src="../doc/script/jquery-easyui-1.2.3/icons/unselect.png" title="取消选中">&nbsp;&nbsp;取消选中</div>
  </div>

  
</body>
</html>