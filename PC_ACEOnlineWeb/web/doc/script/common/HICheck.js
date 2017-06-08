/***********************************************************************
trim函数:                        trim() lTrim() rTrim()
校验字符串是否为空:                isEmpty(str)
校验字符串是否为整型:               checkIsInteger(str)
校验整型最小值:                    checkIntegerMinValue(str,val)
校验整型最大值:                    checkIntegerMaxValue(str,val)
校验整型是否为非负数:               isNotNegativeInteger(str)
校验字符串是否为浮点型:             checkIsDouble(str)
校验浮点型最小值:                  checkDoubleMinValue(str,val)
校验浮点型最大值:                  checkDoubleMaxValue(str,val)
校验浮点型是否为非负数:             isNotNegativeDouble(str)
校验字符串是否为日期型:             checkIsValidDate(str)
校验两个日期的先后:                checkDateEarlier(strStart,strEnd)
校验字符串是否为email型:           checkEmail(str)
校验字符串是否为中文:               checkIsChinese(str)
计算字符串的长度，一个汉字两个字符:   realLength()
校验字符串是否符合自定义正则表达式:   checkMask(str,pat)
得到文件的后缀名:                  getFilePostfix(oFile) 
************************************************************************/

var check_messages = "";
function setCheckError(s){
  setError(s);
  //check_messages += "<br>" + s;
}
//==================input common begin======================
function getRadioValue(objName){
  return $('input:radio[name='+objName+']:checked').val();               //获取一组radio被选中项的值
}
function setRadioValue(objName,v){
  return $("input[name="+objName+"][value="+v+"]").attr("checked",true); //value=v的radio被选中
}
function getSelectText(objName){
  //return $("select[@name="+objName+"] option[@selected]").text(); //获取select被选中项的文本
  //return $("select[name="+objName+"]").find("option:selected").text();  //jquery 1.3.2
  return d(objName).options[d(objName).selectedIndex].text;
}
function getSelectTextByObj(obj){
  return obj.options[obj.selectedIndex].text;
}
function getRadioText(objName){
  return $('input:radio[name='+objName+']:checked').next("label").text(); //获取radio被选中项的文本
}
function getCheckboxText(objName){
  return $('input:checkbox[name='+objName+']:checked').next("label").text(); //获取checkbox被选中项的文本
}

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
  var dot = '';
  if(dotLen > 0){
    dot = '.';
    for(var j=0;j<dotLen;j++) dot +='0';
  }
  
  var value = o.value;
  if(isNaN(value) || value.length==0){
      o.value = '';
     return;
  }
  value = parseFloat(value).toFixed(dotLen);
  if(value.toString().indexOf(".")<0) value = value.toString()+ dot;
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
function floatInput3(o){
  o.value = formatFloat3(o.value);
  if(isNaN(o.value) || o.value=='') o.value = "0.000";
}

function formatFloat3(value){
  if(value.length==0) return "";
  value = parseFloat(value).toFixed(3);
  if(value.toString().indexOf(".")<0)
    value = value.toString()+".000";
  return value;
}
//==================input check begin======================
function inputFocus(obj, bFocus){
  if(isUndefined(bFocus) ||isEmpty(bFocus)){
    obj.click();
    obj.focus();
  }else{
    bFocus.click();
    bFocus.focus();
  }
}

function checkRadioCheck(f, objName,strNM){
  var rtn = true;
  f(objName).value = getRadioValue(objName);
  if(isEmpty(getRadioValue(objName))){
    setCheckError("请选择[" + strNM + "]，不能为空！");
    rtn = false;
  }
  return rtn;
}

// check input for UserName
function checkUserNameInput(obj,maxLen,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    inputFocus(obj, bFocus);
    setCheckError("请输入[" + strNM + "]，不能为空！");
    rtn = false;
  }else if(!checkLength(obj,maxLen)){
    setCheckError("["+strNM + "]最长只能输入" + maxLen + "个字节！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!isRegisterUserName(obj.value)){
    setCheckError("["+strNM + "]只能输入3-20个字母/数字开头、可带、“_”、“.”的字串！");
    inputFocus(obj, bFocus);
    rtn = false;
  }
  return rtn;
}

