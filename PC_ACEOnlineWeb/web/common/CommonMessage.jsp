<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%
String DOCPATH = "doc/";
%>
<html>

<head>
  <title><%=Constants.MODULE_WEB_NAME%></title>
  <link type="text/css" rel="stylesheet" href="<%=DOCPATH%>css/style.css" />
  <script language="javascript" src="<%=DOCPATH%>script/HIUtil.js"></script>
  <script language="javascript">
		function htmlDecode(str){
		  var s = str;
		  if(str=='') return "";
		  s = s.replace(/&lt;/g, '<');
		  s = s.replace(/&gt;/g, '>');
		  s = s.replace(/&amp;/g, '&');
		  //s = s.replace(/&nbsp;/g, ' ');
		  s = s.replace(/&#39;/g, '\'');
		  s = s.replace(/&quot;/g, '\"');
		  //s = s.replace(/\n/g, '<br>');
		  return s;   
		}
    function init(){}
  </script>
</head>

<body id="body" onContextMenu="return true" onload="init();">


<table width=100% height=100% cellSpacing=0 border="0">
  <tr>        
    <td width=40% align=center valign=middle>
    
    <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" scope="session">
      <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="false">

    <!-- img src="<%=DOCPATH%>/images/error.png" width=150><br><br><br><br -->
    </td> 
    <td valign=middle><br><b>
        <!--font color="#ff0000"><h1>Error!</h1></font-->
        <font color="#ff0000"><h5><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/></h3></font>&nbsp;&nbsp;&nbsp;&nbsp;
        </b><br><br><br><br>
    
    </logic:equal>
    <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="true">
      
    <img src="<%=DOCPATH%>/images/ok.png" width=80><br><br><br><br><br>
    </td>      
    <td valign=middle><br><br>
        <h3>SUCCESS!</h3>
        <h4><span id="sid_msg"></span></h4>
				<script language="javascript">
				  function init(){
				    document.all("sid_msg").innerHTML = htmlDecode('<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/>');
				  }
				</script>

        
    <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_NEXTPAGE%>" scope="session">
        <span id="si_time"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_NEXTPAGE%>" property="time" /></span>秒后
         转到 
        <a href='<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_NEXTPAGE%>" property="url" />'><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_NEXTPAGE%>" property="name" />>></a>

        <script>
        var time = si_time.innerText;
        function direct(){
          if(time<=0) location = '<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_NEXTPAGE%>" property="url" />';
          else setTimeout('direct()', 1000);
          si_time.innerText = time;
          time = time - 1;
        }
        setTimeout('direct()', 0);
        </script>

    </logic:present>
    
    <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" scope="session">
        <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="time" value="0">
        <script>eval(htmlDecode('<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="url" />'));</script>
        </logic:equal>
        <logic:notEqual name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="time" value="0">
        <span id="si_time"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="time" /></span>秒后
        <a href="javascript:direct(true)"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="name" />>></a>
        <input type=hidden name="hid_script">
        <script>
        var time = si_time.innerText;
        function direct(v){
          if(v) time = 0;
          if(time<=0){
            eval(document.all("hid_script").value);
            clearTimeout(dio);
          }else{
            dio = setTimeout('direct()', 1000);
          }
          si_time.innerText = time;
          time = time - 1;
        }
        document.all("hid_script").value = htmlDecode('<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" property="url" />');
        var dio = setTimeout('direct()', 0);
        </script>
        </logic:notEqual>
    </logic:present>
    
        <br><br><br><br>
        
      </logic:equal>
    </logic:present>
    
    </td> 
  </tr>
</table>

</BODY></HTML>

<%
session.removeAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE);
session.removeAttribute(Constants.REQUEST_ATTRIBUTE_NEXTPAGE);
session.removeAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT);
%>
  