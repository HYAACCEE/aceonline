<OBJECT name="SendOut" classid="clsid:2294689C-9EDF-40BC-86AE-0438112CA439" codebase="iWebRevision.ocx#version=6,0,0,0" width=100% height=100%> 
　　<param name="WebUrl" value="<%=mServerUrl%>"> 
　　<param name="RecordID" value="<%=RecordID%>"> 
　　<param name="FieldName" value="SendOut"> 
　　<param name="UserName" value="<%=UserName%>"> 
　　<param name="Enabled" value="<%=SendOut_Enabled%>"> 
　　<param name="PenColor" value="#FF0000"> 
　　<param name="BorderStyle" value="0"> 
　　<param name="EditType" value="0"> 
　　<param name="ShowPage" value="0"> 
　　<param name="InputText" value=""> 
　　<param name="PenWidth" value="2"> 
　　<param name="FontSize" value="11"> 
　　<param name="SignatureType" value="0"> 
　　<param name="InputList" value="同意 不同意 请上级批示 请速办理">
　　</OBJECT> 


在＜param name="" value=""＞中，需要设置一些控件属性，具体如下： 

属性[公共] 
 WebUrl 系统服务器路径 
 RecordID 本文档记录编号 
 FieldName 本签章在记录中的保存字段 
 UserName 签章用户名称 
 Enabled 是否允许签名 
 PenColor 笔的颜色 
 PenWidth 笔的宽度 
 FontSize 文字大小 
 Modify 签章是否被修改 
 BorderStyle 边框0 无边框 1 有边框 
 ShowMenu 是否允许显示菜单 
 EditType 默认签章类型(0=手写;1=文字) 
 SignatureSize 是否取用户印章实际大小 
 SignatureType 签章类型( 0,印章在服务器中 
 1,印章从智能盘中 
 2,印章在本地文件中) 
 ImageName 如果使用本地印章完整文件，如："C:\\abc\abc.gif" 
上述属性中WebUrl、RecordID、FieldName为重要属性，不能空缺，请开发时务必注意。


//作用：保存签章数据信息
//保存流程：先保存签章数据信息，成功后再提交到DocumentSave，保存表单基本信息
function SaveSignature(){
  if(DocForm.Consult.Modify){                //判断签章数据信息是否被改变
	if(!DocForm.Consult.SaveSignature()){    //保存签章数据信息
		return false;
	}
  }
  if(DocForm.SendOut.Modify){                //判断签章数据信息是否被改变
	if(!DocForm.SendOut.SaveSignature()){    //保存签章数据信息
		return false;
	}
  }
  return true;
}




********************************************************************
保存接口调用时会把信息包传给后台WebUrl指定好的处理页面。信息包中传递一个OPTION=”SAVESIGNATURE”的数值到后台（这个OPTION的内容随着客户端调用函数的不同会自动设置）的服务端处理页面。然后，处理页面中判断客户端过来的传值后，执行保存操作，把签名信息存放在数据库里面。 
服务端处理页面里对用的代码如下：
if(mOption.equals("SAVESIGNATURE")){                  //下面的代码为保存印章数据
	mRecordID = MsgObj.GetMsgByName("RECORDID");      //取得文档编号
	mFieldName = MsgObj.GetMsgByName("FIELDNAME");    //取得签章字段名称
	mFieldValue = MsgObj.GetMsgByName("FIELDVALUE");  //取得签章数据内容
	mUserName = MsgObj.GetMsgByName("USERNAME");  //取得用户名称
	mDateTime = MsgObj.GetMsgByName("DATETIME");  //取得签章日期时间
	mHostName = request.UserHostAddress;          //取得客户端IP
	MsgObj.MsgTextClear();                        //清除SetMsgByName设置的值
	//MsgObj.MsgFileSave(mFilePath + "\\"+mRecordID+"_"+mFieldName+".gif"); //在服务器保存输出成图片
	if(ShowSignature){                                   //判断是否已经存在签章记录
		if(UpdateSignature()){                           //更新签章数据
			MsgObj.SetMsgByName("STATUS", "保存成功");   //设置状态信息
			MsgObj.MsgError("");                         //清除错误信息
		}else{
			MsgObj.MsgError("保存印章失败！");            //设置错误信息
		}
	}else{
		if(SaveSignature()){                            //保存签章数据
			MsgObj.SetMsgByName("STATUS", "保存成功");   //设置状态信息
			MsgObj.MsgError("");                         //清除错误信息
		}else{
			MsgObj.MsgError("保存印章失败！");            //设置错误信息
		}
	}	
}
（这里mOption之前已经获取了“OPTION”属性的内容） 

结尾： 

iWebSignature保存手写签名的操作基本上就完成了，如果还不清楚可以在金格提供的开发示例程序中找到相应的开发代码做参考。




