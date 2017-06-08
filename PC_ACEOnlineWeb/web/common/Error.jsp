<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ include file="/common/IncludeTop_s.jsp" %>

<div style="width:800px;height:300px;overflow:auto;">
    <table width="800" cellSpacing="1" cellpadding="4" border="0"><tr><td width=350 height=400 align=right>
<img src="../doc/images/error.png" width=150></td> <TD><font color="#ff0000"><h3>Error！！！</h3></font>
        <logic:present name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" scope="request">
          <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="false">
            <font color="#ff0000"><bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/></font>
          </logic:equal>
          <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="true">
            <bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/>
          </logic:equal>
        </logic:present>
         <logic:present name="BeanActionException">
          <bean:write name="BeanActionException" property="message"/>
        </logic:present><br><br>
        <!--a href="javascript:history.go(-1)">返回>></a-->
  </td></tr></table>
<logic:present name="BeanActionException"><h4>Stack</h4><pre>
    <%
      Exception e = (Exception) request.getAttribute("BeanActionException");
      e.printStackTrace(new PrintWriter(out));
    %>
</pre></logic:present>
        </td> 
      </tr>
    </table>
</div>