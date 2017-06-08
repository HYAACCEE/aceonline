<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.common.ComBeanI_DataParamType" %>
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

String subTitle = "";
int allFlag = HIUtil.getParameter(request, "allFlag", 0);
int parentID = HIUtil.getParameter(request, "parentID", -1);
int sortByName = HIUtil.getParameter(request, "sortByName", 0);
System.out.println("sortByName================================"+sortByName);
if(parentID > 0) subTitle = " - " + ComBeanI_DataParamType.getText(parentID);
%>
  <script>
     $(function(){
      $('#div_tree').tree({
        checkbox: false,
        url: '../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=<%=allFlag%>&parentID=<%=parentID%>',
        onClick:function(node){
          $(this).tree('toggle', node.target);
          if(<%=itemCount%> > 0){
            var ss = node.rowid.split("_");
            if(ss[2] && ss[0]=='1'){
	            //alert('you dbclick '+node.rowid+' '+node.text);
	            var memo = '数据应用字典：' + ss[2] + " - " + node.text;
	            if(parent && parent.openBox){
                  if(<%=itemCount%>>0 && parent.d("<%=itemNames[0]%>")) parent.d("<%=itemNames[0]%>").value = ss[1];
                  if(<%=itemCount%>>1 && parent.d("<%=itemNames[1]%>")) parent.d("<%=itemNames[1]%>").value = node.text;
                  if(<%=itemCount%>>2 && parent.d("<%=itemNames[2]%>")) parent.d("<%=itemNames[2]%>").value = memo;
	                parent.closeBox();
	            }else{
	              window.returnValue = new Array(ss[1],node.text,memo);
	              window.close();
	            }
	          }
          }
        },
        onBeforeLoad:function(row,param){
          if (row){
            var ss = row.rowid.split("_");
            $(this).tree('options').url = '../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=<%=allFlag%>&parentID='+ss[1]+'&sortByName=<%=sortByName%>';
          } else {
            $(this).tree('options').url = '../xml/XMLDataParamTypeTree.y?cmd=getTreeData&allFlag=<%=allFlag%>&parentID=<%=parentID%>';
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

<div class="dt_header">【数据应用字典<%=subTitle%>】</div>
<br><ul id="div_tree"></ul>


<%@ include file="/common/IncludeBottom.jsp" %>