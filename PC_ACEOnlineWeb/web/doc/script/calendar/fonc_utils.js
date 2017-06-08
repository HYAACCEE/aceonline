var def_format = "yy年mm月dd日";
var def_minYear = new Date().getFullYear()-100;
var def_maxYear = new Date().getFullYear()+100;
var def_year = new Date().getFullYear();
var def_month = new Date().getMonth()+1;
var def_day = new Date().getDate();

function popCalendarList(ids, minY, maxY, myformat){
  if(isUndefined(myformat)) myformat = def_format;
  if(isUndefined(minY)) minY = def_minYear;
  if(isUndefined(maxY)) maxY = def_maxYear;
  
  $jq(function() {
    for(var i =0; i<ids.length; i++){
      Calendar_Util($jq("#"+ids[i]),minY+"年01月01日",maxY+"年12月31日",myformat);
    }
  });
}
function popCalendar(inpID, minY, maxY, myformat){
  if(isUndefined(myformat)) myformat = def_format;
  if(isUndefined(minY)) minY = def_minYear;
  if(isUndefined(maxY)) maxY = def_maxYear;
  
  $jq(function() {
    Calendar_Util($jq("#"+inpID),minY+"年01月01日",maxY+"年12月31日",myformat);
  });
}
function Calendar_FromToday(inpID){
  $jq(function() {
    Calendar_Util($jq("#"+inpID),def_year+"年"+def_month+"月"+def_day+"日",def_maxYear+"年12月31日",def_format);
  });
}
function Calendar_Util(jq,minY,maxY,myformat){
   jq.datepicker({changeYear: true,changeMonth: true,dateFormat: myformat,buttonImageOnly: true,buttonImage:"../doc/script/calendar/images/calendar.png",showOn:"focus" });  //showOn:"both"
   jq.datepicker( "option", "minDate", minY);   
   jq.datepicker( "option", "maxDate", maxY);
}


