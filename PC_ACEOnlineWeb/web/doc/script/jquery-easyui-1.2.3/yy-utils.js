showCalendar = function(){
    var rnd = parseInt(Math.random() * 20111225);
    var msgObj = document.createElement("div");
    msgObj.innerHTML = "<div id=div_box_"+rnd+" style='padding:0px;'></div>";
    document.body.appendChild(msgObj);
    
    $('#div_box_'+rnd).calendar({
      width:180,
      height:180,
      onOpen: function(){openBox = $("#div_box_"+rnd);},
      onClose: function(){ document.body.removeChild(msgObj); }
    });  
}
showWinConfirm = function(txt, yFun, nFun, changeTipFlag){
    $.messager.confirm("提示", "<table><tr><td height=80><td>"+txt+"<br></td></tr></table>", function(r){
      if (r){
        if(yFun) yFun();
      }else{
        if(nFun) nFun();
      }
    });
}
showMsgWin = function(msg){
    $.messager.alert('消息',msg,'info');
}

showErrorWin = function(msg){
    $.messager.alert('错误','<br><font color=red>'+msg+"</font><br><br><br><br>",'error');
}

showWinInput = function(txt, iptnm, callbackFunc){
    $.messager.prompt('提示', txt, function(r){
      if (r){
        if(iptnm) r = document.all(iptnm).value;
        if(callbackFunc) callbackFunc(r);
      }
    });
}

var openBox = null;
showFormBox = function(tip,div){
  openBox = $( "#"+div );
  $( "#"+div ).dialog({title: tip, modal: true});
}
closeFormBox = function(div){
  if($( "#"+div )) $( "#"+div ).dialog( "close" );
  openBox = null;
}
showTip = function(tip,msg,w,h){
	$.messager.show({
	          title: tip,
	          width: w,
	          height: h,
	          modal: true,
	          msg: msg
	        });
}
ajaxMsg = function(url, data, sfun, msg){
	var msg_ = msg;
	if(!msg) msg_ = "正在提交，请稍后...";
    var rnd = parseInt(Math.random() * 20111225);
    var msgObj = document.createElement("div");
    msgObj.innerHTML = "<div id=div_box_"+rnd+" style='padding:20px;'></div>";
    document.body.appendChild(msgObj);
    
    $('#div_box_'+rnd).html(msg_).window({
      titleBar: false,
      title: '',
      width:400,
      height:80,
      modal: true,
      resizable: false,
      onOpen: function(){openBox = $("#div_box_"+rnd);},
      onClose: function(){ document.body.removeChild(msgObj); }
    });
    
	$.ajax({ type: "POST",
        url: url,
        data: data,
        success: function(html, textStatus, XMLHttpRequest){
        	openBox.dialog( "close" );
     	    openBox = null;
            if(sfun) sfun(html);
        }
    });
}
loadingMsg = function(msg){
    var rnd = parseInt(Math.random() * 20111225);
    var msgObj = document.createElement("div");
    msgObj.innerHTML = "<div id=div_box_"+rnd+" style='padding:20px;'></div>";
    document.body.appendChild(msgObj);
    
    $('#div_box_'+rnd).html(msg).window({
      titleBar: false,
      title: '',
      width:400,
      height:80,
      modal: true,
      resizable: false,
      onOpen: function(){openBox = $("#div_box_"+rnd);},
      onClose: function(){ document.body.removeChild(msgObj); }
    });	
}
show = function(tip,msg,w,h){
    var rnd = parseInt(Math.random() * 20111225);
    var msgObj = document.createElement("div");
    msgObj.innerHTML = "<div id=div_box_"+rnd+" style='padding:20px;'></div>";
    document.body.appendChild(msgObj);
    
    $('#div_box_'+rnd).html(msg).window({
      titleBar: tip!=null,
      title: tip,
      width:w,
      height:h,
      modal: true,
      resizable: false,
      onOpen: function(){openBox = $("#div_box_"+rnd);},
      onClose: function(){ document.body.removeChild(msgObj); }
    });  
}
showBox = function (tip,url,w,h,sfun){
    var iWidth = document.documentElement.clientWidth; 
    var iHeight = document.documentElement.clientHeight+document.documentElement.scrollTop*2;
    if(w==0 || w>iWidth-10) w = iWidth-2;
    if(h==0 || h>iHeight-10) h = iHeight-2;
    
    var rnd = parseInt(Math.random() * 20111225);
    var msgObj = document.createElement("div");
    msgObj.innerHTML = "<div id=div_box_"+rnd+" style='padding:0px;'></div>";
    document.body.appendChild(msgObj);
    var txt = "<b id='ld__" + rnd + "' style='width:300px'>正在加载，请稍后....</b><input type=hidden id=rtnMsg name=rtnMsg>"
    + "<iframe id='if__" + rnd + "' style='width:100%;height:100%;display:block;padding:0;' src='" + url + "' frameborder=0></iframe>";
    
    $("#div_box_"+rnd).html(txt).window({
        title: tip,
        resizable: false,
        width: w,
        height: h,
        modal: true,
        shadow: false,
        closed: false,
        panel: {},
        onOpen: function(){openBox = $("#div_box_"+rnd);},
        onClose: function(){
        	if(sfun) sfun(document.getElementById('rtnMsg').value);
        	document.body.removeChild(msgObj);
        	}
      });
    $("#if__" + rnd).load(function () {
            $("#ld__" + rnd).remove();
        });
    return $("#div_box_"+rnd);
}
closeBox = function(b){
   if(b){
	   b.dialog( "close" );
	   b = null;
	 }else{
	   openBox.dialog( "close" );
	   openBox = null;
	 }
}

