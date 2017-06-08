<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ page import="com.svv.dms.web.util.HIUtil" %>
<%@ page import="com.svv.dms.web.util.QRCode" %>
<%@ page import="javax.imageio.ImageIO" %>
<%
ImageIO.write(QRCode.createQRCode(HIUtil.getParameter(request, "content", "NULL"), HIUtil.getParameter(request, "size", 0), null, HIUtil.getParameter(request, "logo", "E:/logo"+Constants.WEB_DOMAIN+"_128.png")), "jpg", response.getOutputStream());
%>
