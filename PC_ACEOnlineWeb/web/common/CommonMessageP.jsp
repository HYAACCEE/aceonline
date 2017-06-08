<%@ page language="java" pageEncoding="UTF-8"%><%@ page import="com.svv.dms.web.Constants" %>
<%
session.setAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE, request.getAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE));
if(request.getAttribute(Constants.REQUEST_ATTRIBUTE_NEXTPAGE)!=null)
  session.setAttribute(Constants.REQUEST_ATTRIBUTE_NEXTPAGE, request.getAttribute(Constants.REQUEST_ATTRIBUTE_NEXTPAGE));
if(request.getAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT)!=null)
  session.setAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT, request.getAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT));
%>

<script>
location = '../Message.y';
</script>