function checkSelect(obj,strNM){
  var rtn = true;
  if(isEmpty(obj.value)){
    setCheckError("请选择[" + strNM + "]，不能为空！");
    rtn = false;
  }
  return rtn;
}

// check input for String
function checkStrInput(obj,maxLen,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    inputFocus(obj, bFocus);
    setCheckError("请输入[" + strNM + "]，不能为空！");
    rtn = false;
  }else if(!isEmpty(obj.value) && !isValidStr(obj.value)){
    inputFocus(obj, bFocus);
    setCheckError("["+strNM + "]含有非法字符，请更改！");
    rtn = false;
  }else if(!checkLength(obj,maxLen)){
    inputFocus(obj, bFocus);
    setCheckError("["+strNM + "]最长只能输入" + maxLen + "个字节");
    rtn = false;
  }
  return rtn;
}

// check input for String
function checkStrLimitInput(obj,maxLen,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    setCheckError("请输入[" + strNM + "]，不能为空！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!isEmpty(obj.value) && !isValidStrLimit(obj.value)){
    setCheckError("["+strNM + "]含有非法字符，请更改！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!checkLength(obj,maxLen)){
    setCheckError("["+strNM + "]最长只能输入" + maxLen + "个字节！");
    inputFocus(obj, bFocus);
    rtn = false;
  }
  return rtn;
}

// check input for int
function checkIntInput(obj,maxLen,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    setCheckError("请输入["+strNM + "]，不能为空！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!isPosInteger(obj.value)){
    setCheckError("["+strNM + "]必须输入数字！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!checkLength(obj,maxLen)){
    setCheckError("["+strNM + "]最长只能输入" + maxLen + "个字节！");
    inputFocus(obj, bFocus);
    rtn = false;
  }
  return rtn;
}

// check input for number
function checkNumInput(obj,maxLen,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    setCheckError("请输入["+strNM + "]，不能为空！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!isNumber(obj.value)){
    setCheckError("["+strNM + "]必须输入数值！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!checkLength(obj,maxLen)){
    setCheckError("["+strNM + "]最长只能输入" + maxLen + "个字节！");
    inputFocus(obj, bFocus);
    rtn = false;
  }
  return rtn;
}

// check input for date
function checkDateInput(obj,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    setCheckError("请输入["+strNM + "]，不能为空！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else{
    var ss = obj.value.split(" ");
    var s1,s2;
    s1 = ss;
    if(ss.length>1){
      s1 = ss[0];
      s2 = ss[1];
      if(!isTime(s2)){
        setCheckError("["+strNM + "]输入有误！");
        inputFocus(obj, bFocus);
        rtn = false;
      }
    }
    if(!isDate(s1)){
      setCheckError("["+strNM + "]输入有误！");
      inputFocus(obj, bFocus);
      rtn = false;
    }
  }
  return rtn;
}

function checkTimeInput(obj,checkEmptyKB,strNM,bFocus){
  var rtn = true;
  if(checkEmptyKB && isEmpty(obj.value)){
    setCheckError("请输入["+strNM + "]，不能为空！");
    inputFocus(obj, bFocus);
    rtn = false;
  }else if(!isTime(obj.value)){
    setCheckError("["+strNM + "]输入有误！");
    inputFocus(obj, bFocus);
    rtn = false;
  }
  return rtn;
}

// check start and end input
function checkSEInput(objS,objE,strNM,bFocus){
  var rtn = true;
  if(objS.value && objE.value && objS.value > objE.value){
    setCheckError("["+strNM + "]范围有误！");
    inputFocus(objS, bFocus);
    rtn = false;
  }
  return rtn;
}
// check byte length of a string : return boolean
function checkLength(obj,maxLen){
  return getlen(obj.value)<=maxLen;
}

//==================input check end======================


// get byte length of a string : return int
function getlen(tempField){
    var str = tempField;
    var len = 0;
    if(tempField!==""){ len = tempField.length};
    var count = 0;
    for(var i=0;i<len;i++){
        if(str.charCodeAt(i)==65438||str.charCodeAt(i)==65439)
          continue;
        if(str.charCodeAt(i)<0||(str.charCodeAt(i)>255&&str.charCodeAt(i)<65384)||str.charCodeAt(i)>65437) count++;
        count++;
    }
    return count;
}// end getlen

// function to format Obj value
function NumFormat(obj, format){
    var tmpStr;
    if ((obj.value).length==0 || format==null || format==""){
        tmpStr = "";
    } else {
        tmpStr = format + obj.value.trim();
        tmpStr = tmpStr.substring(tmpStr.length-format.length, tmpStr.length);
    }
    obj.value = tmpStr;
}// end NumFormat

// function to see if an input value has been entered at all : return boolean
function isEmpty(inputVal){
    return (inputVal==null || inputVal.length==0);
}// end isEmpty

// function to see if an input value is a positive integer : return boolean
function isPosInteger(inputVal){
    var inputStr = inputVal.toString();
    var oneChar;
    for (var i=0; i<inputStr.length; i++){
        oneChar = inputStr.charAt(i);
        if (oneChar<"0" || oneChar>"9"){
            return false;
        }
    }
    return true;
}// end isPosInteger

// function to see if an input value is a positive or negative integer : return boolean
function isInteger(inputVal){
    var inputStr = inputVal.toString();
    var oneChar;
    for (var i=0; i<inputStr.length; i++){
        oneChar = inputStr.charAt(i);
        if (i==0 && oneChar=="-"){
            continue;
        }
        if (oneChar<"0" || oneChar>"9"){
            return false;
        }
    }
    return true;
}// end isNumber


// function to see if an input value is a positive number : return boolean
function isPosNumber(inputVal){
    var inputStr = inputVal.toString();
    var oneChar;
    var hasOneDecimal = false;
    for (var i=0; i<inputStr.length; i++){
        oneChar = inputStr.charAt(i);
        if (oneChar=="." && !hasOneDecimal){
            hasOneDecimal = true;
            continue;
        }
        if (oneChar<"0" || oneChar>"9"){
            return false;
        }
    }
    return true;
}//end isNumber

// function to see if an input value is a positive or negative number
// return boolean
function isNumber(inputVal){
    var inputStr = inputVal.toString();
    var oneChar;
    var hasOneDecimal = false;
    for (var i=0; i<inputStr.length; i++){
        oneChar = inputStr.charAt(i);
        if (i==0 && oneChar=="-"){
            continue;
        }
        if (oneChar=="." && !hasOneDecimal){
            hasOneDecimal = true;
            continue;
        }
        if (oneChar<"0" || oneChar>"9"){
            return false;
        }
    }
    return true;
}// end isNumber

function isNumber(inputVal,maxDotNum){
    var inputStr = inputVal.toString();
    var oneChar;
    var hasOneDecimal = false;
    for (var i=0; i<inputStr.length; i++){
        oneChar = inputStr.charAt(i);
        if (i==0 && oneChar=="-"){
            continue;
        }
        if (oneChar=="." && !hasOneDecimal){
            hasOneDecimal = true;
            continue;
        }
        if (oneChar<"0" || oneChar>"9"){
            return false;
        }
    }
     decPos=inputVal.indexOf(".");
     nLen=inputVal.length;
     if(decPos>-1){
       if((nLen-decPos)>maxDotNum+1){
          return false;
        }
      }
    return true;
}//end isNumber

//2005-06-01
function isDate(str){
    var rtn = false;
    if(!(rtn=str=='') && checkDateFormat(str)){
        var t, cd;
        if(str.length == 8 && str.indexOf('-')<0){
            t = new Array(3);
            t[0] = str.substring(0,4);
            t[1] = str.substring(4,6);
            t[2] = str.substring(6,8);
        }else{
            t = str.split('-');
        }
        cd = new Date(t[0],t[1]-1,t[2]);
        if (t[0] == y2k(cd.getYear()) && (t[1]-1 == cd.getMonth()) && (t[2] == cd.getDate()))
            rtn = true;
    }
    return rtn;
}
function y2k(number) { return (number < 1000) ? number + 1900 : number; }
function checkDateFormat(str){
    var reg = /^ *(0|[1-9][0-9]{0,3})(\/|-{0,1})(0[1-9]|1[0-2])(\/|-{0,1})(0[1-9]|[1-2][0-9]|3[0-1]) *$/
    return reg.test(str);
}

//HH:MI:SS
function isTime(str){
    var rtn = false;
    if(!(rtn=str=='') && checkTimeFormat(str)){
        var t, cd;
        t = str.split(':');
        if(t.length==2 && t[0]>=0 && t[0]<=23 && t[1]>=0 && t[1]<=59) rtn = true;
        if(t.length==3 && t[0]>=0 && t[0]<=23 && t[1]>=0 && t[1]<=59 && t[2]>=0 && t[2]<=59) rtn = true;
    }
    return rtn;
}
function checkTimeFormat(str){
    var reg = /^ *(0[0-9]|1[0-9]|2[0-3])(\:{0,1})([0-5][0-9]) *$/
    return reg.test(str);
}

//判断一个8位的纯数字的字符串如20041208是否是一个合法的日期,这里只做基本的判断
function IsValidDate( stringDate )
{
  var strDate = Trim(stringDate);
  if(strDate.length != 8) return false;
  if(!IsAllDigit(strDate)) return false;
  var nYear = strDate.substring( 0, 4 );//取出前4位为年
  var nMonth = strDate.substring( 4, 6 );
  var nDay = strDate.substring( 6, 8 );
  if ( nYear <= 1900 || nMonth > 12 || nMonth < 1 || nDay > 31 || nDay < 1 )
  {
    return false;
  }
  return true;
}

//判断一个6位的纯数字的字符串如075560是否是一个合法的时间,这里只做基本的判断
function IsValidTime( stringTime )
{
  var strTime = Trim(stringTime);
  if(strTime.length != 6) return false;
  if(!IsAllDigit(strTime)) return false;
  var nHour = strTime.substring( 0, 2 );//取出前4位为年
  var nMinute = strTime.substring( 2, 4 );
  var nSecond = strTime.substring( 4, 6 );
  if ( nHour >= 24 || nMinute > 60 ||nSecond > 60 )
  {
    return false;
  }
  return true;
}

/**
* 去除多余空格函数
* trim:去除两边空格 lTrim:去除左空格 rTrim: 去除右空格
* 用法：
*     var str = "  hello ";
*     str = str.trim();
*/
String.prototype.trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
String.prototype.lTrim = function()
{
    return this.replace(/(^[\\s]*)/g, "");
}
String.prototype.rTrim = function()
{
    return this.replace(/([\\s]*$)/g, "");
}

/**
*校验字符串是否为整型
*返回值：
*如果为空，定义校验通过，      返回true
*如果字串全部为数字，校验通过，返回true
*如果校验不通过，              返回false     
*参考提示信息：输入域必须为数字！
*/
function checkIsInteger(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(/^(\\-?)(\\d+)$/.test(str))
        return true;
    else
        return false;
}

/**
*校验整型最小值
*str：要校验的串。  val：比较的值
*返回值：
*如果为空，定义校验通过，                返回true
*如果满足条件，大于等于给定值，校验通过，返回true
*如果小于给定值，                        返回false              
*参考提示信息：输入域不能小于给定值！
*/
function checkIntegerMinValue(str,val)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(typeof(val) != "string")
        val = val + "";
    if(checkIsInteger(str) == true)
    {
        if(parseInt(str,10)>=parseInt(val,10))
            return true;
        else
            return false;
    }
    else
        return false;
}

/**
*校验整型最大值
*str：要校验的串。  val：比较的值
*返回值：
*如果为空，定义校验通过，                返回true
*如果满足条件，小于等于给定值，校验通过，返回true
*如果大于给定值，                        返回false       
*参考提示信息：输入值不能大于给定值！
*/
function checkIntegerMaxValue(str,val)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(typeof(val) != "string")
        val = val + "";
    if(checkIsInteger(str) == true)
    {
        if(parseInt(str,10)<=parseInt(val,10))
            return true;
        else
            return false;
    }
    else
        return false;
}

/**
*校验整型是否为非负数
*str：要校验的串。
*返回值：
*如果为空，定义校验通过，返回true
*如果非负数，            返回true
*如果是负数，            返回false               
*参考提示信息：输入值不能是负数！
*/
function isNotNegativeInteger(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(checkIsInteger(str) == true)
    {
        if(parseInt(str,10) < 0)
            return false;
        else
            return true;
    }
    else
        return false;
}

/********************************** Double ****************************************/
/**
*校验字符串是否为浮点型
*返回值：
*如果为空，定义校验通过，      返回true
*如果字串为浮点型，校验通过，  返回true
*如果校验不通过，              返回false     
*参考提示信息：输入域不是合法的浮点数！
*/
function checkIsDouble(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    //如果是整数，则校验整数的有效性
    if(str.indexOf(".") == -1)
    {
        if(checkIsInteger(str) == true)
            return true;
        else
            return false;
    }
    else
    {
        if(/^(\\-?)(\\d+)(.{1})(\\d+)$/g.test(str))
            return true;
        else
            return false;
    }
}

/**
*校验浮点型最小值
*str：要校验的串。  val：比较的值
*返回值：
*如果为空，定义校验通过，                返回true
*如果满足条件，大于等于给定值，校验通过，返回true
*如果小于给定值，                        返回false              
*参考提示信息：输入域不能小于给定值！
*/
function checkDoubleMinValue(str,val)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(typeof(val) != "string")
        val = val + "";
    if(checkIsDouble(str) == true)
    {
        if(parseFloat(str)>=parseFloat(val))
            return true;
        else
            return false;
    }
    else
        return false;
}

