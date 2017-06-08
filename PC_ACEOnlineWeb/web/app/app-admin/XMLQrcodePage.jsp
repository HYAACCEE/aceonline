<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST">
    
    <table width=100% cellpadding=5 cellspacing=0>
    <tr><td colspan=2>
    <div style="font-size:20pt; font_weight:bold; TEXT-ALIGN: center; padding:10px;">二维码
    &nbsp;&nbsp;&nbsp;&nbsp;LOGO:<input size=50 name="logo"><input type=button value="刷新" onclick="page_redirect()">
    </div>
    </td></tr>
    </table>
    
    <div id="list_div" align="center"></div>
    </form>

    <div id="div_codes"></div>
    <script language="javascript">
    <!--
      function order_qr(){
        var items = order_qr.arguments;
        var i = 0;
        return "<table align=left cellspacing=0 cellpadding=0 border=0><tr><td class=QR_T5><img src='../xml/qrcode.y?content="+items[i++]+"&logo="+d("logo").value+"&size=<%=HIUtil.getParameter(request, "qrSize", "0")%>'><br>"+items[i++]+"</td></tr></table>&nbsp;&nbsp;&nbsp;&nbsp;";
      }
      function page_redirect(page,pageKey){
        ajax("../biz/S_Main.y?cmd=XMLPrintQRCode", {"code":"<%= HIUtil.getParameter(request, "qrtype", "") %>", "startID":"<%= HIUtil.getParameter(request, "startID", "") %>", "endID":"<%= HIUtil.getParameter(request, "endID", "") %>", }, function(html){
            d("list_div").innerHTML = html;
	        
	        var c = 1;
	        if(d("qrcode")[0]) c = d("qrcode").length;
          var s = "";
	        if(c==1){
	            s += order_qr(d("qrcode").value, d("desc").value);
	        }else{
		        for(var j=0; j<c; j++){
                  s += order_qr(d("qrcode")[j].value, d("desc")[j].value);
		        }
		    }
	        d("div_codes").innerHTML = s;
	        
	        
            //parent.printFrame.window.focus();
            window.print();
        });
      }      
      
      function init(){
        page_redirect();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>


