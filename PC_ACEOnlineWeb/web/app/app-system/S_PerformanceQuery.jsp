<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("系统管理 - 性能监控");</script-->
    <form name="MainForm" action="/" method="POST">    
  
<pre>
<h3 style="padding-left:20px;">

<%
String path = request.getRealPath("/");
out.println("[存储路径]: " + path);
out.println("");
File win = new File(path);
out.println("[可用空间]: " + win.getFreeSpace()/1024/1024/1024 + "G");
out.println("");
out.println("[总空间大小]: " + win.getTotalSpace()/1024/1024/1024 + "G");

Runtime r = Runtime.getRuntime();
//out.println("[可用内存]: " + r.freeMemory()/1024 + "M");
//out.println("[总内存]: " + r.totalMemory()/1024 + "M");

    
     %>
</h3>
</pre>
    </form>

    <script language="javascript">
    <!--
    function go(v){
      location.href=v;
    }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
    