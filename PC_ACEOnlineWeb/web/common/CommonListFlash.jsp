<%@ page language="java" pageEncoding="UTF-8"%><%@ taglib uri="struts-logic" prefix="logic" %><%@ taglib uri="struts-bean" prefix="bean" %><%@ taglib uri="struts-html" prefix="html" %>
<%@ page import="com.svv.dms.web.Constants"%>
<%@ page import="com.svv.dms.web.util.TColumn"%>
<%@ page import="com.svv.dms.web.util.HIUtil" %>

<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" scope="request">
 <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="false">
   <font color="#ff0000"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/></font>
 </logic:equal>
 <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="true">
   <span style="display:none"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/></span>
  </logic:equal>
</logic:present>
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_EXCEPTION%>" scope="request">
    <font color="#ff0000">系统异常：<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_EXCEPTION%>" property="info"/></font>
</logic:present>


<input type=hidden name=focus_flag value=0>
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_OPTIONBAR%>" scope="request">
<%= HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_OPTIONBAR, "")%>
</logic:present>

<%
int pageShowFlag = Integer.parseInt(HIUtil.getParameter(request, "pageShow", "1"));
int scrollFlag = Integer.parseInt(HIUtil.getParameter(request, "scrollFlag", "1"));
Object[] objs = (Object[])request.getAttribute(Constants.REQUEST_ATTRIBUTE_LIST);
String countName = HIUtil.getParameter(request, "countName", "CurPageRows");
int count = (objs==null || objs.length==0) ? 0 : objs.length -2;
if(countName!=null) out.println("<input type=hidden name=\""+countName+"\" value=\""+count+"\">");
if(count==0){
  out.println("<br>无数据!<br><br>");
  return;
}
int height = Integer.parseInt(String.valueOf(objs[0]));
Object[] heads = (Object[])objs[1];

try{

String tableClass = "tbFixList";
int totalColumns = 0;
boolean colspanFlag = false;
if(heads != null){
  for(Object head: heads){
    TColumn t = (TColumn)head;
    if(t.getColspan()>1){
      colspanFlag = true;
      break;
    }
  }
}else{
  tableClass = "tbFixListNoHead";
}
%>

<% if(scrollFlag==1){ %>
<table bodyHeight="<%=height%>" class="<%=tableClass%>" bodyCSS="tblBody" headerCSS="tblHeader" cellspacing=0>
<% }else{ %>
<table class="tbBorder" cellspacing=0>
<% } %>

  <% if(heads != null){
      int addcols = 0;
      int columns = 0;
      totalColumns = ((Object[])objs[2]).length-1;
      
      if(colspanFlag){
		      out.println("<tr class=\"noline\">");
		      for(int c=0; c<totalColumns; c++) out.println("<td></td>");
		      out.println("</tr>");
		      out.println("<tr class=\"noline\">");
		      for(int c=0; c<totalColumns; c++) out.println("<td></td>");
		      out.println("</tr>");
		  }
   %>
   
  <tr>
  <%
  String headStr = "";
  for(int i=0; i<heads.length; i++){
    TColumn t = (TColumn)heads[i];
    columns += t.getColspan();
     
    if(HIUtil.isEmpty(t.getSortname())) headStr = t.getColname();
    else headStr = "<a href=# class=sort onclick=setOrderBy(this,'"+t.getSortname()+"')>"+t.getColname()+"</a>";
    
    if(columns>totalColumns){
      columns = t.getColspan()+addcols;
      out.println("</tr><tr>");
    }
    if(t.getRowspan()>1) addcols += 1;
  %>
    <td class="listHeader" align="<%=t.getAlign()%>" rowspan="<%=t.getRowspan()%>" colspan="<%=t.getColspan()%>"><%=headStr%></td> 
  <%
  }
  %>
  </tr>
  <%
  }
  for(int k=2; k<objs.length; k++){ 
	  Object[] o = (Object[])objs[k];
	  out.println("<tr id=listrow_"+(k-1)+" class=\"" + (k%2>0 ? "listLineAlter" : "listLine") + "\" onmouseover=\"trMouseOver(this)\" onmouseout=\"trMouseOut(this)\" onclick=\"trMouseClick(this);document.all.focus_flag.value=1;$('.l-btn-plain').removeClass('l-btn-disabled');" + o[0] + "\">");
    if(o.length-1 < totalColumns){
      for(int i=1; i<o.length-1; i++){
        TColumn t = heads==null ? new TColumn() : (TColumn)heads[i-1];
        out.print("<td class=listBody style=\"background-color:#ddd;");
        if(t.getAlign().length()>0) out.print("text-align:" + t.getAlign() +";");
        if(t.getHasButton()) out.println("padding-top:0px;padding-bottom:0px;");
        out.print("\">");
        out.print(o[i]);
        out.println("<br></td>");
      }
      TColumn t = heads==null ? new TColumn() : (TColumn)heads[o.length-2];
      out.print("<td class=listBody style=\"background-color:#ddd;");
      if(t.getAlign().length()>0) out.print("text-align:" + t.getAlign() +";");
      out.print("\" colspan=");
      out.print(totalColumns-o.length+2);
      out.print(">");
      out.print(o[o.length-1]);
      out.println("<br></td> ");
    }else{
	    for(int i=1; i<o.length; i++){
	      TColumn t = heads==null ? new TColumn() : (TColumn)heads[i-1];
	      out.print("<td class=listBody style=\"");
	      if(t.getAlign().length()>0) out.print("text-align:" + t.getAlign() +";");
	      if(t.getHasButton()) out.print("padding-top:0px;padding-bottom:0px;");
	      out.print("\" ");
        if(t.getWidth()>0) out.print("width="+t.getWidth()+" ");
        out.print(">");
	      out.print(o[i]);
	      out.println("<br></td> ");
	    }
    }
    out.println("</tr>");
    %>
  <% } %>
  
</table>
<% if (pageShowFlag==1){ %>
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_PAGECONTROL%>" scope="request">
<table width="100%" cellspacing="0" cellpadding="0" style="margin-top:-2px;">
<%= HIUtil.getAttribute(request, Constants.REQUEST_ATTRIBUTE_PAGECONTROL, "")%>
</table>
</logic:present>
<% } %>


<%
}catch(Exception e){
  e.printStackTrace();
}
%>