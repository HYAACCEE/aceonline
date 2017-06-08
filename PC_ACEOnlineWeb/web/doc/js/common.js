version='com00000012';
var auid,mid,amid,power,userName,userFace,M0;
var noticeShow;
var PATH = '../';
var SP = '`', SP1 = '___', SP2 = '@@@';
var UPLOADFILE_MAXSIZE = 2*1024*1024;
var UPLOADPK_MAXSIZE = 1*1024*1024;
var DEBUG = false;
var onlogFlag = true;

//////var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write("<!--"+unescape("%3Cspan id='cnzz_stat_icon_1261235468'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1261235468' type='text/javascript'%3E%3C/script%3E")+"-->");

var ID = null, DATA1 = null, DATA2 = null;
var URL_SPLITER_ID = "g=098";
function getUrlCid(){
  var url = location.href;
  if(url.indexOf(URL_SPLITER_ID)>0) return url.split(URL_SPLITER_ID)[1];
}
function getUrlDATA1(){
  var url = location.href;
  var pos = url.indexOf("data1=");
  if(pos>=0){
    var tmp = url.split("data1=");
    url = tmp[1];

    pos = url.indexOf("&data2=");
    if(pos>=0){
      return url.split("&data2=")[0];
    }

    return url.split("&"+URL_SPLITER_ID)[0];
  }
  return "";
}
function getUrlDATA2(){
  var url = location.href;
  var pos = url.indexOf("data2=");
  if(pos>0){
    var tmp = url.split("data2=");
    url = tmp[1];
    return url.split("&"+URL_SPLITER_ID)[0];
  }
  return "";
}
function xmll(a){
   return desE(a);
}
function llmx(sfun){
  var url = location.href;
  var pos = url.indexOf("?");
  if(pos>=0){
    ajax_("HIMService.y?cmd=desD", "{a:'"+url.split("?")[1]+"'}", function(ret,html){
      if(ret==1) sfun(html);
    });
  }
}

/**********************************************************/
//全局使用。即所有弹出层都默认采用，但是单个配置skin的优先级更高
var layer, laypage, element;
function init(){}
/**********************************************************/
$(function(){
	/*********************** 取得用户cookie *********************/
	if(typeof userCookie != 'undefined'){
		userCookie(); //在myjs中定义
	}
	/*********************** 初始化菜单 *************************/
	layui.use(['layer','laypage','element'], function(){
	  layer = layui.layer,
	  laypage = layui.laypage,
	  element = layui.element();
	  layer.config({
	    skin: 'layer-class'
	  });
	  layer.ready(function(){ 
	    init();
	  });
	});
	if($('#topbar')) initTopbar();
	if($('#bottombar')) initBottombar();
	if($('#leftbar')) initLeftbar();
	
	//自适应高度
  var H = document.body.scrollHeight;
  var c_h = H - $('#topbar').height() - $('#bottombar').height()
              - ($('#menubar')?$('#menubar').height():0)
              - ($('#querybar')?$('#querybar').height():0) - 100;
  if($('#container')) $('#container').css("min-height", c_h+'px');
  if($('#former')) $('#former').css("min-height", c_h+'px');
	/********************** 初始化点击事件 **********************/
	PageStart_InitActions(); //////////////////////////////////////////////////////////需在myjs中定义
	$(".logo").click(function(){ onlog('点击LOGO'); go("../index.html"); });
	$(".login_").click(function(){ onlog('点击登录按钮'); go("user_login.html"); });
	
	/************************ 其他功能定义 *********************/
	Pub_InitUIDialogFuns(); //dialog页面中的处理
	Pub_InitSlide(); //点击展开关闭效果
  /**********************************************************/

});
/********** 初始化数据列表的函数，用在query之后 *************/
var DATAID = null, DATAID1 = "", DATAID2 = "";
function DataLine_InitFuns(pdiv){
  var $dataline_ = $(".dataline_");
  if(pdiv) $dataline_ = pdiv.find(".dataline_");
  $dataline_.hover(
      function (){
        if($(this).attr("data")) DATAID = $(this).attr("data"); //hover的时候保存dataid
        if($(this).attr("data1")) DATAID1 = $(this).attr("data1"); //hover的时候保存dataid
        if($(this).attr("data2")) DATAID2 = $(this).attr("data2"); //hover的时候保存dataid
        //$(this).addClass("bg-light-red");
        $(this).find(".actions_").show();
      },
      function () {  
        //$(this).removeClass("bg-light-red");
        $(this).find(".actions_").hide();
      }
  );
}
/****************** 通用 展示HTML *************************/
function Common_Data(url, data, sFun, errFun, options){
  options = options || {};
  var btn = options['btn'];
  var div = options['div'];
  var nullMsg = options['nullMsg'] || '0';
  var extdata = options['extdata'] || '';

  ajax_(url, data, function(ret, html){
    if(ret==1){
      if(div){
        div.html(html);
        div.show();
      }
      if(sfun) sfun(ret, html, extdata);
    }else{
      if(errFlag==1){
        util.UI.err(html);
      }else if(div){
        div.html(html);
        div.show();
      }
      if(errFun) errFun(ret, html, extdata);
    }
  });
}
/****************** 通用 提交form *************************/

function Common_Submit(url, data, sFun, options){
  options = options || {};
  var btn = options['btn'];
  var div = options['div'];
  var nullMsg = options['nullMsg'] || '1';
  var autoCloseLoading = options['autoCloseLoading'] || 1;
  var uploadFileNum = options['uploadFileNum'] || 0;

  if($btn_) {$btn_.attr("disabled", "disabled"); $btn_.addClass("btn-disabled");}
  var formParam = '', formContent = '';
  var notnull = formDiv==null ? $(".notnull") : formDiv.find(".notnull");  
  var flag = true;
  if(nullMsg==1){
    for(var i=0; i<notnull.length; i++){
      if($(notnull[i]).val().length<1){
        if($(notnull[i]).attr("for") && $(notnull[i]).attr("for") != ''){
          layer.tips('请填写完整', $("#"+$(notnull[i]).attr("for")), {tipsMore: true});
        }else{
          $(notnull[i]).focus();
          layer.tips('请填写完整', $(notnull[i]), {tipsMore: true});
        }
        flag = false;
      }
    }
  }
  if(!flag){
    if(autoCloseLoading == 1) util.UI.closeLoading();
    if($btn_) { $btn_.removeAttr("disabled"); $btn_.removeClass("btn-disabled");}
    return false;
  }

  var vv = formDiv==null ? $(".vv") : formDiv.find(".vv");
  for(var i=0; i<vv.length; i++){
    formParam += SP + $(vv[i]).val().replace(new RegExp(SP, "g"), "").replace(/(^\s*)|(\s*$)/g, "");
  }
  formParam = formParam.substring(1);
  formParam = formParam.replace(new RegExp("'", "g"), "&#39;");
  vv = formDiv==null ? $(".vvc") : formDiv.find(".vvc");
  for(var i=0; i<vv.length; i++){
    formContent += SP + $(vv[i]).val().replace(new RegExp(SP, "g"), "").replace(/(^\s*)|(\s*$)/g, "");
  }
  formContent = formContent.substring(1);
  formContent = formContent.replace(new RegExp("'", "g"), "&#39;");
  
  log("[Common_FormSubmit] formParam="+formParam);
  log("[Common_FormSubmit] formContent="+formContent);
  if(data && data.length>0) formParam = data.replace("}", ",formParam:'"+formParam+"', formContent:'"+formContent+"'}");
  else formParam = "{formParam:'"+formParam+"', formContent:'"+formContent+"'}";
  ajax_(url, formParam, function(ret, html){
      if(ret==2) util.UI.err(html);
      if(sFun) sFun(ret, html);
      if($btn_) { $btn_.removeAttr("disabled"); $btn_.removeClass("btn-disabled");}
  });
  if(autoCloseLoading==autoCloseLoading) setTimeout("util.UI.closeLoading();", 20000); //设置10秒后释放
  if($btn_) setTimeout("$btn_.removeAttr('disabled'); $btn_.removeClass('btn-disabled');", 10000); //设置10秒后提交按钮 显示
  return true;
}
/****************** 通用 page_query *********************/
function PQuery(action_, param_, dataDiv, nodataDiv, flowFlag){
  this.action_ = action_;
  this.param_ = param_;
  this.dataDiv = dataDiv;
  this.nodataDiv = nodataDiv;
  this.start = true;
  this.page = 1;
  this.pages = 0;
  this.firstid = "";
  this.lastid = "";
  this.i0 = "";
  this.i1 = "";
  this.sfun = null;
  this.orderDescFlag = 0;
  this.waitingFlag = 0;
  this.flowFlag = flowFlag || 0;
  this.prependFlag = 0;
}
PQuery.PAGE_ROW = 20;
PQuery.prototype.query = function(page, sfun, orderDescFlag){
  var $pq = this;
  
  //////////////////////////$pq.dataDiv.html('');
  if($("#totalCount")) $("#totalCount").html(0);
  if($("#pages")) $("#pages").html('');
  
  $pq.sfun = sfun;
  $pq.orderDescFlag = orderDescFlag || 1;
  $pq.page_query(page);
  
  if($pq.flowFlag==1){
    $(window).scroll(function() {
      if($pq.page < $pq.pages+1){
        
        //当内容滚动到底部时加载新的内容
        var $this = $(this);
        //if ($this.scrollTop() + $(window).height() + 20 >= $(document).height() && $this.scrollTop() > 20) {
        if ($this.scrollTop() + $(window).height() + 20 >= $pq.dataDiv.height() && $this.scrollTop() > 20) {
          if($pq.waitingFlag == 0){
            //log("$(this).scrollTop() + $(window).height() + 20==="+ ($(this).scrollTop() + $(window).height() + 20)+",,,$(document).height()==="+ $(document).height());
            //当前要加载的页码 
            $pq.page++;
            $pq.page_query($pq.page);
          }
        }
      }
    });
  }
}
PQuery.prototype.page_query = function(page){
  var $pq = this;
  $pq.waitingFlag = 1;
  $pq.page = page || 1;
  if($pq.nodataDiv) $pq.nodataDiv.hide();
  if($pq.page==1){
    $pq.dataDiv.html('');
    $pq.i0 = "";
    $pq.i1 = "";
  }else if($pq.prependFlag==1){
    $pq.i0 = $pq.orderDescFlag==0 ? "" : $pq.firstid;
    $pq.i1 = $pq.orderDescFlag==1 ? "" : $pq.firstid;
  }else{
    $pq.i0 = $pq.orderDescFlag==0 ? $pq.lastid : "";
    $pq.i1 = $pq.orderDescFlag==1 ? $pq.lastid : "";
  }
  var loadingIndex = util.UI.loading();
  ajax_($pq.action_, $pq.param_.replace("}",",i0:'"+$pq.i0+"',i1:'"+$pq.i1+"',i8:'"+$pq.page+"',i9:'"+PQuery.PAGE_ROW+"'}"), function(ret,html_){
      util.UI.closeLoading(loadingIndex);
      $pq.waitingFlag = 0;
      if($pq.nodataDiv) $pq.nodataDiv.hide();
      if(ret==1){
        var pageHtml = "";
        var html = html_;
        var pos = html.indexOf("`");
        if(pos > 0){
          if($pq.page==1){
            $pq.totalCount = html.substring(0, pos);
            $pq.pages = Math.ceil($pq.totalCount / PQuery.PAGE_ROW);
            if($("#totalCount")) $("#totalCount").html($pq.totalCount);
            if($("#pages")){
              if($pq.flowFlag==0 && $pq.start){
                  laypage({
                    cont: 'pages'
                    ,pages: $pq.pages
                    ,first: 1
                    ,last: $pq.pages
                    ,prev: '<em><</em>'
                    ,next: '<em>></em>'
                    ,jump: function(obj){
                      if(!$pq.start){
                        $pq.page_query(obj.curr);
                      }
                      $pq.start = false;
                    }
                  });
              }
            }
          }
          html = html.substring(pos+1);
          pos = html.indexOf("`");
          $pq.firstid = html.substring(0, pos);
          html = html.substring(pos+1);
          pos = html.indexOf("`");
          $pq.lastid = html.substring(0, pos);
          html = html.substring(pos+1);
          pos = html.indexOf("`");
          pageHtml = html.substring(0, pos);
          if($pq.flowFlag==0 && $("#paeHtml")) $("#paeHtml").html(pageHtml);
          html = html.substring(pos+1);
        }
      	if($pq.flowFlag==1){
      	  if($pq.prependFlag==1){
            $pq.dataDiv.prepend('<div class="flow">'+html+'</div>');
      	  }else{
            $pq.dataDiv.append('<div class="flow">'+html+'</div>');
      	  }
      	}else{
      	  $pq.dataDiv.html(html);
      	}
      	$pq.dataDiv.show();
      	if($pq.sfun) $pq.sfun(ret, html);
      }else{
        if($pq.flowFlag==1 && $pq.page>1){
          ;
        }else{
          $pq.dataDiv.html('');
          $pq.dataDiv.hide();
          if($pq.nodataDiv && $pq.page==1){
            $pq.nodataDiv.show();
          }
        }
      } 
  });
}
/***********************************************************/

