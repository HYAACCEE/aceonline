<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.common.ComBeanI_DataTableType" %>
<%@ include file="/common/IncludeTop_s.jsp" %>
<%
BizAResult o = (BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE);

String tmp = HIUtil.getParameter(request, "itemNames", null);
String callback = HIUtil.getParameter(request, "callback", "");
int itemCount = 0;
String[] itemNames = {"","",""};
if(!HIUtil.isEmpty(tmp)){
    String[] ss = tmp.split(Constants.SPLITER);
    itemCount = ss.length;
    if(itemCount>0) itemNames[0] = ss[0];
    if(itemCount>1) itemNames[1] = ss[1];
    if(itemCount>2) itemNames[2] = ss[2];
}

String subTitle = "";
int parentID = HIUtil.getParameter(request, "parentID", -1);
if(parentID > 0) subTitle = " - " + ComBeanI_DataTableType.getText(parentID);
int relationID = HIUtil.getParameter(request, "relationID", -1);
if(relationID > 0) subTitle = " - 关联表";
%>
  <script>     
     $(function(){
      $('#tt2').tree({
        checkbox: false,
        url: '../xml/XMLDataTableTree.y?cmd=getTreeData&relationID=<%=relationID%>&parentID=<%=parentID%>',
        onClick:function(node){
          $(this).tree('toggle', node.target);
          if(<%=itemCount%> > 0){
	          var ss = node.rowid.split("_");
	          if(ss[1] && ss[0]=='1'){
	             //alert('you dbclick '+node.+' '+node.text);
	             if(parent && parent.openBox){
	               <% if(callback.length()>0){ %>
	                 eval("parent.<%=callback%>('"+ss[1]+"','"+node.text+"','"+ss[1] + " - " + node.text+"')");
	               <% }else if(itemCount>0){ %>

	                 if(<%=itemCount%>>0 && parent.d("<%=itemNames[0]%>")) parent.d("<%=itemNames[0]%>").value = ss[1];
	                 if(<%=itemCount%>>1 && parent.d("<%=itemNames[1]%>")) parent.d("<%=itemNames[1]%>").value = node.text;
	                 if(<%=itemCount%>>2 && parent.d("<%=itemNames[2]%>")) parent.d("<%=itemNames[2]%>").value = ss[1] + " - " + node.text;
	
		               parent.closeBox();
                 <% } %>
	             }else{
                 window.returnValue = new Array(ss[1],node.text, ss[1]+" - "+node.text);
	               window.close();
	             }
	          }
	        }
        },
        onBeforeLoad:function(row,param){
          if (row){
            var ss = row.rowid.split("_");
            $(this).tree('options').url = '../xml/XMLDataTableTree.y?cmd=getTreeData&relationID=<%=relationID%>&parentID='+ss[1];
          } else {
            $(this).tree('options').url = '../xml/XMLDataTableTree.y?cmd=getTreeData&relationID=<%=relationID%>&parentID=<%=parentID%>';
          }
        },
        onContextMenu: function(e, node){
          e.preventDefault();
          $('#tt2').tree('select', node.target);
        }
      });
    });
    
  </script>

<body class="treebody" onContextMenu="return false">

<div class="dt_header">【数据类别<%=subTitle%>】</div>
<br><ul id="div_tree"></ul>

  <ul id="tt2"></ul>
  
<%@ include file="/common/IncludeBottom.jsp" %>