/**
*校验浮点型最大值
*str：要校验的串。  val：比较的值
*返回值：
*如果为空，定义校验通过，                返回true
*如果满足条件，小于等于给定值，校验通过，返回true
*如果大于给定值，                        返回false       
*参考提示信息：输入值不能大于给定值！
*/
function checkDoubleMaxValue(str,val)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(typeof(val) != "string")
        val = val + "";
    if(checkIsDouble(str) == true)
    {
        if(parseFloat(str)<=parseFloat(val))
            return true;
        else
            return false;
    }
    else
        return false;
}

/**
*校验浮点型是否为非负数
*str：要校验的串。
*返回值：
*如果为空，定义校验通过，返回true
*如果非负数，            返回true
*如果是负数，            返回false               
*参考提示信息：输入值不能是负数！
*/
function isNotNegativeDouble(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if(checkIsDouble(str) == true)
    {
        if(parseFloat(str) < 0)
            return false;
        else
            return true;
    }
    else
        return false;
}

/**
*校验字符串是否为日期型
*返回值：
*如果为空，定义校验通过，           返回true
*如果字串为日期型，校验通过，       返回true
*如果日期不合法，                   返回false    
*参考提示信息：输入域的时间不合法！（yyyy-MM-dd）
*/
function checkIsValidDate(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    var pattern = /^((\\d{4})|(\\d{2}))-(\\d{1,2})-(\\d{1,2})$/g;
    if(!pattern.test(str))
        return false;
    var arrDate = str.split("-");
    if(parseInt(arrDate[0],10) < 100)
        arrDate[0] = 2000 + parseInt(arrDate[0],10) + "";
    var date =  new Date(arrDate[0],(parseInt(arrDate[1],10) -1)+"",arrDate[2]);
    if(date.getYear() == arrDate[0]
       && date.getMonth() == (parseInt(arrDate[1],10) -1)+""
       && date.getDate() == arrDate[2])
        return true;
    else
        return false;
}