var $jq = jQuery.noConflict();
$jq(document).ready(
  function () {
	$jq('.inf_t').corner({ tl: { radius: 8 }, tr: { radius: 8 }, bl: false, br: false, antiAlias: true, autoPad: true, validTags: ["div"] });
	$jq('.inf_seul').corner({tl: { radius: 8 },tr: { radius: 8 },bl: { radius: 8 },br: { radius: 8 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.inf_te').corner({tl: false,tr: false,bl: { radius: 8 },br: { radius: 8 },antiAlias: true,autoPad: true,validTags: ["div"] });    
	$jq('.my_load').corner({tl: { radius: 8 },tr: { radius: 8 },bl: { radius: 8 },br: { radius: 8 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.logo').corner({tl: { radius: 8 },tr: { radius: 8 },bl: { radius: 8 },br: { radius: 8 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.show_list_cookie').corner({tl: false,tr: { radius: 4 },bl: false,br: { radius: 4 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.contner2_cookie_list').corner({tl: false,tr: false,bl: false,br: { radius: 4 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.show_widget_left').corner({tl: false,tr: { radius: 4 },bl: false,br: { radius: 4 },antiAlias: true,autoPad: true,validTags: ["div"] });   
	$jq('.show_widget_right').corner({tl: { radius: 4 },tr: false,bl: { radius: 4 },br: false,antiAlias: true,autoPad: true,validTags: ["div"] });
	});
	  
jQuery.fn.corner = function(options) {
        var settings = {tl: { radius: 8 },tr: { radius: 8 },bl: { radius: 8 },br: { radius: 8 },antiAlias: true,autoPad: true,validTags: ["div"] };
        if (options && typeof(options) != 'string') jQuery.extend(settings, options);
   
		return this.each(function() { new curvyCorners(settings,this).applyCornersToAll(); });     
};
jQuery.fn.saveClicks = function() { $jq(this).bind('mousedown.clickmap', function(evt) {
	var x0 = xm1 - $jq("#contenu").offset().left; var y0 = ym1 - $jq("#contenu").offset().top; var g0=getElementsByClass('nav2', document, 'ul')[0] ? true : false; 
	$jq.post('/Tools/clickmap/clickmap.php', { x:x0, y:y0, l:escape(document.location.pathname) , n:navigator.userAgent.toLowerCase() , g:g0 });  }); }; 
	
   /*document.writeOrig=document.write;
   document.write=function (vari) { 
		if(domloaded &&(vari.indexOf("</script>")>0)&&(vari.indexOf("src=")>0)) { 
			vari=vari.substr(vari.indexOf("src")); 	var reg=/[\"\']([^\"\']+)/;	var tb=vari.match(reg); loadingJS_After(tb[1]);
		} else document.writeOrig(vari); 
	};*/
   
// Fonction de stockage des scripts � charger 
var FuncOL = new Array(); 
function addonload(Obj) { FuncOL[FuncOL.length] = Obj; } 

// Fonction de stockage des scripts � d�charger 
var FuncOUL = new Array(); 
function addonunload(Obj) { FuncOUL[FuncOUL.length] = Obj; }    
// Execution des scripts au chargement de la page 
var domloaded=false;  
window.onload = function() { domloaded=true; for(var i=0; i<FuncOL.length; i++) { FuncOL[i]();} }

// Execution des scripts au d�chargement de la page 
var domunloaded=false;  
window.onunload = function() { domunloaded=true; for(var i=0; i<FuncOUL.length; i++) {FuncOUL[i]();} }

//Callback iframe
function iframe_callback(func) { if(parent.eval(func)) addonload(parent.eval(func)); }	

/* Creation de l'objet Ajax */
function getXhr() {
	var xhr = null; 
	if(window.XMLHttpRequest)  xhr = new XMLHttpRequest();  // Firefox et autres
	else if(window.ActiveXObject){ // Internet Explorer 
	   try { xhr = new ActiveXObject("Msxml2.XMLHTTP"); }
	   catch (e) { xhr = new ActiveXObject("Microsoft.XMLHTTP"); }
	}
	else {  xhr = false;  /*alert("Ajax Error - HttpRequest unsupported");*/ } // XMLHttpRequest non support� par le navigateur 
	return xhr;
}

// Fonction de stockage des scripts � charger 
var FuncJS = new Array(); 
function addjs_after(Obj) { FuncJS[FuncJS.length] = Obj; } 
function loadjs_after() {  for(var i=0; i<FuncJS.length; i++) { loadingJS_After(FuncJS[i]); } }
function loadingJS_After(source) { var xjs=document.createElement('script'); xjs.src=source; xjs.type="text/javascript"; document.getElementsByTagName('head')[0].appendChild(xjs); }
addonload(loadjs_after);

// Fonction de stockage des css � charger 
var FuncCSS = new Array(); 
FuncCSS['Media']=new Array();
function addcss_after(Obj,media) { FuncCSS[FuncCSS.length] = Obj; FuncCSS['Media'][FuncCSS['Media'].length] = media; } 
function loadcss_after() { for(var i=0; i<FuncCSS.length; i++) { loadingCSS_after(FuncCSS[i],FuncCSS['Media'][i]); } }
function loadingCSS_after(link,media) {var medi = (media == null) ? "" : media; var xcss=document.createElement('link'); xcss.rel="stylesheet"; xcss.type="text/css"; xcss.href=link; if(medi!="") { xcss.media=medi;}  document.getElementsByTagName('head')[0].appendChild(xcss); }
function addCss(cssCode) { var css = document.createElement("style"); css.type = "text/css";  if (css.styleSheet) { css.styleSheet.cssText = cssCode; } else { css.appendChild(document.createTextNode(cssCode)); } document.getElementsByTagName("head")[0].appendChild(css); }
function addCssParent(cssCode) { var css = parent.document.createElement("style"); css.type = "text/css";  if (css.styleSheet) { css.styleSheet.cssText = cssCode; } else { css.appendChild(parent.document.createTextNode(cssCode)); } parent.document.getElementsByTagName("head")[0].appendChild(css); }
addonload(loadcss_after);

/* load PHPSESSID */
function loadPHPSESSID() { if(document.cookie.indexOf("PHPSESSID")<0) {	var xhr = getXhr();	xhr.open("GET","/indexAjax_PHPSESSID.php",true); xhr.send(null); }}
addonload(loadPHPSESSID);

/* position souris */
var xm1=ym1=0;
function get_mouseXY() { $jq(document).mousemove(function(e){ xm1=e.pageX; ym1=e.pageY; /*window.status=e.pageX +', '+ e.pageY;*/ }); }	
addonload(get_mouseXY); //$jq(document).saveClicks();

var naviga=navigator.userAgent.toLowerCase();
var version_naviga=(naviga.indexOf("msie") > -1) ? parseInt(naviga.substr(naviga.indexOf("msie")+5,3)) :0;
 
function AddAnshor(elem) { elem.href += window.location.hash;}	

/*
*string valeur
*bool 	seulement href
*/
function at(valeur,only_href,myid) {
		var theid=""; var moliere = "_8_"; var gary = "_0_";
		valeur=valeur.split(gary);	valeur[0]+="@";	valeur=valeur[0].concat(valeur[1]);
		var valeur2=valeur.split(moliere); valeur="";
		for( var i=0 ; i < (valeur2.length-1);i++) { valeur2[i]+="."; }	
		for( var i=0 ; i < (valeur2.length);i++) { valeur=valeur.concat(valeur2[i]); }	
	if(myid != "")	theid="id='"+myid+"'";
	var string="<a "+theid+" href='mailto:"+valeur+"'>";	
	if(!only_href) string+=valeur.replace(/@/,"[at]")+"</a>";
	document.write(string);
}	

function GetCookie(nom) {
      var deb,fin;
      deb = document.cookie.indexOf(nom + "=");
      if (deb >= 0) {
         deb += nom.length + 1;
         fin = document.cookie.indexOf(";",deb);
         if (fin < 0) fin = document.cookie.length;
         return unescape(document.cookie.substring(deb,fin));
         }
      return "";
}
 function WriteCookie(nom,contenu) {
	 var c="";
	  c=lit_cook(nom);
	  if(c =="") { document.cookie = nom + "=" + escape(contenu) +"; domain=.emsc-csem.org"; }
 } 


// au cas ou il maque un span reecriture du titre h1
function rewrite_h1() {
	var ele=document.getElementsByTagName("h1");
	var html=""; 
	//pas 0 pour pas modifier banniere
	for(var i=1;i< ele.length ;i++) {
		html=ele[i].innerHTML;
		if((html.indexOf("<span>") < 0)&&(html.indexOf("<SPAN>") < 0)) ele[i].innerHTML="<span>"+html+"</span>";
	}		
	
}	
addonload(rewrite_h1);

// au cas ou il maque un span reecriture du titre h2
function rewrite_h2() {
	var ele=document.getElementsByTagName("h2");
	var html=""; 
	
	for(var i=0;i< ele.length ;i++) {
		html=ele[i].innerHTML;
		if((html.indexOf("<span>") < 0)&&(html.indexOf("<SPAN>") < 0)) ele[i].innerHTML="<span>"+html+"</span>";
	}		
	
}	
addonload(rewrite_h2);

function set_style_mesure(sty) { document.getElementById("mesure").style.fontWeight=sty; }
String.prototype.visualLength = function() { 
	var mes_leng = document.getElementById("mesure"); 
    mes_leng.innerHTML = this;
    return mes_leng.offsetWidth;
}
String.prototype.trimToPx = function(length) {
    var tmp = this;   var trimmed = this; 
    if (tmp.visualLength() > length) {
        trimmed += "...";
        while (trimmed.visualLength() > length) {
            tmp = tmp.substring(0,tmp.substring(0,tmp.length-1).lastIndexOf(" "));
            trimmed = tmp + "...";
        }
    }
    return trimmed;
}

function reduce_link() { 
	if(document.getElementById("droite")) {
		var ele=document.getElementById("droite").getElementsByTagName("a");
		for(var i=0;i< ele.length ;i++) {
			if((ele[i].className=="no_reduce") || (ele[i].id=="arepo")) continue;
			var len=250; var curele=ele[i];
			var ele2=ele[i].getElementsByTagName("b")[0];
			if(ele2) { curele=ele2; set_style_mesure("bold"); }
			else set_style_mesure("normal");
			var sourc=ele[i].href.toLowerCase();
			if(search_link_typ(sourc,".pdf") || search_link_typ(sourc,".doc") || search_link_typ(sourc,".ppt")) len=235;
			if(curele.innerHTML.visualLength()>len) {
				ele[i].title=curele.innerHTML;
				curele.innerHTML=curele.innerHTML.trimToPx(len);
				ele[i].onmouseover=function() { info_b2('show',this.title); };   ele[i].onmouseout=function() { info_b2('notshow',""); };
			}		
		}
	}
}	
addonload(reduce_link);

function rewrite_pdf() {
	var ele=document.getElementsByTagName("a"); 
	for(var i=0;i< ele.length ;i++) {
		var html=sourc=nclass=""; 
		html=ele[i].innerHTML;
		sourc=ele[i].href.toLowerCase();
		if(html.toLowerCase().indexOf("img") < 0) {
			var found=false;
			if(search_link_typ(sourc,".pdf")) { nclass="sp_iconepdf"; found=true;}
			else if(search_link_typ(sourc,".doc")) { nclass="sp_icon_word"; found=true;}	
			else if(search_link_typ(sourc,".ppt")) { nclass="sp_icon_ppt"; found=true;}	
			if(found) {
				var ne=document.createElement("span"); ne.className="spriteorig "+nclass+" vbottom";
				var sav=ele[i].firstChild; ele[i].removeChild(ele[i].firstChild);
				ele[i].appendChild(ne); ele[i].appendChild(document.createTextNode(" ")); ele[i].appendChild(sav);
				if(ele[i].parentNode.nodeName.toLowerCase() =="li") ele[i].parentNode.className+=" li_icon";
			}	
		}	
	}		
}
addonload(rewrite_pdf);

function add_target(extension,targ) {
		var ele=document.getElementsByTagName("a");
	//pas 0 pour pas modifier banniere
	for(var i=0;i< ele.length ;i++) {
		var sourc=ele[i].href.toLowerCase();
		if((search_link_typ(sourc,extension)) && (ele[i].target=="")) ele[i].target=targ;
	}	
}	

function search_link_typ(link,extension) {
	if(link.indexOf(extension) > 0) return true;
	return false;
}	


function array_search(tab,val) {
		for(var j=0; j<tab.length; j++){
			if(tab[j]==val) return j;
		}
		return false;
}
var cpt_true=0;
var cpt_false=0;
function in_array(tab,val) {
		for(var j=0; j<tab.length; j++){
			if(tab[j]==val) {cpt_true++; return true;}
		}
		cpt_false++;
		return false;
}


function Array_GetMax(tab, sortColumn) {
  var Max = parseInt(tab[0][sortColumn]);
  if (isNaN(Max*1)) return '';
  for (var i=0; i<tab.length; i++) {
	if (parseInt(tab[i][sortColumn])*1>Max) Max = parseInt(tab[i][sortColumn]);
  }
  return Max;
}

function Array_GetMin(tab, sortColumn) {
  var Min = parseInt(tab[0][sortColumn]);
  if (isNaN(Min*1)) return '';
  for (var i=0; i<tab.length; i++) {
	if (parseInt(tab[i][sortColumn])*1<Min) Min = parseInt(tab[i][sortColumn]);
  }
  return Min;
}

var langue_detected='en';
function setMenuFlag() {
	var fl=GetCookie('lang');
	if((fl!='') && (fl.length==2)) {
		langue_detected=fl;
		var tm=document.getElementById("flag");	
		if(tm) {
			tm.src="/Images/flag/flag_"+fl+".png"; 
			var par_tm=tm.parentNode;
			var old_href=par_tm.href;
			par_tm.href=old_href.substr(0,old_href.indexOf("lang"))+"lang="+fl;
		}
		var tm2=document.getElementById("arepo");
		if(tm2) {	if(tm2.href.indexOf("?")>0) tm2.href+="&lang="+fl; 
					else tm2.href+="?lang="+fl; 
		}
	} else {
			var xhr = getXhr();
			xhr.open("GET","/indexAjax.php?lang_flag=find",false);
			xhr.send(null);	
			setMenuFlag();
	}	
	
}	
addonload(setMenuFlag);


var isfirst=true;
var isfirst2=true;
var info_t_html='';
var info_te_html='';
var info_seul_html='';
var do_it=false;
function info_b(quoi,texte,titre) {
	
	var div=document.getElementById("info_bulle");
	if(isfirst) {
		info_t_html=document.getElementById("inf_t").innerHTML;
		info_te_html=document.getElementById("inf_te").innerHTML;
		isfirst=false; 
	}
	
	if(quoi=="show") {
		// on remet tout bien
		
		do_it=true;
		document.getElementById("inf_t").innerHTML=info_t_html+titre;
		document.getElementById("inf_te").innerHTML=info_te_html+texte;
		div.style.display="block";
		follow_mouse("info_bulle",true,true);
		
	}else {	
		do_it=false;
		div.style.display="none";
	}	
}

/****************
	Get style
*****************/	
function get_style_info(id,style) {
	var e=document.getElementById(id);
	var inf="";
    var isIE     = navigator.userAgent.toLowerCase().indexOf("msie") > -1;
	if (isIE) {
		inf = e.currentStyle[style];
		//alert("current  "+inf);
	} else if (window.getComputedStyle) {
		inf = window.getComputedStyle(e, '').getPropertyValue(style);
		//alert("computed  "+inf);
	}
	return inf;
}	

function info_b2(quoi,texte) {
	//alert("la");
	var div=document.getElementById("info_bulle2");
	if(isfirst2) {
		info_seul_html=document.getElementById("inf_seul").innerHTML;
		isfirst2=false; 
	}
	
	if(quoi=="show") {
		do_it=true;
		document.getElementById("inf_seul").innerHTML=info_seul_html+texte;
		div.style.display="block";
		follow_mouse("info_bulle2",true,true);
	}else {	
		do_it=false;
		div.style.display="none";
	}	
}	

function follow_mouse(label,vertical,horizontal) {

	var div=document.getElementById(label);
	if(vertical) div.style.top=parseFloat(ym1+20)+"px";
	if(horizontal) {
		//div.style.left=xm1+10+"px"; 
		//alert(screen.width+"   "+parseInt(get_style_info(label,"width")));
		if( xm1 <= (screen.width/2)) div.style.left=xm1+20+"px";
		else {
			var w=parseInt(get_style_info(label,"width"));
			//alert(div.offestWidth+"  "+w);
			if(isNaN(w)) w=parseInt(div.offsetWidth);
			div.style.left=(xm1-w-20)+"px";
		}
	}	
	// correction d'un bug
	if(label=="info_bulle") {document.getElementById("inf_te").style.padding="0 5px"; document.getElementById("inf_t").style.padding="0 5px";}
	if(label=="info_bulle2") {document.getElementById("inf_seul").style.padding="5px 5px"; }
	
	if(do_it) setTimeout("follow_mouse(\""+label+"\","+vertical+","+horizontal+");",300);
	
}	


var do_it_stricte=false;
function follow_mouse_stricte(label,offset_top,offset_left) {
	var div=document.getElementById(label);

			//document.getElementById("choice_box_move").innerHTML=ym1+"  "+xm1+"  "+(xm1-offset_left)+"  "+(ym1-offset_top);
	div.style.top=parseInt(ym1-offset_top)+"px";
	div.style.left=parseInt(xm1-offset_left)+"px";
	
	if(do_it_stricte) setTimeout("follow_mouse_stricte(\""+label+"\","+offset_top+","+offset_left+");",200);
}	


function follow_stricte(label,yes_or_no) {
	if(yes_or_no) {
		do_it_stricte=true;
		//pos de depart de la souris dans la div
		var pos_l_box=xm1-parseInt(document.getElementById(label).offsetLeft);
		var pos_t_box=ym1-parseInt(document.getElementById(label).offsetTop);
				//alert(pos_l_box+" "+pos_t_box);
		follow_mouse_stricte(label,pos_t_box,pos_l_box);
	
	}	
	else do_it_stricte=false;
}	


var anim_duration=200; 
jQuery.fn.traffic_alert_anim = function() {
	$jq(this).animate({'left':'-=10px'},anim_duration,"linear", function() { 
		if($jq(this).position().left <= (-1*$jq(this).width())) { $jq(this).css({'left': $jq(this).parent().width()+'px'});}
		$jq(this).traffic_alert_anim();
    });
};
jQuery.fn.traffic_alert_anim_bind=function() { 
	$jq(this).bind('mouseover',function() { $jq(this).stop(); } );
	$jq(this).bind('mouseout',function() { $jq(this).traffic_alert_anim(); } );
};
jQuery.fn.traffic_alert_anim_stop=function() { $jq(this).stop(); };
jQuery.fn.init_anim=function() { $jq(this).traffic_alert_anim_bind(); $jq(this).css({'width':($jq(this).width()+10)+'px'});  $jq(this).css({'left': $jq(this).parent().width()+'px'}); $jq(this).traffic_alert_anim(); }	


function bann_wait(texte) {
		if(!texte) texte="Loading...";
		var ban=document.createElement('div');
		ban.id="my_wait";
		var cl='<table width="100%" height="100%" style="verical-align:middle;"><tr><td width="50px"><img src="/Images/ajax-loader.png" /></td> ';
		var cl2='<td style="width:50px;text-align:right;padding-right:10px;"><img src="/Css/img/ico_close.png" onClick="hide_bann_wait();" /></td></tr></table>';
		ban.innerHTML=cl+"<td>"+texte+"</td> "+cl2;
		document.body.appendChild(ban);
		$jq('#my_wait').show("slow");
}	

function hide_bann_wait() {
	$jq('#my_wait').hide("slow");
	setTimeout("document.body.removeChild(document.getElementById('my_wait'));",800);

}	

function get_available_screen(typ) {
	var diffw=30;
	var diffh=150;
	var w=h="";
	if(typ=="width") {
		if(screen.availWidth) w=screen.availWidth;
		else w=screen.width;
		return w-diffw;
	}
	else {
		if(screen.availHeight) h=screen.availHeight;
		else  h=screen.height;
		return h-diffh;
	}	
	
}	


// Fonction de stockage images
Fimg = new Array(); 
function addimgload(Obj) { Fimg[Fimg.length] = Obj; } 

function use_load_img() {	
	var im=document.getElementsByTagName("img");
	//alert(im.length);
	for(var i=0; i<im.length;i++) {
			addimgload(im[i].src);
			im[i].src = "";
	}
	addonload(load_img);
}	

function load_img() {
	var im=document.getElementsByTagName("img");
	for(i=0; i<Fimg.length; i++) {
	  im[i].src=Fimg[i];
	} 
}	
 
function print_r(theObj){
	var str='';
	if(theObj.constructor == Array ||	theObj.constructor == Object) {
		str+="\n";
		for(var p in theObj){
			if((theObj[p].constructor == Array || theObj[p].constructor == Object)) { //&&("function"!=typeof(theObj))
				str+="\t["+p+"] => "+typeof(theObj)+"\n";
				str+="\n";
				str+=print_r(theObj[p]);
				str+="\n";
			} else {
				str+="\t["+p+"] => "+theObj[p]+"\n";
			}
		}
		str+="\n";
	}
	return str;
}
