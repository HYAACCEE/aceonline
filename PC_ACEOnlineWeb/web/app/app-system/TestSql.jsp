<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

<div style="padding:20px">
<form name="MainForm">
<textarea name=sqls cols=180 rows=10></textarea>
<input type="button" value="测试SQL" onclick=test()>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="测试SP" onclick=testSP()>
<textarea cols=180 rows=30 id=msg style="margin-top:20px;font-weight:bold;line-height:150%;border:1px solid #000000;background:#dddddd"></textarea>

</form>
</div>

<script language="javascript">
  function test(){
    ajax("TestSql.y?cmd=exeSqls", {"sqls":d.sqls.value}, function(html){
        d("msg").innerHTML = html;
    });
  }
  function testSP(){
    ajax("TestSql.y?cmd=exeSP", {"sqls":d.sqls.value}, function(html){
        d("msg").innerHTML = html;
    });
  }

</script>

<%@ include file="/common/IncludeBottom.jsp" %>