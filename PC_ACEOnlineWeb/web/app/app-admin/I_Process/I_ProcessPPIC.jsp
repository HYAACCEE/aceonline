<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">

    <div id="db_main">    

    <div class="dt_header">【<bean:write name="I_ProcessBean" property="ao.processName" />】流程图</div>
    <div id="list_div" align="center"></div>
    
    </div>
    </form>
    
<%@ include file="/common/IncludeBottom.jsp" %>