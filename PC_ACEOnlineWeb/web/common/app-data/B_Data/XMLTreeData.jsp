<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop_s.jsp" %>
<%
String tmp = HIUtil.getParameter(request, "itemNames", null);
int itemCount = 0;
String[] itemNames = {"","",""};
if(!HIUtil.isEmpty(tmp)){
    String[] ss = tmp.split(Constants.SPLITER);
    itemCount = ss.length;
    if(itemCount>0) itemNames[0] = ss[0];
    if(itemCount>1) itemNames[1] = ss[1];
}

%>

  <script>     
     $(function(){
      $('#div_tree').tree({
        checkbox: <bean:write name="XMLTreeDataBean" property="checkbox" />,
        url: '../xml/XMLTreeData.y?cmd=getTree&treeType=<bean:write name="XMLTreeDataBean" property="treeType" />',
        onClick:function(node){
          $(this).tree('toggle', node.target);
          if(<%=itemCount%> > 0){
              //alert('you dbclick '+node.rowid+' '+node.text);
              if(parent && parent.openBox){
                if(<%=itemCount%>>0 && parent.d("<%=itemNames[0]%>")) parent.d("<%=itemNames[0]%>").value = node.rowid;
                if(<%=itemCount%>>1 && parent.d("<%=itemNames[1]%>")) parent.d("<%=itemNames[1]%>").value = node.text;
                parent.closeBox();
              }else{
                window.returnValue = new Array(node.rowid, node.text, memo);
                window.close();
              }
          }
        },
        onBeforeLoad:function(row,param){
          if (row){
            var ss = row.rowid.split("_");
            $(this).tree('options').url = '../xml/XMLTreeData.y?cmd=getTree&treeType=<bean:write name="XMLTreeDataBean" property="treeType" />&parentID='+ss[1];
          } else {
            $(this).tree('options').url = '../xml/XMLTreeData.y?cmd=getTree&treeType=<bean:write name="XMLTreeDataBean" property="treeType" />';
          }
        },
        onContextMenu: function(e, node){
          e.preventDefault();
          $('#div_tree').tree('select', node.target);
        }
      });
    });
    
  </script>
</head>
<body class="treebody" onContextMenu="return false">
  <ul id="div_tree"></ul>
  
<%@ include file="/common/IncludeBottom.jsp" %>