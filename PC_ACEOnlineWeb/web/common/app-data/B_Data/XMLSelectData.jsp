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
    if(itemCount>2) itemNames[2] = ss[2];
}

String tableID = HIUtil.getParameter(request, "ao.tableID", "-1");
%>

  <script>     
     $(function(){
      $('#div_tree').tree({
        checkbox: false,
        url: '../xml/XMLSelectData.y?cmd=getTreeData&ao.tableID=<%=tableID%>&c_keyword='+d.c_keyword.value,
        onClick:function(node){
          $(this).tree('toggle', node.target);
          if(<%=itemCount%> > 0){
              //alert('you dbclick '+node.rowid+' '+node.text);
              var memo = '<bean:write name="XMLSelectDataBean" property="ao.tableMemo" />：' + node.rowid + " - " + node.text;
              if(parent && parent.openBox){
                if(<%=itemCount%>>0 && parent.d("<%=itemNames[0]%>")) parent.d("<%=itemNames[0]%>").value = node.rowid;
                if(<%=itemCount%>>1 && parent.d("<%=itemNames[1]%>")) parent.d("<%=itemNames[1]%>").value = node.text;
                if(<%=itemCount%>>2 && parent.d("<%=itemNames[2]%>")) parent.d("<%=itemNames[2]%>").value = memo;
                parent.closeBox();
              }else{
                window.returnValue = new Array(node.rowid, node.text, memo);
                window.close();
              }
          }
        },
        onBeforeLoad:function(row,param){
          if (row){
          } else {
            $(this).tree('options').url = '../xml/XMLSelectData.y?cmd=getTreeData&ao.tableID=<%=tableID%>&c_keyword='+d.c_keyword.value;
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

  <!--h3>【<bean:write name="XMLSelectDataBean" property="ao.tableMemo" />】</h3-->
  <input type=text name=c_keyword onkeyup="$('#div_tree').tree('reload');">
  <ul id="div_tree"></ul>
  
<%@ include file="/common/IncludeBottom.jsp" %>