<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants,com.svv.dms.web.util.HIUtil,com.gs.db.database.BizAResult" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script language="javascript" src="../doc/script/DynaXmlHttp.js"></script>
  <link rel="stylesheet" type="text/css" href="../doc/script/jquery-easyui-1.2.3/easyui.css">
  <link rel="stylesheet" type="text/css" href="../doc/script/jquery-easyui-1.2.3/icon.css">
  <script type="text/javascript" src="../doc/script/jquery-easyui-1.2.3/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="../doc/script/jquery-easyui-1.2.3/jquery.easyui.min.js"></script>

  <script>  
    $(function(){
      $('#div_tree').treegrid({
        title:'数据应用字典',
        iconCls:'icon-save',
        width:1000,
        height:600,
        nowrap: false,
        rownumbers: true,
        animate:true,
        collapsible:true,
        url:'../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=1',
        idField:'code',
        treeField:'className',
        frozenColumns:[[
                  {title:'ID',field:'code',width:80,
                    formatter:function(value){
                      return '<span style="color:red">'+value+'</span>';
                    }
                  }
        ]],
        columns:[[
          {field:'className',title:'中文名称',width:540},
          {field:'classNameEn',title:'英文标识',width:180,rowspan:2},
          {field:'typeLevel',title:'等级',width:50,rowspan:2},
          {field:'childNum',title:'子节点数目',width:80,rowspan:2}
        ]],
        onBeforeLoad:function(row,param){
          if (row){
            var ss = row.rowid.split("_");
            $(this).treegrid('options').url = '../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=1&parentID='+ss[1];
          } else {
            $(this).treegrid('options').url = '../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=1';
          }
        },
        onContextMenu: function(e,row){
          e.preventDefault();
          $(this).treegrid('unselectAll');
          $(this).treegrid('select', row.code);
          $('#mm').menu('show', {
            left: e.pageX,
            top: e.pageY
          });
        }
      });
    });
  
  
  
    var edit_node;
    function editNode(obj,dataid,code){
      cancelNode();
      var node = $('#ttlist').treegrid('getSelected');
      if (node && (!code || code==node.code)){
        $('#ttlist').treegrid('beginEdit',node.rowid);
        //setDisplay(d("div_e_"+node.code), false);
        edit_node = node;
      }
    }
    function saveNode(){
      var node = edit_node;
      if (node){
        if(confirm('确定要提交吗？')){
          $('#ttlist').treegrid('endEdit',node.rowid);
          edit_node = null;
          
          var dx = new DynaXmlHttp();
          var fields = $('#ttlist').datagrid("getColumnFields", node.rowid);
          //alert(node.code+" : "+fields);
          for(var i=0;i<fields.length;i++){
            dx.addParam(fields[i], eval("node."+fields[i]));
          }
          dx.setAction(d.methodName.value+".y?cmd=add");
          dx.setXmlHttpObj(createXmlHttp());
          dx.send();
        }
      }
    }
    function cancelNode(){
      var node = edit_node;
      if (node){
        $('#ttlist').treegrid('cancelEdit',node.rowid);
        //setDisplay(d("div_e_"+node.code), true);
        edit_node = null;
      }
    }
    function delNode(obj,dataid,code){
      cancelNode();
      var node = $('#ttlist').treegrid('getSelected');
      if (node && (!code || code==node.code)){
        if(confirm('确定要删除此条数据[id='+node.code+']吗？')){
          $('#ttlist').treegrid('remove', node.rowid);
          
          if(node.dataid > 0){
            ajax(d.methodName.value+'.y?cmd=del', {"dataid":node.dataid}, function(html){
               parent.setMessage(html);
            });
          }
        }
      };
    }
    function addPage(){
      showWin("../biz/"+d.methodName.value+".y?cmd=addPage");
    }
  </script>
</head>
<body>
<form name="MainForm" method="post">
<input type=hidden name="methodName" value="<%=HIUtil.getAttribute(request, "methodName", "")%>">

<% if(HIUtil.getParameter(request, "editFlag", 0)==1){ %>
  <div style="margin:10px 0">
    <img src="../doc/script/jquery-easyui-1.2.3/icons/edit_add.png" onclick="addPage()" title="新增一条数据">
    <img src="../doc/script/jquery-easyui-1.2.3/icons/edit_remove.png" onclick="delNode()" title="删除一条数据">
    <img src="../doc/script/jquery-easyui-1.2.3/icons/pencil.png" onclick="editNode()" title="编辑数据">
    <img src="../doc/script/jquery-easyui-1.2.3/icons/filesave.png" onclick="saveNode()" title="保存数据">
    <img src="../doc/script/jquery-easyui-1.2.3/icons/undo.png" onclick="cancelNode()" title="取消编辑">
  </div>
<% } %>


  <table id="div_tree"></table>
  
  <div id="mm" class="easyui-menu" style="width:120px;">
    <div onclick="append()">Append</div>
    <div onclick="remove()">Remove</div>
  </div>
</form>
</body>
</html>