/************************* ajax *****************************/
function ajax_(url, data, sfun){
  var dataParam = data;
  if(data=='') dataParam = "{a:''}";
  ajax(PATH+'HIOnline.y?cmd=apply',
         {"applyUrl": url, "applyParam": dataParam.replace("{", "{a0:'"+auid+"',mid:'"+mid+"',amid:'"+amid+"',")},
         function(html){
             if(!html || html=='') html = '2`ajax return null';
             var ret = html.substring(0,1);
             if(sfun) sfun(ret, html.substring(2));
        });
}
function ajaxFile_(url, data, sfun){
	ajax(PATH+'HIOnline.y?cmd=ajaxFile', {"applyUrl": url, "applyParam": data.replace("{", "{a0:'auid',mid:'mid',amid:'amid',")}, function(html){
		//alert("打印上传文件"+html);
	  eval(html);
	});
}
//ajax
function ajax(url, data, sfun){
    $.ajax({ type: "POST",
             url: url,
             data: data,
             timeout:15000, 
             beforeSend:function(XMLHttpRequest){
                 //alert('远程调用开始...'); 
             }, 
             success: function(html, textStatus, XMLHttpRequest){
                 if(sfun) sfun(html);
             },
             complete:function(XMLHttpRequest,textStatus){ 
                 //alert('远程调用成功，状态文本值：'+textStatus);
             },
             error:function(XMLHttpRequest,textStatus,errorThrown){
                 util.UI.err("请求失败，请稍后再试~~~~");
                 //alert('error...状态文本值：'+textStatus+" 异常信息："+errorThrown);
             }
    });
}

//*************************** 其他  ********************************

//建立一個可存取到該file的本地url
function getLocalObjectURL(file) {
	var url = null ;
	if (window.createObjectURL!=undefined) { // basic
	  url = window.createObjectURL(file) ;
	} else if (window.URL!=undefined) { // mozilla(firefox)
	  url = window.URL.createObjectURL(file) ;
	} else if (window.webkitURL!=undefined) { // webkit or chrome
	  url = window.webkitURL.createObjectURL(file) ;
	}
	return url ;
}
// go 函数
function go(url){
	location.href = url;
}
// isThis 函数 
function isThis(url){
	return location.href.indexOf(url)>0;
}
// 点击展开关闭效果
function Pub_InitSlide(pdiv){
	var slide = $(".btn-slide");
	if(pdiv) slide = pdiv.find(".btn-slide");
  slide.click(function(){ 
    /*图标向上旋转*/
    $(this).parent().toggleClass('dir-line-root');
    $(this).find("img.arrow").toggleClass('hover-up');
    $(this).toggleClass('open');
    $(this).toggleClass('close');
    var Obj = $(this).attr('id');
    if(Obj){
        num = Obj.substring(3, Obj.length);
        //$('#box-'+num).slideDown(200);
        $('#box-'+num).slideToggle();
    }
  });
}
/*********************** DEBUG LOG ************************/
$(document).ready(function(){
	if(DEBUG){
    $log_ = document.createElement('div');
	  $log_.innerHTML = '<div class="log" data="222" style="color:#444444;line-height:10px;font-size:9px;z-index:999"></div>';
	  $("#bottombar").append($log_).append("<br/><br/><br/>");
	  $log_ = $(".log");
	}
});
function log(a){
	if(DEBUG) $log_.html($log_.html()+"---------------------------------------------------------------<br>* * * "+a+"<br>");
}
function onlog(a){
	if(onlogFlag) ajax(PATH+'HIOnline.y?cmd=onlog',{a0:'"+auid+"',mid:'"+mid+"',amid:'"+amid+"',"log":a});
}
/**********************************************************/

/******************* EasyUI Date Format ********************/
//yyyy-MM-dd
function EUIDate(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
}
function EUIDateParser(s){
	if (!s) return new Date();
	var ss = (s.split('-'));
	var y = parseInt(ss[0],10);
	var m = parseInt(ss[1],10);
	var d = parseInt(ss[2],10);
	if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
		return new Date(y,m-1,d);
	} else {
		return new Date();
	}
}
//yyyy-MM-dd HH:mm
function ww4(date){
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    var hh = date.getHours();
    var mm = date.getMinutes();
    //var ss = date.getSeconds();
    return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + ' ' + (hh < 10 ? ('0' + hh) : hh) + ':' + (mm < 10 ? ('0' + mm) : mm); // + ':' + (ss < 10 ? ('0' + ss) : ss);
}
function w4(date){
	return new Date(Date.parse(date.replace(/-/g, "/"))); 
}
//yyyy-MM
function EUIDateYM(date){
	if (!date){return '';}
	var y = date.getFullYear();
	var m = date.getMonth() + 1;
	return y + '-' + (m<10?('0'+m):m);
}
function EUIDateYMParser(s){
	if (!s){return null;}
	var ss = s.split('-');
	var y = parseInt(ss[0],10);
	var m = parseInt(ss[1],10);
	if (!isNaN(y) && !isNaN(m)){
		return new Date(y,m-1,1);
	} else {
		return new Date();
	}
}

/******************** dialog页面中的处理 ********************/
function Pub_InitUIDialogFuns(){
	$("#UI_Button_Cancel").click(function(e){
	    parent.util.UI.closeDialog();
	});
}

