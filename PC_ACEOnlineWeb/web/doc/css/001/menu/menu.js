var defKnock = 0;//1默认开,0默认关

var bV=parseInt(navigator.appVersion);
var NS4=(document.layers) ? true : false;
var IE4=((document.all)&&(bV>=4))?true:false;
var ver4 = (NS4 || IE4) ? true : false;

function expandIt(){return;}
function expandAll(){defKnock=1;return;}
function nomsg(){self.status="";}

if(ver4){
  document.write("<SCR"+"IPT LANGUAGE=\"JavaScript\" SRC=\"\"></SCR"+"IPT>");
}

//=============================================================================
function Menu(aName, aText, aUrl, aEnable, aSubMenuKB){
  this.mName = aName;
  this.mText = aText;
  this.mUrl = aUrl;
  this.mEnable = aEnable;
  this.mSubMenuKB = aSubMenuKB;
}
function SubMenu(aName, aPName, aText, aUrl, aImg, aEnable, aSubMenuKB){
  this.mName = aName;
  this.mPName = aPName;
  this.mText = aText;
  this.mUrl = aUrl;
  this.mImg = aImg;
  this.mEnable = aEnable;
  this.mSubMenuKB = aSubMenuKB;
}

function InitMainMenus(){
  var tmp = "<div id=\"content\"><div class=\"menu\">\n";
  tmp += listMenus("", Menus);
  tmp += "</div></div>\n";
  return tmp;
}
function listMenus(pname, smenu){
  var tmp = "<ul>\n";
  for(var i =0; i<smenu.length; i++){
    if(smenu[i].mEnable==1){
      tmp += "<li>";
      tmp += "<a href=#";
      if(smenu[i].mUrl.length>0){
        tmp += " onclick=\"SubMenuClick('"+smenu[i].mUrl+"', '"+pname+smenu[i].mText+"')\"";
      }else{
        
      }
      tmp += " >"+smenu[i].mText+"</a>";

      if(smenu[i].mSubMenuKB == 1){
        tmp += listMenus(smenu[i].mText+" > ", eval(smenu[i].mName));
      }

  	  tmp += "</li>\n";
  	  
    //}else{
  	//  tmp += "<li>";
    //  tmp +="<a style=\"color:#cccc99\">";
    //  tmp += smenu[i].mText;
    //  tmp += "</a>";
  	//  tmp += "</li>\n";
    }
  }
  tmp += "</ul>\n";
  return tmp;
}
function SubMenuClick(url, loctitle){
	go(url);
	setTitle(loctitle);
}
function initMenu(){
  return InitMainMenus();
}

$(document).ready(function (){  
  $(".menu ul li").menu();  
});
