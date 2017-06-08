/*
* The DynaXmlHttp object.
* Example:
*  var dynaXmlhttp = new DynaXmlHttp();
  dynaXmlhttp.enableDebug();
  dynaXmlhttp.setAction("http://localhost/CmbBank_GenShell/UI/GenShellPC/Login/GenLogin.aspx");
  
  dynaXmlhttp.addParam("a","avalue");
  dynaXmlhttp.addParam("b","bvalue");

  var xmlhttpobj = createXmlHttp();
  
  dynaXmlhttp.setXmlHttpObj(xmlhttpobj);
  
  if(dynaXmlhttp.send())
  {
    alert(dynaXmlhttp.getResponseText());
    
  }
*
*/

function DynaXmlHttp()
{  
  this.action = "";
  this.method = "post";
  this.xmlhttpObj = null;
  this.requestParams = new Object();
  this.asyncFlag = false;
  this.onreadystatechange = null;
  this.debug = false;
  this.resultDiv = null; //接受数据的div名称
  this.rcvMethod = null; //请求结束时的方法名称
  this.button = null; //执行请求的按钮obj
  this.bodyid = null; //body的id
  this.loaddiv = null; //load条的名称
  this.loadMethod = null; //load条的执行函数
}


//********************* 自定义开始 ************************
function SetRcvMethod(rcvMethod)
{
  this.rcvMethod = rcvMethod;
}
DynaXmlHttp.prototype.setRcvMethod = SetRcvMethod;

function SetResultDiv(resultDiv)
{
  this.resultDiv = resultDiv;
}
DynaXmlHttp.prototype.setResultDiv = SetResultDiv;

function SetButton(button)
{
  this.button = button;
}
DynaXmlHttp.prototype.setButton = SetButton;

function SetBodyid(bodyid)
{
  this.bodyid = bodyid;
}
DynaXmlHttp.prototype.setBodyid = SetBodyid;

function SetLoaddiv(loaddiv, loadMethod)
{
  this.loaddiv = loaddiv;
  this.loadMethod = loadMethod;
}
DynaXmlHttp.prototype.setLoaddiv = SetLoaddiv;
//********************* 自定义结束 ************************


new DynaXmlHttp();

function EnableDebug()
{
  this.debug = true;
}
DynaXmlHttp.prototype.enableDebug = EnableDebug;

function SetOnreadystatechange(onreadystatechange)
{
  this.onreadystatechange = onreadystatechange;
}
DynaXmlHttp.prototype.setOnreadystatechange = SetOnreadystatechange;
function SetAsyncFlag(bAsync)
{
  if(bAsync) this.asyncFlag = true;
  else this.asyncFlag = false;
}
DynaXmlHttp.prototype.setAsyncFlag = SetAsyncFlag;
function GetAsyncFlag()
{
  return this.asyncFlag;
}
DynaXmlHttp.prototype.GetAsyncFlag = GetAsyncFlag;

function SetXmlHttpObj(xmlhttpObj)
{
  this.xmlhttpObj = xmlhttpObj;
}
DynaXmlHttp.prototype.setXmlHttpObj = SetXmlHttpObj;
function GetXmlHttpObj()
{
  return this.xmlhttpObj;
}
DynaXmlHttp.prototype.GetXmlHttpObj = GetXmlHttpObj;

function SetMethod(method)
{
  this.method = method;
}

DynaXmlHttp.prototype.setMethod = SetMethod;
function GetMethod()
{
  return this.method;
}
DynaXmlHttp.prototype.GetMethod = GetMethod;


function SetAction(action)
{
  this.action = action;
}
DynaXmlHttp.prototype.setAction = SetAction;
function GetAction()
{
  return this.action;
}
DynaXmlHttp.prototype.getAction = GetAction;

function AddParam(name,value)
{
  this.requestParams[name] = value;
}
DynaXmlHttp.prototype.addParam = AddParam;

function AddParams(obj)
{
  for(var attr in obj)
  {
    this.requestParams[attr] = obj[attr];
  }
}
DynaXmlHttp.prototype.addParams = AddParams;

function ProcessAsyncResponse()
{
  alert(this.xmlhttpObj.readyState);

  if(this.xmlhttpObj.readyState == 4)
  { 
    if(this.xmlhttpObj.status == 200)
    { 
              alert(this.xmlhttpObj.responseText);
    } 
    else
    { 
              alert(this.xmlhttpObj.statusText); 
    } 
  } 

}
DynaXmlHttp.prototype.processAsyncResponse = ProcessAsyncResponse;

function Send()
{  
  if(this.xmlhttpObj == null)
  {
    alert("Please set a xmlhttp object first");
    return false;
  }
  if(!this.xmlhttpObj)
  {
    alert("Xmlhttp object init failed");
    return false;
  }
  if(this.asyncFlag)
  {
    //this.xmlhttpObj.onreadystatechange = this.processAsyncResponse;
    
    //********************************自定义开始********************************
    var start = (new Date()).getTime();
    if(this.resultDiv) eval(this.resultDiv).innerHTML = "";
    if(this.button) eval(this.button).disabled = true;
    if(this.bodyid) eval(this.bodyid).style.cursor = "wait";
    if(this.loaddiv) eval(this.loaddiv).style.display= "";
    if(this.loadMethod) eval(this.loadMethod);
    
    var newxml = this;
    this.xmlhttpObj.onreadystatechange = function(){
              if(newxml.xmlhttpObj.readyState == 4){
                 if(newxml.xmlhttpObj.status==200){
                   var d = (new Date()).getTime()-start;
                   if(newxml.resultDiv) eval(newxml.resultDiv).innerHTML = newxml.getResponseText();
                   if(newxml.button) eval(newxml.button).disabled = false;
                   if(newxml.bodyid) eval(newxml.bodyid).style.cursor = "";
                   if(newxml.loaddiv) eval(newxml.loaddiv).style.display= "none";
                   if(newxml.rcvMethod) eval(newxml.rcvMethod+"(newxml)");
                 } 
               } 
    }
    //********************************自定义结束********************************
  }
  this.xmlhttpObj.open(this.method,this.action,this.asyncFlag);
  
  //this.xmlhttpObj.setRequestHeader("Content-Type","text/xml;charset=GB2312");
  if(this.method.toLowerCase() == "post")
  {
    this.xmlhttpObj.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
  }
  
  var params = "";
  for(var attr in this.requestParams) 
  {
    params += "&"+attr+"=";
    params += encodeURIComponent(this.requestParams[attr]);
  }
  params = params.substr(1);
  
  if(this.debug)
  {
    alert(params);
  }
  this.xmlhttpObj.send(params);
  return true;
}
DynaXmlHttp.prototype.send = Send;

function GetResponseText()
{
  return this.xmlhttpObj.responseText;
}
DynaXmlHttp.prototype.getResponseText = GetResponseText;

function GetResponseBody()
{
  return this.xmlhttpObj.responseBody;
}
DynaXmlHttp.prototype.getResponseBody = GetResponseBody;

function GetResponseXML()
{
  return this.xmlhttpObj.responseXML;
}
DynaXmlHttp.prototype.getResponseXML = GetResponseXML;

function GetResponseHeader(headVar)
{
  return this.xmlhttpObj.getResponseHeader(headVar);
}
DynaXmlHttp.prototype.getResponseHeader = GetResponseHeader;