/********************** 日期选择定义 *************************/
//UI_InitDate($(".datepicker"));
function UI_InitDate(date){
	if(date.parent().hasClass("datemonthview")){
        date.datepicker({
	        changeMonth: true,
	        changeYear: true,
	        dateFormat: 'yy-mm',
	        showButtonPanel: false,
	        closeText: "确认",
	        onClose: function(dateText, inst) { 
	            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val(); 
	            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val(); 
	            $(this).datepicker('setDate', new Date(year, month, 1));
	        }
	    });
	}else{
		date.datepicker({  
			dateFormat : "yy-mm-dd",
			showTime: true,
			changeMonth: true,
			changeYear: true
		});
	}
}
/************** 日期选择定义 startDate endDate ***************/
function UI_InitDateSE(fromDate, toDdate, seFlag, seDays){
//  var laydate = layui.laydate;
  var start = {
    choose: function(datas){
      end.min = datas; //开始日选好后，重置结束日的最小日期
      end.start = datas //将结束日的初始值设定为开始日
    }
  };
  var end = {
    choose: function(datas){
      start.max = datas; //结束日选好后，重置开始日的最大日期
    }
  };
  fromDate.onclick = function(){
    start.elem = this;
    laydate(start);
  }
  toDdate = function(){
    end.elem = this
    laydate(end);
  }
}
/**********************************************************/


//****************************************************************
//**************************** util ******************************
//****************************************************************
util = {};

util.config = function(config) {
  util.config_ = config || {};
};

//****************************************************************
//************************* Jquery-UI ****************************
//****************************************************************
var openBox = null;
var loadingBox = null;
(function(){
var UI = {};

UI.msg = function(txt){
  layer.msg(txt.replace(new RegExp("666", "g"), ""), {
    icon: 1,
    time: 2000 //2秒关闭（如果不配置，默认是3秒）
    }
  );
};
UI.err = function(txt){
  layer.msg(txt, {//'<span style="color:red">'+txt+'</span>'
    icon: 5,
    time: 2000 //2秒关闭（如果不配置，默认是3秒）
    }
  );
};
UI.msgDialog = function(title, txt, yfun){
  layer.confirm('<div class="f18 text-c pdall20 color-focus">'+title+'</div><div class="f14 pd20" style="line-height:25px;">'+txt+'</div>', {
    title: '',
    btnAlign: 'c',
    btn: ['确定'] //可以无限个按钮
  }, function(index, layero){
    layer.close(index);
    if(yfun) yfun();
  });
};

//----------------------- layer的例子
//  layer.open({
//    type: 1
//    ,title: false //不显示标题栏
//    ,closeBtn: false
//    ,area: '300px;'
//    ,shade: 0.8
//    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
//    ,resize: false
//    ,btn: ['确定']
//    ,btnAlign: 'c'
//    ,moveType: 1 //拖拽模式，0或者1
//    ,content: '<div class="f18 text-c pdall20 color-focus">'+title+'</div><div style="padding: 50px; line-height: 22px; background-color: #ffffff; color: #555; font-weight: 300;">'+txt+'</div>'
//    ,success: function(layero){
//      if(yfun) yfun();
//    }
//  });

UI.warning = function(txt, yfun){
  layer.confirm('<div class="f18 text-c pd20 h100 color-focus"><img style="width:58px;height:48px" src="../doc/images/alert.png"></div><div class="f14 pd20 text-c" style="line-height:25px;">'+txt+'</div>', {
    title: '',
    btn: ['知道了'], //可以无限个按钮
    btnAlign: 'c',
    area: ['480px','250px']
  }, function(index, layero){
    layer.close(index);
    if(yfun) yfun();
  });
};
//自适应弹出框
UI.msgBox = function(title, txt){
  layer.open({
    title: ''
    ,content: '<div class="f18 text-c pd20 dt5 color-focus">'+title+'</div><div class="f14 pd20 dt10" style="line-height:25px;">'+txt+'</div>'
    ,area: ['400px']
    ,btnAlign: 'c'
  });
};
UI.confirm = function(txt, yfun, nfun){
  layer.confirm('<div class="bold f14 pdall20">'+txt+'</div>', {
    title: '',
    btnAlign: 'c',
    btn: ['确定', '取消'] //可以无限个按钮
  }, function(index, layero){
    layer.close(index);
    if(yfun) yfun();
  }, function(index){
    layer.close(index);
    if(nfun) nfun();
  });
};
UI.confirmDialog = function(title, txt, yfun, nfun){
  layer.confirm('<div class="bold f14 pdall20">'+txt+'</div>', {
    title: title,
    btnAlign: 'c',
    btn: ['确定', '取消'] //可以无限个按钮
  }, function(index, layero){
    layer.close(index);
    if(yfun) yfun();
  }, function(index){
    layer.close(index);
    if(nfun) nfun();
  });
};
UI.html = function(url,w,h,sfun){
  if(w==0 && h==0){
    //弹出即全屏
    openBox = layer.open({
      type: 2,
      content: url,
      area: ['320px', '195px'],
      maxmin: true
    });
    layer.full(openBox);
  }else{
    var iWidth = document.documentElement.clientWidth; 
    var iHeight = document.documentElement.clientHeight+document.documentElement.scrollTop*2;
    if(w==0 || w>iWidth-10) w = iWidth-30;
    if(h==0 || h>iHeight-10) h = iHeight-30;
    openBox = layer.open({
      title: '',
      type: 2, 
      content: url, //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
      scrollbar: false,
      area: [w+'px', h+'px']
    });
  }
};
UI.loading = function(){
  var index = layer.load(1, {
    shade: [0.1,'#fff'] //0.1透明度的白色背景
  });
  loadingBox = index;
  return index;
}
UI.closeDialog = function(){
  if(openBox) layer.close(openBox);
  openBox = null;
}
UI.closeLoading = function(index){
  if(index) layer.close(index);
  index = null;
  if(loadingBox) layer.close(loadingBox);
  loadingBox = null;
}
UI.form = function(tip,formdiv){
  openBox = layer.open({
	  type: 1,
	  content: formdiv //这里content是一个DOM(如 $('#id'))，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
	});

};
UI.selfHtml = function(url,w,h,sfun,pos){
	var h = pos.getBoundingClientRect().top;
	var w = pos.getBoundingClientRect().left-235;
	if(h > $(window).height()/2){
		h = h-310;
	}else{
		h = h+35;
	}
	var coordinate = [];
	coordinate[0] = h +'px';
	coordinate[1] = w +'px';
	
	openBox = layer.open({
	  title: '',
	  type: 2, 
	  shade: false,
	  content: url, //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
	  area: ['300px', '300px'],
	  offset: coordinate
	});
};
UI.closeFormBox = function(formdiv){
  if(openBox) layer.close(openBox);
  openBox = null;
};

util.UI = {};
util.UI.msg = UI.msg;
util.UI.warning = UI.warning;
util.UI.msgDialog = UI.msgDialog;
util.UI.msgBox = UI.msgBox;
util.UI.err = UI.err; 
util.UI.confirm = UI.confirm;
util.UI.confirmDialog = UI.confirmDialog;
util.UI.html = UI.html;
util.UI.loading = UI.loading;

util.UI.selfHtml = UI.selfHtml;
util.UI.form = UI.form;
util.UI.closeFormBox = UI.closeFormBox;
util.UI.closeDialog = UI.closeDialog;
util.UI.closeLoading = UI.closeLoading;
})();

//****************************************************************
//************************** Input Check *************************
//****************************************************************
function intInput(o){
  o.value = o.value.replace(/\D/g,'');
}
function isNan(o, tipFlag){
  if(isNaN(o.value)){
    o.value = "";
    if(tipFlag) setError("输入有误，请重新输入！");
  }
}
function doubleInput(o,dotLen){
  var value = o.value;
  o.value = o.value.replace(/\D/g,'');
  if(value.toString().indexOf(".")<0){
    return;
  }
  var dot = '';
  if(dotLen > 0){
    dot = '.';
    for(var j=0;j<dotLen;j++) dot +='0';
  }
  if(isNaN(value) || value.length==0){
      o.value = '';
     return;
  }
  value = parseFloat(value).toFixed(dotLen);
  //if(value.toString().indexOf(".")<0) value = value.toString()+ dot;
  o.value = value;
}
function floatInput(o,s){
  o.value = formatFloat(o.value);
  if(isNaN(o.value) || o.value==''){
    if(s){ o.value = ''; return; }
    o.value = "0.00";
  }
}
function formatFloat(value){
  if(value.length==0) return "";
  value = parseFloat(value).toFixed(2);
  if(value.toString().indexOf(".")<0)
    value = value.toString()+".00";
  return value;
}

