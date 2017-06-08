<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>
<%
String url = request.getRequestURL().toString();
System.out.println(url);
url = url.substring(0, url.indexOf("/app/"));

int num = HIUtil.getParameter(request, "num", 1);
String QRContent = HIUtil.getParameter(request, "QRContent", "");
%>
<% if(QRContent.length()>0){ %>
    <form name="MainForm" action="/" method="POST">
    
    <div id="msg_div" align="center"></div>

    <div id="divmain" class="NOPRINT">
    <div style="float:right"><a href=../doc/MELE_PRINT.rar target=blank>安装打印插件</a></div>   
    <div id="list_div" align="center"><%=QRContent%></div>
    </div>

    <div id="div_qrs0"></div>
    <div id="div_qrs"></div>
    </form>

    <OBJECT ID='jatoolsPrinter' CLASSID='CLSID:B43D3361-D075-4BE2-87FE-057188254255' codebase='jatoolsPrinter.cab#version=8,6,0,0'></OBJECT>
<% }else{ %>
    <br>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href=# onclick="history.back(-1)">返回</a>
   
<% } %>  
    <script language="javascript">
    <!--
      var printingFlag = true;
      function doPrint(){
        myreport = {
          settings:{
            printer:      '<bean:write name="S_MainBean" property="print_mark" />',  //设置到打印机 'ZDesigner GX420d'
            //paperName:    'a4',       //选择a4纸张进行打印
            pageWidth:    500,       //指定纸张的高宽以毫米为单位z,本设置实际是指定为a4大小
            pageHeight:   200,
            orientation:  1,          //选择横向打印,1为纵向，2为横向
            topMargin:    2,        //设置上下左距页边距为10毫米，注意，单位是 1/10毫米
            leftMargin:   2,
            bottomMargin: 2,
            rightMargin:  2
          },
          documents: document,
          //要打印的div对象在本文档中，控件将从本文档中的 id为'page1'的div对象，作为首页打印
          //id为'page2'的作为第二页打印
          copyrights: '杰创软件拥有版权  www.jatools.com' // 版权声明,必须
        };
        //d("msg_div").innerHTML += "开始数据传输";
        //jatoolsPrinter.printPreview(myreport);//预览
        //jatoolsPrinter.print(myDoc, true); //打印前弹出打印设置对话框
        jatoolsPrinter.print(myreport, false); //直接打印，不弹出打印机设置对话框
        //d("msg_div").innerHTML = "打印数据传输完毕。";
      }
      function goods_qr(){
        var items = goods_qr.arguments;
        var i = 0;
        var content = items[i++];
        //return "<img src='<%=url%>/xml/qrcode.y?size=5&content="+content+"' width=88>";
        return "<table width=160 height=85 cellspacing=0 cellpadding=0 border=0><tr><td align=center rowspan=2 class=QR_T5 width=70 style='line-height:100%;'><img src='<%=url%>/xml/qrcode.y?size=5&content="+content+"' width=78><br>扫描二维码了解商品信息</td></tr></table>";
      }
      function init(){
        <% if(QRContent.length()>0){ %>
        d("div_qrs0").innerHTML = goods_qr('<%=QRContent%>');
        confirmMsg("开始打印吗？", function(){
            var s = "";
            var p = 1;
		        <% for(int i=0;i<num;i++){ %>
		        //s += "<div id=page"+(p++)+"><b><%=(i+1)%><hr></b></div>";
		        s += "<div id=page"+(p++)+">"+goods_qr('<%=QRContent%>')+"</div>";
		        <% } %>
            d("div_qrs").innerHTML = s;
            doPrint();
        });
        <% }else{ %>
        //history.back(-1);
        <% } %>
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>