/**
*校验两个日期的先后
*返回值：
*如果其中有一个日期为空，校验通过,          返回true
*如果起始日期早于等于终止日期，校验通过，   返回true
*如果起始日期晚于终止日期，                 返回false    
*参考提示信息： 起始日期不能晚于结束日期。
*/
function checkDateEarlier(strStart,strEnd)
{
    if(checkIsValidDate(strStart) == false || checkIsValidDate(strEnd) == false)
        return false;
    //如果有一个输入为空，则通过检验
    if (( strStart == "" ) || ( strEnd == "" ))
        return true;
    var arr1 = strStart.split("-");
    var arr2 = strEnd.split("-");
    var date1 = new Date(arr1[0],parseInt(arr1[1].replace(/^0/,""),10) - 1,arr1[2]);
    var date2 = new Date(arr2[0],parseInt(arr2[1].replace(/^0/,""),10) - 1,arr2[2]);
    if(arr1[1].length == 1)
        arr1[1] = "0" + arr1[1];
    if(arr1[2].length == 1)
        arr1[2] = "0" + arr1[2];
    if(arr2[1].length == 1)
        arr2[1] = "0" + arr2[1];
    if(arr2[2].length == 1)
        arr2[2]="0" + arr2[2];
    var d1 = arr1[0] + arr1[1] + arr1[2];
    var d2 = arr2[0] + arr2[1] + arr2[2];
    if(parseInt(d1,10) > parseInt(d2,10))
       return false;
    else
       return true;
}