//****************************************************************
//************************** Cookie ******************************
//****************************************************************
(function(){
var Cookie = {};

var decode = decodeURIComponent;
var encode = encodeURIComponent;


/**
* Returns the cookie value for the given name.
*
* @param {String} name The name of the cookie to retrieve.
*
* @param {Function|Object} options (Optional) An object containing one or
*     more cookie options: raw (true/false) and converter (a function).
*     The converter function is run on the value before returning it. The
*     function is not used if the cookie doesn't exist. The function can be
*     passed instead of the options object for conveniently. When raw is
*     set to true, the cookie value is not URI decoded.
*
* @return {*} If no converter is specified, returns a string or undefined
*     if the cookie doesn't exist. If the converter is specified, returns
*     the value returned from the converter.
*/
Cookie.get = function(name, options) {
   validateCookieName(name);

   if (typeof options === 'function') {
       options = { converter: options };
   }
   else {
       options = options || {};
   }

   var cookies = parseCookieString(document.cookie, !options['raw']);
   return (options.converter || same)(cookies[name]);
};


/**
* Sets a cookie with a given name and value.
*
* @param {string} name The name of the cookie to set.
*
* @param {*} value The value to set for the cookie.
*
* @param {Object} options (Optional) An object containing one or more
*     cookie options: path (a string), domain (a string),
*     expires (number or a Date object), secure (true/false),
*     and raw (true/false). Setting raw to true indicates that the cookie
*     should not be URI encoded before being set.
*
* @return {string} The created cookie string.
*/
Cookie.set = function(name, value, options) {
   validateCookieName(name);

   options = options || {};
   var expires = options['expires'];
   var domain = options['domain'];
   var path = options['path'];

   if (!options['raw']) {
       value = encode(String(value));
   }

   var text = name + '=' + value;

   // expires
   var date = expires;
   if (typeof date === 'number') {
       date = new Date();
       date.setDate(date.getDate() + expires);
   }
   if (date instanceof Date) {
       text += '; expires=' + date.toUTCString();
   }

   // domain
   if (isNonEmptyString(domain)) {
       text += '; domain=' + domain;
   }

   // path
   if (isNonEmptyString(path)) {
       text += '; path=' + path;
   }

   // secure
   if (options['secure']) {
       text += '; secure';
   }

   document.cookie = text;
   return text;
};


/**
* Removes a cookie from the machine by setting its expiration date to
* sometime in the past.
*
* @param {string} name The name of the cookie to remove.
*
* @param {Object} options (Optional) An object containing one or more
*     cookie options: path (a string), domain (a string),
*     and secure (true/false). The expires option will be overwritten
*     by the method.
*
* @return {string} The created cookie string.
*/
Cookie.remove = function(name, options) {
   options = options || {};
   var oDate = new Date();
   oDate.setDate(oDate.getDate() - 1);
   options['expires'] = oDate;
   return this.set(name, '', options);
};


function parseCookieString(text, shouldDecode) {
   var cookies = {};

   if (isString(text) && text.length > 0) {

       var decodeValue = shouldDecode ? decode : same;
       var cookieParts = text.split(/;\s/g);
       var cookieName;
       var cookieValue;
       var cookieNameValue;

       for (var i = 0, len = cookieParts.length; i < len; i++) {

           // Check for normally-formatted cookie (name-value)
           cookieNameValue = cookieParts[i].match(/([^=]+)=/i);
           if (cookieNameValue instanceof Array) {
               try {
                   cookieName = decode(cookieNameValue[1]);
                   cookieValue = decodeValue(cookieParts[i]
                           .substring(cookieNameValue[1].length + 1));
               } catch (ex) {
                   // Intentionally ignore the cookie -
                   // the encoding is wrong
               }
           } else {
               // Means the cookie does not have an "=", so treat it as
               // a boolean flag
               cookieName = decode(cookieParts[i]);
               cookieValue = '';
           }

           if (cookieName) {
               cookies[cookieName] = cookieValue;
           }
       }

   }

   return cookies;
}


// Helpers

function isString(o) {
   return typeof o === 'string';
}

function isNonEmptyString(s) {
   return isString(s) && s !== '';
}

function validateCookieName(name) {
   if (!isNonEmptyString(name)) {
       throw new TypeError('Cookie name must be a non-empty string');
   }
}

function same(s) {
   return s;
}


// 包装为本项目使用的Cookie
// 默认domain和path参数
var domain = '.ace-elite.com';
var path = '/';
util.Cookie = {};
util.Cookie.get = Cookie.get;
util.Cookie.remove = Cookie.remove;

//util.Cookie.set = function(name, value, options) {
//	 options = options || {};
//	 options.domain = options.domain || domain;
//	 options.path = options.path || path;
//	 Cookie.set(name, value, options);
//	};
util.Cookie.set = function(name, value, time) {
	 options = {};
	 options.expires = options.expires || time;
	 Cookie.set(name, value, options);
	};
})();








//****************************************************************
//************************** DES ******************************
//****************************************************************
function desE(s){
	var encrypted = CryptoJS.DES.encrypt(
	                 s,
	                 keyHex,
	                 {mode: CryptoJS.mode.ECB, padding: CryptoJS.pad.Pkcs7});
	return encrypted.ciphertext.toString(CryptoJS.enc.Utf16).toUpperCase();
}
function desD(s){
    var decrypted = CryptoJS.DES.decrypt({
      ciphertext: CryptoJS.enc.Base64.parse(s)
    }, keyHex, {
      mode: CryptoJS.mode.ECB,
      padding: CryptoJS.pad.Pkcs7
    });
    return decrypted.toString(CryptoJS.enc.Utf8);
}
function md5(s){
	return CryptoJS.MD5(s).toString();
}



/*
 * DES: tripledes.js
 */
