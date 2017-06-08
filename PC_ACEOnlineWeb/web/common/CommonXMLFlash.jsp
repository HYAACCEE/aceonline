<%@ page language="java" pageEncoding="gb2312"%><%@ page import="com.svv.dms.web.Constants,com.gs.db.database.BizAResult" %><%@ taglib uri="struts-logic" prefix="logic" %><%@ taglib uri="struts-bean" prefix="bean" %><%@ taglib uri="struts-html" prefix="html" %>
<%@page contentType="text/xml"%>
<%
BizAResult o = (BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE);
if(o!=null){
  if(o.getResult()){
    out.print(o.getInfo());
  }else{
    out.print("<font color=red>"+o.getInfo()+"</font>");
  }
}
%>