var version_bizPubOtherFuns = 1.13;

function testbtn(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
    alert('这是测试按钮');
  }else{
    parent.setError("请选择数据！");
  }
}

//自定义：客户的订单列表MyOrders
function BMyOrders(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
    showBox('客户的订单列表', '../biz/S_Main.y?cmd=XMLSpecDataList&dataid='+dataid+'&execmd=XMLBMyOrders', 600, 300);
  }else{
    parent.setError("请选择数据！");
  }
}


//获取单位选择框
function UnitSelector(obj){
	ajax("../biz/S_Main.y?cmd=XMLUnitSelector", {"selectName":obj.name, def:obj.value.substring(0,6)}, function(html){
		obj.outerHTML = html;
	});
}
//获取农产品分类选择框
function GoodsTypeSelector(obj){
  ajax("../biz/S_Main.y?cmd=XMLGoodsTypeSelector", {"selectName":obj.name}, function(html){
		obj.outerHTML = html;
		d("TMP_"+obj.name).click();
  });
}
//打印商品二维码
function BGoodsQR(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  var goodsName='',breedName='',chandi='',pingpai='',shengchanriqi='';
  if(!dataid){ dataid = ''; isNewCheck = 'checked';}
  else{
	  goodsName=node.c4,breedName=node.c1,chandi=node.c9,pingpai=node.c10,shengchanriqi=node.c17;
  }
  confirmMsg("<h2>打印商品二维码</h2><br><span class=QR_T7>" +
		     "<br>品牌：<span id=si_pingpai>"+pingpai+"</span><input type=text size=20 name=pingpai value='"+pingpai+"' style='display:none'><input type=hidden name=dataid value="+dataid+">&nbsp;&nbsp;&nbsp;&nbsp;<input type=checkbox name=isNew onclick='BGoodsQR_isNewController()'>新增" +
		     "<br>品名：<span id=si_goodsName>"+goodsName+"</span><input type=text size=20 name=goodsName value='"+goodsName+"' style='display:none'>" +
  		     "<br>规格：<span id=si_breedName>"+breedName+"</span><input type=text id=si_sss size=30 name=breedName value='"+breedName+"' style='display:none'>" +
  		     "<br>产地：<span id=si_chandi>"+chandi+"</span><input type=text size=20 name=chandi value='"+chandi+"' style='display:none'>" +
  		     "<br>打印个数：<input type=text size=10 maxlength=4 name=num value=1 onkeyup=intInput(this)>个" +
  		     "<br><br></span>", function() {
	  if(d.goodsName.value.length==0 || d.breedName.value.length==0){
		  alert('数据不能为空');
		  return;
	  }
	  ajaxMsg("../biz/S_Main.y?cmd=BGoodsQRPrint", {"dataid":d.dataid.value, "goodsName":d.goodsName.value, "breedName":d.breedName.value, "chandi":d.chandi.value, "pingpai":d.pingpai.value, "num":d.num.value}, function(html){
		  //alert(html);
		  if(html.indexOf("SUCCESS")>=0) location.href = "../xml/S_Main.y?cmd=B_GoodsQR_PrintPage&"+html;
		  else setError(html);
	  });
  });
  if(!dataid) BGoodsQR_isNewController();
}
function BGoodsQR_isNewController(){
	d.isNew.checked = true;
	setDisplay(d("si_goodsName"), true);
	setDisplay(d("si_breedName"), true);
	setDisplay(d("si_chandi"), true);
	setDisplay(d("si_pingpai"), true);
	setDisplay(d("goodsName"), false);
	setDisplay(d("breedName"), false);
	setDisplay(d("chandi"), false);
	setDisplay(d("pingpai"), false);
	d.dataid.value = '';
	d.breedName.value = '';
	d.chandi.value = '';
	d.pingpai.value = '';
	d.shengchanriqi.value = '';
	
}
//新增管理人员
function BShopUserNew(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
	  ajax("../xml/S_Main.y?cmd=XMLShopAddressList", {"dataid":dataid}, function(html1){
		  confirmMsg("<h2>新增管理人员</h2><br><span class=QR_T7>" +
		  		    "<br>岗位：<select name=userRole onchange=SelectShopUserRole(this.value)><option value=404>销售人员</option><option value=405>采购人员</option><option value=403>管理人员</option></select>" +
		  		    "<br>所属：<select name=mmshopDataid>"+html1+"</select>" +
		  		    "<br>姓名：<input type=text size=20 name=nickname>" +
		  		    "<br>手机：<input type=text size=20 name=phone>" +
		  		    "<br><br></span>", function() {
			  ajaxMsg("../biz/S_Main.y?cmd=BShopUserNew", {"dataid":d.mmshopDataid.value, "userRole":d.userRole.value, "nickname":d.nickname.value, "phone":d.phone.value}, function(html){
			        parent.setMessage(html);
			        reload();
		      });
		  });
      });
  }else{
    parent.setError("请选择数据！");
  }
}
function SelectShopUserRole(v){
	alert('选择岗位：'+v);
}
//新增门店
function BShopAddressNew(dataid){
	BShop_MMNew(dataid, "门店", "B_MMShop_Address");
}
//新增供应商
function BShopSupplyNew(dataid){
	BShop_MMNew(dataid, "供应商", "B_MMShop_Supply");
}
//新增客户
function BShopBuyerNew(dataid){
	BShop_MMNew(dataid, "客户", "B_MMShop_Buyer");
}
//新增门店/供应商/客户
function BShop_MMNew(dataid, oname, tableName){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
	  confirmMsg("<h2>新增"+oname+"</h2><br><span class=QR_T7>" +
	  		    "<br>名称：<input type=text size=20 name=mmName>" +
	  		    "<br>地址：<input type=text size=20 name=mmAddress>" +
	  		    "<br>联系人：<input type=text size=20 name=mmContact>" +
	  		    "<br>电话：<input type=text size=20 name=mmPhone>" +
	  		    "<br><br></span>", function() {
		  ajaxMsg("../biz/S_Main.y?cmd=BShopAddressNew", {"dataid":dataid, "oname":oname, "tableName":tableName, "mmName":d.mmName.value, "mmAddress":d.mmAddress.value, "mmContact":d.mmContact.value, "mmPhone":d.mmPhone.value}, function(html){
		        parent.setMessage(html);
		        reload();
	      });
	  });
  }else{
    parent.setError("请选择数据！");
  }
}

