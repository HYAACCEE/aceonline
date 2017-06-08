<%@ page language="java" pageEncoding="UTF-8"%><%@ page import="com.svv.dms.web.Constants,com.gs.db.database.BizAResult" %><%
response.setContentType("text/html;charset=UTF-8");
response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
//如果IE浏览器则设置头信息如下
if("IE".equals(request.getParameter("type"))){
   response.addHeader("XDomainRequestAllowed","1");
}

BizAResult o = (BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE);
if(o!=null){
  if(o.getResult()){
    if(o.getInfo().startsWith("JSONP:")){
      String s = o.getInfo();
      s = s.replaceAll("JSONP:", "");
      out.print("<script>"+s+";</script>");
    }else{
      out.print(o.getInfo());
    }
  }else{
    out.print("<font color=red>"+o.getInfo()+"</font>");
  }
}%>