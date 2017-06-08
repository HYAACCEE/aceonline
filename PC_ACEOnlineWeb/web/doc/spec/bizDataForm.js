      function SetCurrentSID(sidName,sidColName){
    	  ajax('S_Main.y?cmd=XMLSetCurrentSID', {"sidName":sidName, "sidValue":d(sidColName).value}, function(html){});
      }
      function initCommonInputHtml(obj,tableid,colid,value,editFlag){
        if(obj){
          ajax('../xml/XMLSelectData.y?cmd=getCommonInputHtml', {"ao.tableID":tableid, "colid":colid, "value":value ||"", "editFlag": editFlag || 0}, function(html){
              obj.innerHTML = html.trim();
          });
        }      
      }
      function CommonController(obj){
        if(obj){
           /////////////////////////////////////////
        }
      }
      function XMLGetSelectList(myTableid,myColName,name,value,hasAll,parentName,synFlag){
        if(d(name) && d(name).type!='hidden'){
          var onchangeValue = "";
          if(d(name).getAttributeNode("onchange")) onchangeValue = d(name).getAttributeNode("onchange").nodeValue;
          ajax('../xml/XMLSelectData.y?cmd=getSelectOptionData', {"ao.tableID":myTableid, "name":name, "value":value, "hasAll":hasAll, "parentName":myColName, "parentValue":d(parentName).value, "synFlag":synFlag, "onchange":onchangeValue}, function(html){
        	  d(name).outerHTML = html.trim();
          });
        }
      }
      function CommonFocus(obj){
        if(obj){
          d("CONTAINER").value = obj.name;
        }else{
          d("CONTAINER").value = '';
        }
      }
      function CommonSelect(v){
        if(!isEmpty(d("CONTAINER").value)){
          var objnm = d("CONTAINER").value;
          var obj = d(objnm);
          if(v==1){//数据应用字典_All
            selectFromDataParamType_All(obj);
          }
        }
      }
      //其他业务数据
      function selectFromDataTable(obj,tableID,tableName){
        Select_DataSelect("", 1, tableID, obj.name, "TMP_"+obj.name);
        //obj.value = obj.value + spliter_data + d("TMP_"+obj.name).value;
      }
      //数据应用字典
      function selectFromDataParamType(obj){
        var result = Select_DataParam_All(1, d("PID_"+obj.name).value, 0, obj.name, "TMP_"+obj.name);
      }
      //数据应用字典_All
      function selectFromDataParamType_All(obj){
        var result = Select_DataParam_All(1, '', obj.name, "TMP_"+obj.name);
        if(result){
          ajax('S_Main.y?cmd=XMLSetValueScopeOfDataParam', {"tableID":d("ao.tableID").value, "colid":d("COLID_"+obj.name).value, "typeID": obj.value}, function(html){
          });
        }
        if(!isEmpty(d("TMP_"+obj.name).value)) d("div_"+obj.name).innerText = " 数据应用字典 : " + d("TMP_"+obj.name).value;
        else d("div_"+obj.name).innerText = '';
      }