<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

<div style="padding:20px">
<form name="MainForm" method="POST">
    
<textarea name=sqls cols=195 rows=10></textarea>
<input type="button" class="button" value=" 打印APP二维码 " onclick="QRCode(this,'AppVersion')">&nbsp;&nbsp;&nbsp;&nbsp;
<!--input type="button" value="抓取农产品条目" onclick=getGoodsData(this)>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="抓取农产品规格数据" onclick=getGoods_1Data(this)>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="抓取菜谱数据" onclick=getDishesData(this)-->&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" class="button" value="导入公司库" onclick=selectFile("公司库")>&nbsp;&nbsp;&nbsp;&nbsp;
<br><br>
<textarea cols=180 rows=20 id=msg style="margin-top:20px;font-weight:bold;line-height:150%;border:1px solid #000000;background:#dddddd"></textarea>

</form>
</div>

<script language="javascript">
  var b = true;
  var t;
  function selectFile(tip, a, b){
    d.uploadType.value = tip;
    d.si_id.innerHTML = a;
    if(b && b.length>0){
      setDisplay(d.sp_si_id2, false);
      d.si_id2.innerHTML = b;
    }else{
      setDisplay(d.sp_si_id2, true);
    }
    showFormBox('【导入'+tip+'】','div_temp_win');
  }
  function uploadDataFromFile(obj){
    setDisable(obj, true);
    if(checkStrInput(d("dataFile"), 100, true, '数据文件')
    && confirmAction('确定要导入吗？', function(){
        closeBox();
        var f = d.DataForm2;
        if(d.uploadType.value == '公司库'){
          f.action = "B_Manager.y?cmd=uploadAOrganFile";
        }else if(d.uploadType.value == '仓库数据'){
          f.action = "B_Manager.y?cmd=uploadStoreFile";
        }else if(d.uploadType.value == 'SKU价格表'){
          f.action = "B_Manager.y?cmd=uploadSKUPriceFile";
        }else if(d.uploadType.value == '西山今日订单'){
          f.action = "B_Manager.y?cmd=uploadMM1OrderFile_Xishan";
        }else if(d.uploadType.value == '西山对账单'){
          f.action = "B_Manager.y?cmd=uploadMM1OrderNum_Xishan";
        }
        f.submit();
    })) return true;
  }
  function log(){
    ajax("B_Manager.y?cmd=getLog", {}, function(html){
        d("msg").innerHTML += html;
    });
  }
  function printQRCode(){
    OpenWin("../biz/S_Main.y?cmd=XMLQrcodePage&qrtype="+d.qrtype.value+"&startID="+d.startID.value+"&endID="+d.endID.value+"&qrSize="+d.qrSize.value,'',0,0,1);
    closeFormBox('div_temp_win');
  }
  function QRCode(obj,m){
    d.qrtype.value = m;
    showFormBox('【'+obj.value+'】','div_temp_win000');
  }
  function init(){
    $('#div_temp_win').dialog('close');
    $('#div_temp_win000').dialog('close');
  }
</script>

<%@ include file="/common/IncludeBottom.jsp" %>

    <div id="div_temp_win000" class="easyui-dialog">
    <form name="DataForm" action="/" method="POST">
    <input type=hidden name="qrtype" />
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeaderP" width="400">ID：<input size=10 name=startID> ~ <input size=10 name=endID></td> 
      </tr>
      <tr>
        <td class="tdHeaderP" width="400">大小：<input size=10 name=qrSize value=1> 标准1</td> 
      </tr>
      <tr id="div_btn">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add" value=" 确定 " onclick="printQRCode();">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </form>
    </div>


    <div id="div_temp_win" class="easyui-dialog" style="position:relative;margin:0 auto;">
    <form name="DataForm2" action="/" method="POST" encType="multipart/form-data">
    <input type=hidden name="uploadType">
    <div id="db_main_c">
    <table class="tbBorder" cellSpacing=3 cellPadding=10 width="100%" border=0>
      <tr>
        <td class="tdHeaderL" height=50>
        <span id=si_id>买家编号</span>：<input name="input_id" size=15><br>
        <span id=sp_si_id2></span><span id=si_id2>其它参数</span>：<input name="input_id2" size=15><br></span><br>
        请选择数据文件：
          <html:hidden name="B_ManagerBean" property="dataFileName" />
          <html:file styleClass="ipt_text" size="30" name="B_ManagerBean" property="dataFile"/></td>
      </tr>
      <tr>
        <td class="tdBodyM" height=80>
        <input type="button" class="button" value=" 导入 " onclick="uploadDataFromFile(this);">&nbsp;&nbsp;&nbsp;&nbsp;        
        <input type="button" class="button" value=" 取消 " onclick="closeBox();">
        </td>
      </tr>
    </table>
    </div>
    </form>
    </div>
    