/**
*校验字符串是否为email型
*返回值：
*如果为空，定义校验通过，           返回true
*如果字串为email型，校验通过，      返回true
*如果email不合法，                  返回false    
*参考提示信息：Email的格式不正?_！
*/
function checkEmail(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    if (str.charAt(0) == "." || str.charAt(0) == "@" || str.indexOf("@", 0) == -1
        || str.indexOf(".", 0) == -1 || str.lastIndexOf("@") == str.length-1 || str.lastIndexOf(".") == str.length-1)
        return false;
    else
        return true;
}//~~~

/**
*校验字符串是否为中文
*返回值：
*如果为空，定义校验通过，           返回true
*如果字串为中文，校验通过，         返回true
*如果字串为非中文，             返回false    
*参考提示信息：必须为中文！
*/
function checkIsChinese(str)
{
    //如果值为空，通过校验
    if (str == "")
        return true;
    var pattern = /^([\\u4E00-\\u9FA5]|[\\uFE30-\\uFFA0])*$/gi;
    if (pattern.test(str))
        return true;
    else
        return false;
}

function isDouble(str){
  if (str == "")  return true;
  var pattern = /^\-?([1-9]\d*|0)\.\d+$/;
  if(pattern.test(str))
        return true;
    else
        return false;
}
/**
* 计算字符串的长度，一个汉字两个字符
*/
String.prototype.realLength = function()
{
  return this.replace(/[^\\x00-\\xff]/g,"**").length;
}

