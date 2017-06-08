function DM_Select(id){
  if(d("parentID")) d("parentID").value = id;
}

function Select_DataParam_All(b,p,st,f,d,n,m){
  return SelectTree('数据应用字典','XMLDataParamTypeTree.y?s=0&allFlag=1&parentID='+p+'&sortByName='+st,b,f,d,n,m);
}
function Select_DataParamType(b,p,st,f,d,n,m){
  return SelectTree('数据应用字典','XMLDataParamTypeTree.y?s=0&parentID='+p+'&sortByName='+st,b,f,d,n,m);
}
function Select_EmpFormation(b,f,d,n,m){
  return SelectTree('人员体系','XMLArmyFormationTree.y?s=0',b,f,d,n,m);
}
function Select_DataSelect(title,b,p,f,d,n,m){
  return SelectTree(title,'XMLSelectData.y?s=0&ao.tableID='+p,b,f,d,n,m);
}
function Select_DataTable(b,p,r,f,d,n,m){
  return SelectTree('数据类型','XMLDataTableTree.y?s=0&parentID='+p+'&relationID='+r,b,f,d,n,m);
}

function SelectTree(){
  var selectFlag = false;
  var items = SelectTree.arguments;
  if(items && items.length >= 2){
    var title = "";
    var url = "";
    var itemNames = "";
    var params = "";
    var boxFLag = 0;
    title = items[0];
    url = items[1];
    if(items.length>2) boxFLag = items[2]; //0-box 1-win
    if(items.length>3 && items[3]) params += "&callback=" + items[3];

    if(items.length > 4){
      for(var i=4;i<items.length;i++){
        if(items[i]) itemNames += items[i] + spliter;
      }
      if(itemNames.length>0){
    	  itemNames = itemNames.substring(0,itemNames.length-1);
    	  params += "&itemNames=" + itemNames;
      }
    }
    if(boxFLag==0){
      showBox(title, "../xml/"+url+params, 380, 500);
    }else{
      var result = showWin("../xml/"+url+params, null, 380, 500, 1);
      if(result){
        selectFlag = true;
        var max = items.length-4 < result.length ? items.length-4 : result.length;
        //alert(params+" max="+max+"  items.length="+items.length);
        for(var i=0;i<max;i++){
          if(d(items[i+4])) d(items[i+4]).value = result[i];
        }
      }
    }
  }
  return selectFlag;
}

function out(page){
  var f = document.MainForm;
  f.action = page+".y?cmd=out";
  f.target = "win_out";
  f.submit();
}
function execAll(page,pagetip,atip,a,ids,all){
  var count = 0;
  if(ids){
    if(ids.length){
      for(var i=0; i<ids.length; i++){
        if(ids[i].checked) count++;
      }
    }else{
      if(ids.checked) count++;
    }
  }
  if(count==0){
    setError("您没有选择"+pagetip+"，请检查！");
    return;
  }
          
  var subf = function(){
     var f = document.MainForm;
     f.action = page+".y?cmd="+a+"&all="+all;
     f.submit();
  }; 
  if(a=='del'){
    checkAdminPass(subf);
  }else{
    confirmAction('确定要'+atip+'【'+count+'个'+pagetip+'】吗？', subf);
  }
}

function showDataFile(a){
	ajax("../xml/XMLSelectData.y?cmd=showDataFile", {"f":a}, function(html){
		var result = showDialog("../xml/XMLSelectData.y?cmd=XMLShowDataFile&f="+html.trim(), "", 0, 0, 1, function(){
			ajax("../xml/XMLSelectData.y?cmd=delDataFile", {"f":html.trim()});
		});
	});
}
function showPic(a){
  show("查看图片","<img src='"+a+"' width=400>",431,300);
}

function checkAdminPass(tip, yfun){
  confirmMsg(tip+"<br><br>请输入二级验证密码：<input type=password size=20 name=adminPassword>", function() {
        ajax("S_Main.y?cmd=password", {"password":d.adminPassword.value}, function(html){
		          if(html.trim()=='1'){
		            yfun();
		          }else{
		            setError("您输入的密码有误！");
		            return false;
		          }
        });
  });
}
function GetParamClassList(ParamClass,name,width,onchange,callback){
   var dx = new DynaXmlHttp();
   ajax('../system/S_Main.y?cmd=XMLGetParamClassList', {'ParamClass':ParamClass}, function(html){
       var res = htmlEncode(html);
       res = "<select class=sel_text name=\""+name+"\" style=\"width:"+width+"px;\" onchange=\""+onchange+"\">" + res + "</select>";
	   var oo = d(name);
	   for(var i=0;i<oo.length;i++){
	     if(oo[i]) oo[i].outerHTML = res;
	   }
	   if(callback) callback();
   });
}
function down(file){
  if(file=='' || isUndefined(file)) setError('文件路径有误，或文件不存在！');
  else{
    var param = new Array();
    param.url = '../Download.y?f='+file;
    //showWin(param.url);
    OpenWin(encodeURI(param.url))
  }
}