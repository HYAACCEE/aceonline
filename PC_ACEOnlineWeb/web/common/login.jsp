<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<script>
function loadpage(){
  if(1==1){
    location = "mainIndex.y?mk=<%=request.getParameter("mk")%>";
  }else if(1==0){
    var win = window.open("mainIndex.y?mk=<%=request.getParameter("mk")%>","","fullscreen=0,location=no,menubar=no,resizable=yes,scrollbars=no,status=no,toolbar=no");
    win.focus();
  }else{
    var iWidth = window.screen.availWidth; 
    var iHeight = window.screen.availHeight;
    window.resizeTo(0,0);
    window.moveTo(iWidth,iHeight);
    var temp = window.showModalDialog('mainIndex.y?mk=<%=request.getParameter("mk")%>','','dialogWidth:'+iWidth+'px;dialogHeight:'+iHeight+'px;help=0;center=1;status:no;resizable:yes;minimize:yes;maximize:yes;');
    if(temp=='index'){
      location = 'index.y';
      window.moveTo(0,0);
      window.resizeTo(window.screen.width,window.screen.height);
      window.focus();
    }else if(temp=='adminindex'){
      location = 'adminindex.y';
      window.moveTo(0,0);
      window.resizeTo(window.screen.width,window.screen.height);
      window.focus();
    }else if(temp=='adminindexClose'){
      location = 'adminindex.y';
      window.moveTo(0,0);
      window.resizeTo(window.screen.width,window.screen.height);
      window.focus();

	    window.opener = null;
	    window.open('','_self');
	    window.close();
    }else{
      aa.innerText = '您已经退出系统...';
      location = 'index.y';
      window.moveTo(0,0);
      window.resizeTo(window.screen.width,window.screen.height);
      window.focus();

	    window.opener = null;
	    window.open('','_self');
	    window.close();
    }
  }
}
</script>
</head>
<body onload="loadpage();">
<object id=closes type="application/x-oleobject" classid="clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11"><param name="Command" value="Close"></object>
<div id=aa>正在登录系统...</div>
</body>
</html>