/********************************** mask ***************************************/
/**
*校验字符串是否符合自定义正则表达式
*str 要校验的字串  pat 自定义的正则表达式
*返回值：
*如果为空，定义校验通过，           返回true
*如果字串符合，校验通过，           返回true
*如果字串不符合，                   返回false    
*参考提示信息：必须满足***模式
*/
function checkMask(str,pat)
{
    //如果值为空，通过校验
    if (str == "")
        return true;
    var pattern = new RegExp(pat,"gi")
    if (pattern.test(str))
        return true;
    else
        return false;
}

//校验是否全由数字组成
function isDigit(s)
{
    var patrn=/^[0-9]{1,20}$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验IP
function isIP(s)
{ 
    //var patrn=/^[0-9.]{1,20}$/;
    var patrn=/^[0-9]{1,4}\.[0-9]{1,4}\.[0-9]{1,4}\.[0-9]{1,4}$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验邮政编码
function isPostalCode(s)
{    
    var patrn=/^[a-zA-Z0-9 ]{3,12}$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验手机号码：必须以数字开头，除数字外，可含有“-”
function isMobil(s)
{
    var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验普通电话、传真号码：可以“+”开头，除数字外，可含有“-”
function isTel(s)
{
    //var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?(\d){1,12})+$/;
    var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验密码：只能输入3-20个字母、数字、下划线
function isPasswd(s)
{
    var patrn=/^(\w){3,20}$/;
    if (!patrn.exec(s)) return false
    return true
}
//校验登录名：只能输入3-20个以字母/数字开头、可带“_”、“.”的字串
function isRegisterUserName(s)
{
    var patrn=/^[a-zA-Z0-9]{1}([a-zA-Z0-9]|[._]){2,19}$/;
    if (!patrn.exec(s)) return false
    return true
}

////校验字符串:不能输入 ; , " '
//校验字符串:不能输入 '
function isValidStr(s){
    //var patrn=/^[^\;"']*$/gi;
    var patrn=/^[^\']*$/gi;
    if (!patrn.exec(s)) return false
    return true
}

//校验字符串:不能输入 ; , " ' _ *
function isValidStrLimit(s){
    var patrn=/^[^\;,"'*_]*$/gi;
    if (!patrn.exec(s)) return false
    return true
}