/******************  显示隐藏的div 不可移动  ***********/
var openInBox = null;
function showBoxSelect(oIDname,divName,selelctName,w,iptSize){
    var textObj = document.createElement("span");
    d(oIDname).parentNode.insertBefore(textObj,d(oIDname));
    var _iptSize = 50;
    if(iptSize) _iptSize = iptSize;
    textObj.innerHTML = "<input class=ipt_text readonly size="+_iptSize+" name="+oIDname+"_text id=id_"+oIDname+"_text><br>";
    d(oIDname).initText = function(){
      d(oIDname+"_text").init();
    }
    
    var selectObj = document.getElementsByName(selelctName);
    for(var i=0;i<selectObj.length;i++){
        selectObj[i].onclick = function (){
          var olist = document.getElementsByName(selelctName);
          var s = "";
          var s2 = "";
          for(var i=0;i<olist.length;i++){
            if(olist[i].checked){
              s += olist[i].value + ",";
              s2 += olist[i].nextSibling.innerText + ",";
            }
          }
          if(s.length>0){
            s = s.substring(0,s.length-1);
            s2 = s2.substring(0,s2.length-1);
          }
          d(oIDname).value = s;
          d(oIDname+"_text").value = s2;
        };
    }
      
    var nameObj = document.getElementById("id_"+oIDname+"_text");
    nameObj.onclick = function (){
        var _self = this;
        var pos = new Array();
        var t=_self.offsetTop;
        var l=_self.offsetLeft;
        while(_self=_self.offsetParent){
	        t =  t + _self.offsetTop;
	        l = l + _self.offsetLeft;
        }

        if(!inboxClose()) return;
		    $( "#"+divName ).dialog({
		        titleBar: false,
            resizable: false,
		        width: w,
		        position: [l,t+22],
		        modal: false,
		        onOpen: function(){ openInBox = $("#"+divName); }
		      });
        this.init();
    }
    nameObj.init = function (){
        var olist = document.getElementsByName(selelctName);
        var s = ","+d(oIDname).value+",";
        var s2 = "";
        for(var i=0;i<olist.length;i++){
          if(s.indexOf(","+olist[i].value+",")>=0){
            s2 += olist[i].nextSibling.innerText + ",";
            olist[i].checked = true;
          }else olist[i].checked = false;
        }
        if(s2.length>0) s2 = s2.substring(0,s2.length-1);
        d(oIDname+"_text").value = s2;
   }
}
function inboxClose(){
   if(openInBox!=null){
     openInBox.dialog( "close" );
     openInBox = null;
     return false;
   }
   return true;
}