/*
CryptoJS v3.1.2
code.google.com/p/crypto-js
(c) 2009-2013 by Jeff Mott. All rights reserved.
code.google.com/p/crypto-js/wiki/License
*/
var CryptoJS=CryptoJS||function(u,l){var d={},n=d.lib={},p=function(){},s=n.Base={extend:function(a){p.prototype=this;var c=new p;a&&c.mixIn(a);c.hasOwnProperty("init")||(c.init=function(){c.$super.init.apply(this,arguments)});c.init.prototype=c;c.$super=this;return c},create:function(){var a=this.extend();a.init.apply(a,arguments);return a},init:function(){},mixIn:function(a){for(var c in a)a.hasOwnProperty(c)&&(this[c]=a[c]);a.hasOwnProperty("toString")&&(this.toString=a.toString)},clone:function(){return this.init.prototype.extend(this)}},
q=n.WordArray=s.extend({init:function(a,c){a=this.words=a||[];this.sigBytes=c!=l?c:4*a.length},toString:function(a){return(a||v).stringify(this)},concat:function(a){var c=this.words,m=a.words,f=this.sigBytes;a=a.sigBytes;this.clamp();if(f%4)for(var t=0;t<a;t++)c[f+t>>>2]|=(m[t>>>2]>>>24-8*(t%4)&255)<<24-8*((f+t)%4);else if(65535<m.length)for(t=0;t<a;t+=4)c[f+t>>>2]=m[t>>>2];else c.push.apply(c,m);this.sigBytes+=a;return this},clamp:function(){var a=this.words,c=this.sigBytes;a[c>>>2]&=4294967295<<
32-8*(c%4);a.length=u.ceil(c/4)},clone:function(){var a=s.clone.call(this);a.words=this.words.slice(0);return a},random:function(a){for(var c=[],m=0;m<a;m+=4)c.push(4294967296*u.random()|0);return new q.init(c,a)}}),w=d.enc={},v=w.Hex={stringify:function(a){var c=a.words;a=a.sigBytes;for(var m=[],f=0;f<a;f++){var t=c[f>>>2]>>>24-8*(f%4)&255;m.push((t>>>4).toString(16));m.push((t&15).toString(16))}return m.join("")},parse:function(a){for(var c=a.length,m=[],f=0;f<c;f+=2)m[f>>>3]|=parseInt(a.substr(f,
2),16)<<24-4*(f%8);return new q.init(m,c/2)}},b=w.Latin1={stringify:function(a){var c=a.words;a=a.sigBytes;for(var m=[],f=0;f<a;f++)m.push(String.fromCharCode(c[f>>>2]>>>24-8*(f%4)&255));return m.join("")},parse:function(a){for(var c=a.length,m=[],f=0;f<c;f++)m[f>>>2]|=(a.charCodeAt(f)&255)<<24-8*(f%4);return new q.init(m,c)}},x=w.Utf8={stringify:function(a){try{return decodeURIComponent(escape(b.stringify(a)))}catch(c){throw Error("Malformed UTF-8 data");}},parse:function(a){return b.parse(unescape(encodeURIComponent(a)))}},
r=n.BufferedBlockAlgorithm=s.extend({reset:function(){this._data=new q.init;this._nDataBytes=0},_append:function(a){"string"==typeof a&&(a=x.parse(a));this._data.concat(a);this._nDataBytes+=a.sigBytes},_process:function(a){var c=this._data,m=c.words,f=c.sigBytes,t=this.blockSize,b=f/(4*t),b=a?u.ceil(b):u.max((b|0)-this._minBufferSize,0);a=b*t;f=u.min(4*a,f);if(a){for(var e=0;e<a;e+=t)this._doProcessBlock(m,e);e=m.splice(0,a);c.sigBytes-=f}return new q.init(e,f)},clone:function(){var a=s.clone.call(this);
a._data=this._data.clone();return a},_minBufferSize:0});n.Hasher=r.extend({cfg:s.extend(),init:function(a){this.cfg=this.cfg.extend(a);this.reset()},reset:function(){r.reset.call(this);this._doReset()},update:function(a){this._append(a);this._process();return this},finalize:function(a){a&&this._append(a);return this._doFinalize()},blockSize:16,_createHelper:function(a){return function(c,m){return(new a.init(m)).finalize(c)}},_createHmacHelper:function(a){return function(c,m){return(new e.HMAC.init(a,
m)).finalize(c)}}});var e=d.algo={};return d}(Math);
(function(){var u=CryptoJS,l=u.lib.WordArray;u.enc.Base64={stringify:function(d){var n=d.words,l=d.sigBytes,s=this._map;d.clamp();d=[];for(var q=0;q<l;q+=3)for(var w=(n[q>>>2]>>>24-8*(q%4)&255)<<16|(n[q+1>>>2]>>>24-8*((q+1)%4)&255)<<8|n[q+2>>>2]>>>24-8*((q+2)%4)&255,v=0;4>v&&q+0.75*v<l;v++)d.push(s.charAt(w>>>6*(3-v)&63));if(n=s.charAt(64))for(;d.length%4;)d.push(n);return d.join("")},parse:function(d){var n=d.length,p=this._map,s=p.charAt(64);s&&(s=d.indexOf(s),-1!=s&&(n=s));for(var s=[],q=0,w=0;w<
n;w++)if(w%4){var v=p.indexOf(d.charAt(w-1))<<2*(w%4),b=p.indexOf(d.charAt(w))>>>6-2*(w%4);s[q>>>2]|=(v|b)<<24-8*(q%4);q++}return l.create(s,q)},_map:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="}})();
(function(u){function l(b,e,a,c,m,f,t){b=b+(e&a|~e&c)+m+t;return(b<<f|b>>>32-f)+e}function d(b,e,a,c,m,f,t){b=b+(e&c|a&~c)+m+t;return(b<<f|b>>>32-f)+e}function n(b,e,a,c,m,f,t){b=b+(e^a^c)+m+t;return(b<<f|b>>>32-f)+e}function p(b,e,a,c,m,f,t){b=b+(a^(e|~c))+m+t;return(b<<f|b>>>32-f)+e}for(var s=CryptoJS,q=s.lib,w=q.WordArray,v=q.Hasher,q=s.algo,b=[],x=0;64>x;x++)b[x]=4294967296*u.abs(u.sin(x+1))|0;q=q.MD5=v.extend({_doReset:function(){this._hash=new w.init([1732584193,4023233417,2562383102,271733878])},
_doProcessBlock:function(r,e){for(var a=0;16>a;a++){var c=e+a,m=r[c];r[c]=(m<<8|m>>>24)&16711935|(m<<24|m>>>8)&4278255360}var a=this._hash.words,c=r[e+0],m=r[e+1],f=r[e+2],t=r[e+3],y=r[e+4],q=r[e+5],s=r[e+6],w=r[e+7],v=r[e+8],u=r[e+9],x=r[e+10],z=r[e+11],A=r[e+12],B=r[e+13],C=r[e+14],D=r[e+15],g=a[0],h=a[1],j=a[2],k=a[3],g=l(g,h,j,k,c,7,b[0]),k=l(k,g,h,j,m,12,b[1]),j=l(j,k,g,h,f,17,b[2]),h=l(h,j,k,g,t,22,b[3]),g=l(g,h,j,k,y,7,b[4]),k=l(k,g,h,j,q,12,b[5]),j=l(j,k,g,h,s,17,b[6]),h=l(h,j,k,g,w,22,b[7]),
g=l(g,h,j,k,v,7,b[8]),k=l(k,g,h,j,u,12,b[9]),j=l(j,k,g,h,x,17,b[10]),h=l(h,j,k,g,z,22,b[11]),g=l(g,h,j,k,A,7,b[12]),k=l(k,g,h,j,B,12,b[13]),j=l(j,k,g,h,C,17,b[14]),h=l(h,j,k,g,D,22,b[15]),g=d(g,h,j,k,m,5,b[16]),k=d(k,g,h,j,s,9,b[17]),j=d(j,k,g,h,z,14,b[18]),h=d(h,j,k,g,c,20,b[19]),g=d(g,h,j,k,q,5,b[20]),k=d(k,g,h,j,x,9,b[21]),j=d(j,k,g,h,D,14,b[22]),h=d(h,j,k,g,y,20,b[23]),g=d(g,h,j,k,u,5,b[24]),k=d(k,g,h,j,C,9,b[25]),j=d(j,k,g,h,t,14,b[26]),h=d(h,j,k,g,v,20,b[27]),g=d(g,h,j,k,B,5,b[28]),k=d(k,g,
h,j,f,9,b[29]),j=d(j,k,g,h,w,14,b[30]),h=d(h,j,k,g,A,20,b[31]),g=n(g,h,j,k,q,4,b[32]),k=n(k,g,h,j,v,11,b[33]),j=n(j,k,g,h,z,16,b[34]),h=n(h,j,k,g,C,23,b[35]),g=n(g,h,j,k,m,4,b[36]),k=n(k,g,h,j,y,11,b[37]),j=n(j,k,g,h,w,16,b[38]),h=n(h,j,k,g,x,23,b[39]),g=n(g,h,j,k,B,4,b[40]),k=n(k,g,h,j,c,11,b[41]),j=n(j,k,g,h,t,16,b[42]),h=n(h,j,k,g,s,23,b[43]),g=n(g,h,j,k,u,4,b[44]),k=n(k,g,h,j,A,11,b[45]),j=n(j,k,g,h,D,16,b[46]),h=n(h,j,k,g,f,23,b[47]),g=p(g,h,j,k,c,6,b[48]),k=p(k,g,h,j,w,10,b[49]),j=p(j,k,g,h,
C,15,b[50]),h=p(h,j,k,g,q,21,b[51]),g=p(g,h,j,k,A,6,b[52]),k=p(k,g,h,j,t,10,b[53]),j=p(j,k,g,h,x,15,b[54]),h=p(h,j,k,g,m,21,b[55]),g=p(g,h,j,k,v,6,b[56]),k=p(k,g,h,j,D,10,b[57]),j=p(j,k,g,h,s,15,b[58]),h=p(h,j,k,g,B,21,b[59]),g=p(g,h,j,k,y,6,b[60]),k=p(k,g,h,j,z,10,b[61]),j=p(j,k,g,h,f,15,b[62]),h=p(h,j,k,g,u,21,b[63]);a[0]=a[0]+g|0;a[1]=a[1]+h|0;a[2]=a[2]+j|0;a[3]=a[3]+k|0},_doFinalize:function(){var b=this._data,e=b.words,a=8*this._nDataBytes,c=8*b.sigBytes;e[c>>>5]|=128<<24-c%32;var m=u.floor(a/
4294967296);e[(c+64>>>9<<4)+15]=(m<<8|m>>>24)&16711935|(m<<24|m>>>8)&4278255360;e[(c+64>>>9<<4)+14]=(a<<8|a>>>24)&16711935|(a<<24|a>>>8)&4278255360;b.sigBytes=4*(e.length+1);this._process();b=this._hash;e=b.words;for(a=0;4>a;a++)c=e[a],e[a]=(c<<8|c>>>24)&16711935|(c<<24|c>>>8)&4278255360;return b},clone:function(){var b=v.clone.call(this);b._hash=this._hash.clone();return b}});s.MD5=v._createHelper(q);s.HmacMD5=v._createHmacHelper(q)})(Math);
(function(){var u=CryptoJS,l=u.lib,d=l.Base,n=l.WordArray,l=u.algo,p=l.EvpKDF=d.extend({cfg:d.extend({keySize:4,hasher:l.MD5,iterations:1}),init:function(d){this.cfg=this.cfg.extend(d)},compute:function(d,l){for(var p=this.cfg,v=p.hasher.create(),b=n.create(),u=b.words,r=p.keySize,p=p.iterations;u.length<r;){e&&v.update(e);var e=v.update(d).finalize(l);v.reset();for(var a=1;a<p;a++)e=v.finalize(e),v.reset();b.concat(e)}b.sigBytes=4*r;return b}});u.EvpKDF=function(d,l,n){return p.create(n).compute(d,
l)}})();
CryptoJS.lib.Cipher||function(u){var l=CryptoJS,d=l.lib,n=d.Base,p=d.WordArray,s=d.BufferedBlockAlgorithm,q=l.enc.Base64,w=l.algo.EvpKDF,v=d.Cipher=s.extend({cfg:n.extend(),createEncryptor:function(m,a){return this.create(this._ENC_XFORM_MODE,m,a)},createDecryptor:function(m,a){return this.create(this._DEC_XFORM_MODE,m,a)},init:function(m,a,b){this.cfg=this.cfg.extend(b);this._xformMode=m;this._key=a;this.reset()},reset:function(){s.reset.call(this);this._doReset()},process:function(a){this._append(a);return this._process()},
finalize:function(a){a&&this._append(a);return this._doFinalize()},keySize:4,ivSize:4,_ENC_XFORM_MODE:1,_DEC_XFORM_MODE:2,_createHelper:function(m){return{encrypt:function(f,b,e){return("string"==typeof b?c:a).encrypt(m,f,b,e)},decrypt:function(f,b,e){return("string"==typeof b?c:a).decrypt(m,f,b,e)}}}});d.StreamCipher=v.extend({_doFinalize:function(){return this._process(!0)},blockSize:1});var b=l.mode={},x=function(a,f,b){var c=this._iv;c?this._iv=u:c=this._prevBlock;for(var e=0;e<b;e++)a[f+e]^=
c[e]},r=(d.BlockCipherMode=n.extend({createEncryptor:function(a,f){return this.Encryptor.create(a,f)},createDecryptor:function(a,f){return this.Decryptor.create(a,f)},init:function(a,f){this._cipher=a;this._iv=f}})).extend();r.Encryptor=r.extend({processBlock:function(a,f){var b=this._cipher,c=b.blockSize;x.call(this,a,f,c);b.encryptBlock(a,f);this._prevBlock=a.slice(f,f+c)}});r.Decryptor=r.extend({processBlock:function(a,b){var c=this._cipher,e=c.blockSize,d=a.slice(b,b+e);c.decryptBlock(a,b);x.call(this,
a,b,e);this._prevBlock=d}});b=b.CBC=r;r=(l.pad={}).Pkcs7={pad:function(a,b){for(var c=4*b,c=c-a.sigBytes%c,e=c<<24|c<<16|c<<8|c,d=[],l=0;l<c;l+=4)d.push(e);c=p.create(d,c);a.concat(c)},unpad:function(a){a.sigBytes-=a.words[a.sigBytes-1>>>2]&255}};d.BlockCipher=v.extend({cfg:v.cfg.extend({mode:b,padding:r}),reset:function(){v.reset.call(this);var a=this.cfg,c=a.iv,a=a.mode;if(this._xformMode==this._ENC_XFORM_MODE)var b=a.createEncryptor;else b=a.createDecryptor,this._minBufferSize=1;this._mode=b.call(a,
this,c&&c.words)},_doProcessBlock:function(a,c){this._mode.processBlock(a,c)},_doFinalize:function(){var a=this.cfg.padding;if(this._xformMode==this._ENC_XFORM_MODE){a.pad(this._data,this.blockSize);var c=this._process(!0)}else c=this._process(!0),a.unpad(c);return c},blockSize:4});var e=d.CipherParams=n.extend({init:function(a){this.mixIn(a)},toString:function(a){return(a||this.formatter).stringify(this)}}),b=(l.format={}).OpenSSL={stringify:function(a){var c=a.ciphertext;a=a.salt;return(a?p.create([1398893684,
1701076831]).concat(a).concat(c):c).toString(q)},parse:function(a){a=q.parse(a);var c=a.words;if(1398893684==c[0]&&1701076831==c[1]){var b=p.create(c.slice(2,4));c.splice(0,4);a.sigBytes-=16}return e.create({ciphertext:a,salt:b})}},a=d.SerializableCipher=n.extend({cfg:n.extend({format:b}),encrypt:function(a,c,b,d){d=this.cfg.extend(d);var l=a.createEncryptor(b,d);c=l.finalize(c);l=l.cfg;return e.create({ciphertext:c,key:b,iv:l.iv,algorithm:a,mode:l.mode,padding:l.padding,blockSize:a.blockSize,formatter:d.format})},
decrypt:function(a,c,b,e){e=this.cfg.extend(e);c=this._parse(c,e.format);return a.createDecryptor(b,e).finalize(c.ciphertext)},_parse:function(a,c){return"string"==typeof a?c.parse(a,this):a}}),l=(l.kdf={}).OpenSSL={execute:function(a,c,b,d){d||(d=p.random(8));a=w.create({keySize:c+b}).compute(a,d);b=p.create(a.words.slice(c),4*b);a.sigBytes=4*c;return e.create({key:a,iv:b,salt:d})}},c=d.PasswordBasedCipher=a.extend({cfg:a.cfg.extend({kdf:l}),encrypt:function(c,b,e,d){d=this.cfg.extend(d);e=d.kdf.execute(e,
c.keySize,c.ivSize);d.iv=e.iv;c=a.encrypt.call(this,c,b,e.key,d);c.mixIn(e);return c},decrypt:function(c,b,e,d){d=this.cfg.extend(d);b=this._parse(b,d.format);e=d.kdf.execute(e,c.keySize,c.ivSize,b.salt);d.iv=e.iv;return a.decrypt.call(this,c,b,e.key,d)}})}();
(function(){function u(b,a){var c=(this._lBlock>>>b^this._rBlock)&a;this._rBlock^=c;this._lBlock^=c<<b}function l(b,a){var c=(this._rBlock>>>b^this._lBlock)&a;this._lBlock^=c;this._rBlock^=c<<b}var d=CryptoJS,n=d.lib,p=n.WordArray,n=n.BlockCipher,s=d.algo,q=[57,49,41,33,25,17,9,1,58,50,42,34,26,18,10,2,59,51,43,35,27,19,11,3,60,52,44,36,63,55,47,39,31,23,15,7,62,54,46,38,30,22,14,6,61,53,45,37,29,21,13,5,28,20,12,4],w=[14,17,11,24,1,5,3,28,15,6,21,10,23,19,12,4,26,8,16,7,27,20,13,2,41,52,31,37,47,
55,30,40,51,45,33,48,44,49,39,56,34,53,46,42,50,36,29,32],v=[1,2,4,6,8,10,12,14,15,17,19,21,23,25,27,28],b=[{"0":8421888,268435456:32768,536870912:8421378,805306368:2,1073741824:512,1342177280:8421890,1610612736:8389122,1879048192:8388608,2147483648:514,2415919104:8389120,2684354560:33280,2952790016:8421376,3221225472:32770,3489660928:8388610,3758096384:0,4026531840:33282,134217728:0,402653184:8421890,671088640:33282,939524096:32768,1207959552:8421888,1476395008:512,1744830464:8421378,2013265920:2,
2281701376:8389120,2550136832:33280,2818572288:8421376,3087007744:8389122,3355443200:8388610,3623878656:32770,3892314112:514,4160749568:8388608,1:32768,268435457:2,536870913:8421888,805306369:8388608,1073741825:8421378,1342177281:33280,1610612737:512,1879048193:8389122,2147483649:8421890,2415919105:8421376,2684354561:8388610,2952790017:33282,3221225473:514,3489660929:8389120,3758096385:32770,4026531841:0,134217729:8421890,402653185:8421376,671088641:8388608,939524097:512,1207959553:32768,1476395009:8388610,
1744830465:2,2013265921:33282,2281701377:32770,2550136833:8389122,2818572289:514,3087007745:8421888,3355443201:8389120,3623878657:0,3892314113:33280,4160749569:8421378},{"0":1074282512,16777216:16384,33554432:524288,50331648:1074266128,67108864:1073741840,83886080:1074282496,100663296:1073758208,117440512:16,134217728:540672,150994944:1073758224,167772160:1073741824,184549376:540688,201326592:524304,218103808:0,234881024:16400,251658240:1074266112,8388608:1073758208,25165824:540688,41943040:16,58720256:1073758224,
75497472:1074282512,92274688:1073741824,109051904:524288,125829120:1074266128,142606336:524304,159383552:0,176160768:16384,192937984:1074266112,209715200:1073741840,226492416:540672,243269632:1074282496,260046848:16400,268435456:0,285212672:1074266128,301989888:1073758224,318767104:1074282496,335544320:1074266112,352321536:16,369098752:540688,385875968:16384,402653184:16400,419430400:524288,436207616:524304,452984832:1073741840,469762048:540672,486539264:1073758208,503316480:1073741824,520093696:1074282512,
276824064:540688,293601280:524288,310378496:1074266112,327155712:16384,343932928:1073758208,360710144:1074282512,377487360:16,394264576:1073741824,411041792:1074282496,427819008:1073741840,444596224:1073758224,461373440:524304,478150656:0,494927872:16400,511705088:1074266128,528482304:540672},{"0":260,1048576:0,2097152:67109120,3145728:65796,4194304:65540,5242880:67108868,6291456:67174660,7340032:67174400,8388608:67108864,9437184:67174656,10485760:65792,11534336:67174404,12582912:67109124,13631488:65536,
14680064:4,15728640:256,524288:67174656,1572864:67174404,2621440:0,3670016:67109120,4718592:67108868,5767168:65536,6815744:65540,7864320:260,8912896:4,9961472:256,11010048:67174400,12058624:65796,13107200:65792,14155776:67109124,15204352:67174660,16252928:67108864,16777216:67174656,17825792:65540,18874368:65536,19922944:67109120,20971520:256,22020096:67174660,23068672:67108868,24117248:0,25165824:67109124,26214400:67108864,27262976:4,28311552:65792,29360128:67174400,30408704:260,31457280:65796,32505856:67174404,
17301504:67108864,18350080:260,19398656:67174656,20447232:0,21495808:65540,22544384:67109120,23592960:256,24641536:67174404,25690112:65536,26738688:67174660,27787264:65796,28835840:67108868,29884416:67109124,30932992:67174400,31981568:4,33030144:65792},{"0":2151682048,65536:2147487808,131072:4198464,196608:2151677952,262144:0,327680:4198400,393216:2147483712,458752:4194368,524288:2147483648,589824:4194304,655360:64,720896:2147487744,786432:2151678016,851968:4160,917504:4096,983040:2151682112,32768:2147487808,
98304:64,163840:2151678016,229376:2147487744,294912:4198400,360448:2151682112,425984:0,491520:2151677952,557056:4096,622592:2151682048,688128:4194304,753664:4160,819200:2147483648,884736:4194368,950272:4198464,1015808:2147483712,1048576:4194368,1114112:4198400,1179648:2147483712,1245184:0,1310720:4160,1376256:2151678016,1441792:2151682048,1507328:2147487808,1572864:2151682112,1638400:2147483648,1703936:2151677952,1769472:4198464,1835008:2147487744,1900544:4194304,1966080:64,2031616:4096,1081344:2151677952,
1146880:2151682112,1212416:0,1277952:4198400,1343488:4194368,1409024:2147483648,1474560:2147487808,1540096:64,1605632:2147483712,1671168:4096,1736704:2147487744,1802240:2151678016,1867776:4160,1933312:2151682048,1998848:4194304,2064384:4198464},{"0":128,4096:17039360,8192:262144,12288:536870912,16384:537133184,20480:16777344,24576:553648256,28672:262272,32768:16777216,36864:537133056,40960:536871040,45056:553910400,49152:553910272,53248:0,57344:17039488,61440:553648128,2048:17039488,6144:553648256,
10240:128,14336:17039360,18432:262144,22528:537133184,26624:553910272,30720:536870912,34816:537133056,38912:0,43008:553910400,47104:16777344,51200:536871040,55296:553648128,59392:16777216,63488:262272,65536:262144,69632:128,73728:536870912,77824:553648256,81920:16777344,86016:553910272,90112:537133184,94208:16777216,98304:553910400,102400:553648128,106496:17039360,110592:537133056,114688:262272,118784:536871040,122880:0,126976:17039488,67584:553648256,71680:16777216,75776:17039360,79872:537133184,
83968:536870912,88064:17039488,92160:128,96256:553910272,100352:262272,104448:553910400,108544:0,112640:553648128,116736:16777344,120832:262144,124928:537133056,129024:536871040},{"0":268435464,256:8192,512:270532608,768:270540808,1024:268443648,1280:2097152,1536:2097160,1792:268435456,2048:0,2304:268443656,2560:2105344,2816:8,3072:270532616,3328:2105352,3584:8200,3840:270540800,128:270532608,384:270540808,640:8,896:2097152,1152:2105352,1408:268435464,1664:268443648,1920:8200,2176:2097160,2432:8192,
2688:268443656,2944:270532616,3200:0,3456:270540800,3712:2105344,3968:268435456,4096:268443648,4352:270532616,4608:270540808,4864:8200,5120:2097152,5376:268435456,5632:268435464,5888:2105344,6144:2105352,6400:0,6656:8,6912:270532608,7168:8192,7424:268443656,7680:270540800,7936:2097160,4224:8,4480:2105344,4736:2097152,4992:268435464,5248:268443648,5504:8200,5760:270540808,6016:270532608,6272:270540800,6528:270532616,6784:8192,7040:2105352,7296:2097160,7552:0,7808:268435456,8064:268443656},{"0":1048576,
16:33555457,32:1024,48:1049601,64:34604033,80:0,96:1,112:34603009,128:33555456,144:1048577,160:33554433,176:34604032,192:34603008,208:1025,224:1049600,240:33554432,8:34603009,24:0,40:33555457,56:34604032,72:1048576,88:33554433,104:33554432,120:1025,136:1049601,152:33555456,168:34603008,184:1048577,200:1024,216:34604033,232:1,248:1049600,256:33554432,272:1048576,288:33555457,304:34603009,320:1048577,336:33555456,352:34604032,368:1049601,384:1025,400:34604033,416:1049600,432:1,448:0,464:34603008,480:33554433,
496:1024,264:1049600,280:33555457,296:34603009,312:1,328:33554432,344:1048576,360:1025,376:34604032,392:33554433,408:34603008,424:0,440:34604033,456:1049601,472:1024,488:33555456,504:1048577},{"0":134219808,1:131072,2:134217728,3:32,4:131104,5:134350880,6:134350848,7:2048,8:134348800,9:134219776,10:133120,11:134348832,12:2080,13:0,14:134217760,15:133152,2147483648:2048,2147483649:134350880,2147483650:134219808,2147483651:134217728,2147483652:134348800,2147483653:133120,2147483654:133152,2147483655:32,
2147483656:134217760,2147483657:2080,2147483658:131104,2147483659:134350848,2147483660:0,2147483661:134348832,2147483662:134219776,2147483663:131072,16:133152,17:134350848,18:32,19:2048,20:134219776,21:134217760,22:134348832,23:131072,24:0,25:131104,26:134348800,27:134219808,28:134350880,29:133120,30:2080,31:134217728,2147483664:131072,2147483665:2048,2147483666:134348832,2147483667:133152,2147483668:32,2147483669:134348800,2147483670:134217728,2147483671:134219808,2147483672:134350880,2147483673:134217760,
2147483674:134219776,2147483675:0,2147483676:133120,2147483677:2080,2147483678:131104,2147483679:134350848}],x=[4160749569,528482304,33030144,2064384,129024,8064,504,2147483679],r=s.DES=n.extend({_doReset:function(){for(var b=this._key.words,a=[],c=0;56>c;c++){var d=q[c]-1;a[c]=b[d>>>5]>>>31-d%32&1}b=this._subKeys=[];for(d=0;16>d;d++){for(var f=b[d]=[],l=v[d],c=0;24>c;c++)f[c/6|0]|=a[(w[c]-1+l)%28]<<31-c%6,f[4+(c/6|0)]|=a[28+(w[c+24]-1+l)%28]<<31-c%6;f[0]=f[0]<<1|f[0]>>>31;for(c=1;7>c;c++)f[c]>>>=
4*(c-1)+3;f[7]=f[7]<<5|f[7]>>>27}a=this._invSubKeys=[];for(c=0;16>c;c++)a[c]=b[15-c]},encryptBlock:function(b,a){this._doCryptBlock(b,a,this._subKeys)},decryptBlock:function(b,a){this._doCryptBlock(b,a,this._invSubKeys)},_doCryptBlock:function(e,a,c){this._lBlock=e[a];this._rBlock=e[a+1];u.call(this,4,252645135);u.call(this,16,65535);l.call(this,2,858993459);l.call(this,8,16711935);u.call(this,1,1431655765);for(var d=0;16>d;d++){for(var f=c[d],n=this._lBlock,p=this._rBlock,q=0,r=0;8>r;r++)q|=b[r][((p^
f[r])&x[r])>>>0];this._lBlock=p;this._rBlock=n^q}c=this._lBlock;this._lBlock=this._rBlock;this._rBlock=c;u.call(this,1,1431655765);l.call(this,8,16711935);l.call(this,2,858993459);u.call(this,16,65535);u.call(this,4,252645135);e[a]=this._lBlock;e[a+1]=this._rBlock},keySize:2,ivSize:2,blockSize:2});d.DES=n._createHelper(r);s=s.TripleDES=n.extend({_doReset:function(){var b=this._key.words;this._des1=r.createEncryptor(p.create(b.slice(0,2)));this._des2=r.createEncryptor(p.create(b.slice(2,4)));this._des3=
r.createEncryptor(p.create(b.slice(4,6)))},encryptBlock:function(b,a){this._des1.encryptBlock(b,a);this._des2.decryptBlock(b,a);this._des3.encryptBlock(b,a)},decryptBlock:function(b,a){this._des3.decryptBlock(b,a);this._des2.encryptBlock(b,a);this._des1.decryptBlock(b,a)},keySize:6,ivSize:2,blockSize:2});d.TripleDES=n._createHelper(s)})();


/*
 * DES: mode-ecb.js
 */
CryptoJS.mode.ECB = (function () {
    var ECB = CryptoJS.lib.BlockCipherMode.extend();

    ECB.Encryptor = ECB.extend({
        processBlock: function (words, offset) {
            this._cipher.encryptBlock(words, offset);
        }
    });

    ECB.Decryptor = ECB.extend({
        processBlock: function (words, offset) {
            this._cipher.decryptBlock(words, offset);
        }
    });

    return ECB;
}());
var keyHex = CryptoJS.enc.Utf8.parse('_LSHJGV@');

/*
 * DES: md5.js
 */
/*
CryptoJS v3.1.2
code.google.com/p/crypto-js
(c) 2009-2013 by Jeff Mott. All rights reserved.
code.google.com/p/crypto-js/wiki/License
*/
var CryptoJS=CryptoJS||function(s,p){var m={},l=m.lib={},n=function(){},r=l.Base={extend:function(b){n.prototype=this;var h=new n;b&&h.mixIn(b);h.hasOwnProperty("init")||(h.init=function(){h.$super.init.apply(this,arguments)});h.init.prototype=h;h.$super=this;return h},create:function(){var b=this.extend();b.init.apply(b,arguments);return b},init:function(){},mixIn:function(b){for(var h in b)b.hasOwnProperty(h)&&(this[h]=b[h]);b.hasOwnProperty("toString")&&(this.toString=b.toString)},clone:function(){return this.init.prototype.extend(this)}},
q=l.WordArray=r.extend({init:function(b,h){b=this.words=b||[];this.sigBytes=h!=p?h:4*b.length},toString:function(b){return(b||t).stringify(this)},concat:function(b){var h=this.words,a=b.words,j=this.sigBytes;b=b.sigBytes;this.clamp();if(j%4)for(var g=0;g<b;g++)h[j+g>>>2]|=(a[g>>>2]>>>24-8*(g%4)&255)<<24-8*((j+g)%4);else if(65535<a.length)for(g=0;g<b;g+=4)h[j+g>>>2]=a[g>>>2];else h.push.apply(h,a);this.sigBytes+=b;return this},clamp:function(){var b=this.words,h=this.sigBytes;b[h>>>2]&=4294967295<<
32-8*(h%4);b.length=s.ceil(h/4)},clone:function(){var b=r.clone.call(this);b.words=this.words.slice(0);return b},random:function(b){for(var h=[],a=0;a<b;a+=4)h.push(4294967296*s.random()|0);return new q.init(h,b)}}),v=m.enc={},t=v.Hex={stringify:function(b){var a=b.words;b=b.sigBytes;for(var g=[],j=0;j<b;j++){var k=a[j>>>2]>>>24-8*(j%4)&255;g.push((k>>>4).toString(16));g.push((k&15).toString(16))}return g.join("")},parse:function(b){for(var a=b.length,g=[],j=0;j<a;j+=2)g[j>>>3]|=parseInt(b.substr(j,
2),16)<<24-4*(j%8);return new q.init(g,a/2)}},a=v.Latin1={stringify:function(b){var a=b.words;b=b.sigBytes;for(var g=[],j=0;j<b;j++)g.push(String.fromCharCode(a[j>>>2]>>>24-8*(j%4)&255));return g.join("")},parse:function(b){for(var a=b.length,g=[],j=0;j<a;j++)g[j>>>2]|=(b.charCodeAt(j)&255)<<24-8*(j%4);return new q.init(g,a)}},u=v.Utf8={stringify:function(b){try{return decodeURIComponent(escape(a.stringify(b)))}catch(g){throw Error("Malformed UTF-8 data");}},parse:function(b){return a.parse(unescape(encodeURIComponent(b)))}},
g=l.BufferedBlockAlgorithm=r.extend({reset:function(){this._data=new q.init;this._nDataBytes=0},_append:function(b){"string"==typeof b&&(b=u.parse(b));this._data.concat(b);this._nDataBytes+=b.sigBytes},_process:function(b){var a=this._data,g=a.words,j=a.sigBytes,k=this.blockSize,m=j/(4*k),m=b?s.ceil(m):s.max((m|0)-this._minBufferSize,0);b=m*k;j=s.min(4*b,j);if(b){for(var l=0;l<b;l+=k)this._doProcessBlock(g,l);l=g.splice(0,b);a.sigBytes-=j}return new q.init(l,j)},clone:function(){var b=r.clone.call(this);
b._data=this._data.clone();return b},_minBufferSize:0});l.Hasher=g.extend({cfg:r.extend(),init:function(b){this.cfg=this.cfg.extend(b);this.reset()},reset:function(){g.reset.call(this);this._doReset()},update:function(b){this._append(b);this._process();return this},finalize:function(b){b&&this._append(b);return this._doFinalize()},blockSize:16,_createHelper:function(b){return function(a,g){return(new b.init(g)).finalize(a)}},_createHmacHelper:function(b){return function(a,g){return(new k.HMAC.init(b,
g)).finalize(a)}}});var k=m.algo={};return m}(Math);
(function(s){function p(a,k,b,h,l,j,m){a=a+(k&b|~k&h)+l+m;return(a<<j|a>>>32-j)+k}function m(a,k,b,h,l,j,m){a=a+(k&h|b&~h)+l+m;return(a<<j|a>>>32-j)+k}function l(a,k,b,h,l,j,m){a=a+(k^b^h)+l+m;return(a<<j|a>>>32-j)+k}function n(a,k,b,h,l,j,m){a=a+(b^(k|~h))+l+m;return(a<<j|a>>>32-j)+k}for(var r=CryptoJS,q=r.lib,v=q.WordArray,t=q.Hasher,q=r.algo,a=[],u=0;64>u;u++)a[u]=4294967296*s.abs(s.sin(u+1))|0;q=q.MD5=t.extend({_doReset:function(){this._hash=new v.init([1732584193,4023233417,2562383102,271733878])},
_doProcessBlock:function(g,k){for(var b=0;16>b;b++){var h=k+b,w=g[h];g[h]=(w<<8|w>>>24)&16711935|(w<<24|w>>>8)&4278255360}var b=this._hash.words,h=g[k+0],w=g[k+1],j=g[k+2],q=g[k+3],r=g[k+4],s=g[k+5],t=g[k+6],u=g[k+7],v=g[k+8],x=g[k+9],y=g[k+10],z=g[k+11],A=g[k+12],B=g[k+13],C=g[k+14],D=g[k+15],c=b[0],d=b[1],e=b[2],f=b[3],c=p(c,d,e,f,h,7,a[0]),f=p(f,c,d,e,w,12,a[1]),e=p(e,f,c,d,j,17,a[2]),d=p(d,e,f,c,q,22,a[3]),c=p(c,d,e,f,r,7,a[4]),f=p(f,c,d,e,s,12,a[5]),e=p(e,f,c,d,t,17,a[6]),d=p(d,e,f,c,u,22,a[7]),
c=p(c,d,e,f,v,7,a[8]),f=p(f,c,d,e,x,12,a[9]),e=p(e,f,c,d,y,17,a[10]),d=p(d,e,f,c,z,22,a[11]),c=p(c,d,e,f,A,7,a[12]),f=p(f,c,d,e,B,12,a[13]),e=p(e,f,c,d,C,17,a[14]),d=p(d,e,f,c,D,22,a[15]),c=m(c,d,e,f,w,5,a[16]),f=m(f,c,d,e,t,9,a[17]),e=m(e,f,c,d,z,14,a[18]),d=m(d,e,f,c,h,20,a[19]),c=m(c,d,e,f,s,5,a[20]),f=m(f,c,d,e,y,9,a[21]),e=m(e,f,c,d,D,14,a[22]),d=m(d,e,f,c,r,20,a[23]),c=m(c,d,e,f,x,5,a[24]),f=m(f,c,d,e,C,9,a[25]),e=m(e,f,c,d,q,14,a[26]),d=m(d,e,f,c,v,20,a[27]),c=m(c,d,e,f,B,5,a[28]),f=m(f,c,
d,e,j,9,a[29]),e=m(e,f,c,d,u,14,a[30]),d=m(d,e,f,c,A,20,a[31]),c=l(c,d,e,f,s,4,a[32]),f=l(f,c,d,e,v,11,a[33]),e=l(e,f,c,d,z,16,a[34]),d=l(d,e,f,c,C,23,a[35]),c=l(c,d,e,f,w,4,a[36]),f=l(f,c,d,e,r,11,a[37]),e=l(e,f,c,d,u,16,a[38]),d=l(d,e,f,c,y,23,a[39]),c=l(c,d,e,f,B,4,a[40]),f=l(f,c,d,e,h,11,a[41]),e=l(e,f,c,d,q,16,a[42]),d=l(d,e,f,c,t,23,a[43]),c=l(c,d,e,f,x,4,a[44]),f=l(f,c,d,e,A,11,a[45]),e=l(e,f,c,d,D,16,a[46]),d=l(d,e,f,c,j,23,a[47]),c=n(c,d,e,f,h,6,a[48]),f=n(f,c,d,e,u,10,a[49]),e=n(e,f,c,d,
C,15,a[50]),d=n(d,e,f,c,s,21,a[51]),c=n(c,d,e,f,A,6,a[52]),f=n(f,c,d,e,q,10,a[53]),e=n(e,f,c,d,y,15,a[54]),d=n(d,e,f,c,w,21,a[55]),c=n(c,d,e,f,v,6,a[56]),f=n(f,c,d,e,D,10,a[57]),e=n(e,f,c,d,t,15,a[58]),d=n(d,e,f,c,B,21,a[59]),c=n(c,d,e,f,r,6,a[60]),f=n(f,c,d,e,z,10,a[61]),e=n(e,f,c,d,j,15,a[62]),d=n(d,e,f,c,x,21,a[63]);b[0]=b[0]+c|0;b[1]=b[1]+d|0;b[2]=b[2]+e|0;b[3]=b[3]+f|0},_doFinalize:function(){var a=this._data,k=a.words,b=8*this._nDataBytes,h=8*a.sigBytes;k[h>>>5]|=128<<24-h%32;var l=s.floor(b/
4294967296);k[(h+64>>>9<<4)+15]=(l<<8|l>>>24)&16711935|(l<<24|l>>>8)&4278255360;k[(h+64>>>9<<4)+14]=(b<<8|b>>>24)&16711935|(b<<24|b>>>8)&4278255360;a.sigBytes=4*(k.length+1);this._process();a=this._hash;k=a.words;for(b=0;4>b;b++)h=k[b],k[b]=(h<<8|h>>>24)&16711935|(h<<24|h>>>8)&4278255360;return a},clone:function(){var a=t.clone.call(this);a._hash=this._hash.clone();return a}});r.MD5=t._createHelper(q);r.HmacMD5=t._createHmacHelper(q)})(Math);