//APP模块：同步APP Server
function AAppModule_SynAppServer(){
	confirmMsg("<h2>确定要同步APP Server吗？</h2>", function(){
	    ajaxMsg("../biz/S_Main.y?cmd=XMLAAppModule_SynAppServer", {}, function(html){
	    	parent.setMessage(html);
	    });
	});
}

//APP模块：复制模块及明细
function BAppModule_CopyDetail(dataid){
	if(!dataid){
	  var node = $('#div_tree').datagrid('getSelected');
	  if(node) dataid = node.dataid;
	}
	if (dataid){
		  confirmMsg("<h2>确定要复制模块及其明细吗？</h2>", function() {
			  ajaxMsg("../biz/S_Main.y?cmd=XMLBAppModule_CopyDetail", {"dataid":dataid}, function(html){
			        parent.setMessage(html);
			        reload();
		      });
		  });
	}else{
	  parent.setError("请选择数据！");
	}
}

//组织结构图
function AJobStruct(){
    showBox('组织结构图', '../xml/S_Main.y?cmd=XMLPubData_AJobStruct', 0,0);
}
//部门树
function AJobTree(){
    showBox('部门树', '../xml/XMLTreeData.y?treeType=Department&checkbox=true', 300,0);
}
//岗位结构图
function AJobPosition(){
    showBox('岗位结构图', '../xml/S_Main.y?cmd=XMLPubData_AJobPosition', 0,0);
}
//人员树
function AEmpTree(){
    showBox('人员树', '../xml/XMLTreeData.y?treeType=Emp&checkbox=true', 300,0);
}
//启用账户
function BUserStart(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
	  ajax('../biz/S_Main.y?cmd=XMLSUserStart', {"dataid":dataid}, function(html){alert(html);reload();});
  }else{
    parent.setError("请选择数据！");
  }
}
//停用账户
function BUserStop(dataid){
  if(!dataid){
    var node = $('#div_tree').datagrid('getSelected');
    if(node) dataid = node.dataid;
  }
  if (dataid){
	  ajax('../biz/S_Main.y?cmd=XMLSUserStop', {"dataid":dataid}, function(html){alert(html);reload();});
  }else{
    parent.setError("请选择数据！");
  }
}

