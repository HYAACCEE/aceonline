<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>KindEditor JSP</title>
	<link rel="stylesheet" href="../doc/script/kindeditor-4.1.11/themes/default/default.css" />
	<link rel="stylesheet" href="../doc/script/kindeditor-4.1.11/plugins/code/prettify.css" />
	<script charset="utf-8" src="../doc/script/kindeditor-4.1.11/kindeditor-all-min.js"></script>
	<script charset="utf-8" src="../doc/script/kindeditor-4.1.11/lang/zh-CN.js"></script>
	<script charset="utf-8" src="../doc/script/kindeditor-4.1.11/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				cssPath : '../doc/script/kindeditor-4.1.11/plugins/code/prettify.css',
				uploadJson : '../xml/XMLUploadImage.y', //'B_Editor.y?cmd=upload_json', //
				fileManagerJson : 'B_Editor.y?cmd=file_manager_json',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
	<%=htmlData%>
	<form name="example" method="post" action="B_Editor.y">
		<textarea name="content1" cols="100" rows="8" style="width:800px;height:400px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
		<br />
		<input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)
	</form>
</body>
</html>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>