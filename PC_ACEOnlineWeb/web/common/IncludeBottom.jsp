<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.Constants"%>
<%@ page import="com.svv.dms.web.util.HIUtil"%>
<%@ page import="com.svv.dms.web.util.NextPage,com.gs.db.database.BizAResult"%>

</div>
</body>
</html>
<script>
  function initmsg(){
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" scope="request">
  <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="false">
    setError("<%= HIUtil.toHtmlStr(((BizAResult)request.getAttribute(Constants.REQUEST_ATTRIBUTE_MESSAGE)).getInfo()) %>");
  </logic:equal>
  <logic:equal name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="result" value="true">
    setMessage(htmlEncode("<bean:write name="<%=Constants.REQUEST_ATTRIBUTE_MESSAGE%>" property="info"/>"));
  </logic:equal>
</logic:present>
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_EXCEPTION%>" scope="request">
    alert("系统异常：\n <bean:write name="<%=Constants.REQUEST_ATTRIBUTE_EXCEPTION%>" property="info"/>");
</logic:present>
<logic:present name="<%=Constants.REQUEST_ATTRIBUTE_SCRIPT%>" scope="request">
    <% //out.println("alert('"+((NextPage)request.getAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT)).getUrl()+"');"); %>
    <% out.println(((NextPage)request.getAttribute(Constants.REQUEST_ATTRIBUTE_SCRIPT)).getUrl()); %>
</logic:present>
  }
</script>
