<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <form name="MainForm" action="/" method="POST" encType="multipart/form-data">
    <html:hidden name="B_DataAttachFileBean" property="ao.tableID" />
    <html:hidden name="B_DataAttachFileBean" property="ao.dataid" />
    <html:hidden name="B_DataAttachFileBean" property="afp" />

<logic:equal name="B_DataAttachFileBean" property="afp" value="1">
    <div id="db_main">
    <table class="tbBorder" cellspacing=1 width=600 height=500>
    <tr>
      <td class="tdHeader" width=500>请选择要上传的资料类型：</td>
      <td class="tdBody"> <html:select styleClass="sel_text" name="B_DataAttachFileBean" property="ao.fileType" onchange="fileTypeControl()">
                           <html:optionsCollection name="B_DataAttachFileBean" property="fileTypeList" /></html:select></td>
      </tr>
      <tr>
        <td class="tdHeader" width=500>请选择要上传的文件：</td>
        <td class="tdBody">
<script type="text/javascript" src="<%=DOCPATH%>script/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript" src="<%=DOCPATH%>script/uploadify/swfobject.js"></script>
<script type="text/javascript" src="<%=DOCPATH%>script/uploadify/uploadUtil.js"></script>
<link rel="stylesheet" type="text/css" href="<%=DOCPATH%>script/uploadify/uploadify.css" />
<div id="upload-box" title=""></div>
<div id="over-box" style="display:none;color:blue;"><b>多媒体资料已经提交。</b></div>

        </td>
      </tr>
      <tr>
        <td class="tdBody" colspan=2>
    <div id="div_listData" align=center style="overflow:auto;height:600px;width:1000px;"></div>
      </tr>
    </table>
    </div>
</logic:equal>
    
    </form>

    <script language="javascript">
    <!--
      function fileTypeControl(){
        var v = d("ao.fileType").value;
        if(v==<%=ParamClass.VALUE_FILE_TYPE_PIC%>){
          d("upload-box").title = "支持上传.jpg、.gif、.png、.bmp格式的图片，大小不超过500k";
          loadUploadBox_img({"ao.tableID":d("ao.tableID").value, "ao.dataid":d("ao.dataid").value, "ao.fileType":v, "ao.fileSize":500}, 500);
        
        }else if(v==<%=ParamClass.VALUE_FILE_TYPE_AUDIO%>){
          d("upload-box").title = "支持上传.mp3、.mp4格式的音频文件，大小不超过2048k";
          loadUploadBox_audio({"ao.tableID":d("ao.tableID").value, "ao.dataid":d("ao.dataid").value, "ao.fileType":v, "ao.fileSize":2048}, 2048);

        }else if(v==<%=ParamClass.VALUE_FILE_TYPE_VIDIO%>){
          d("upload-box").title = "支持上传.avi、.wma、.mp4格式的视频文件，大小不超过2048k";
          loadUploadBox_vidio({"ao.tableID":d("ao.tableID").value, "ao.dataid":d("ao.dataid").value, "ao.fileType":v, "ao.fileSize":2048}, 2048);
          
        }else if(v==<%=ParamClass.VALUE_FILE_TYPE_FILE%>){
          d("upload-box").title = "支持上传.doc、.xls、.txt、.xml、.rtf格式的文件，大小不超过500k";
          loadUploadBox_file({"ao.tableID":d("ao.tableID").value, "ao.dataid":d("ao.dataid").value, "ao.fileType":v, "ao.fileSize":2048}, 2048);
        }
      }
<logic:equal name="B_DataAttachFileBean" property="afp" value="1">
      function editFileDesc(id){
        ajax('XMLDataAttachFile.y?cmd=edit', {"ao.id":id, "ao.fileMemo":d("picDesc"+id).value}, function(html){
            //setMessage(html);
            query();
        });
      }
      function del(id,file){
        confirmMsg("确定要删除吗？", function(){
            ajax("XMLDataAttachFile.y?cmd=del", {"ao.id":id, "ao.fileName":file}, function(html){
                //setMessage(html);
                query();
            });
        });
      }
</logic:equal>
      function query(){
        ajax('XMLDataAttachFile.y?cmd=query', {"ao.tableID":d("ao.tableID").value, "ao.dataid":d("ao.dataid").value, "afp":d.afp.value}, function(html){
            d("div_listData").innerHTML = htmlEncode(html);
<logic:equal name="B_DataAttachFileBean" property="afp" value="1">
            var tmp = d("subType_0");
            if( tmp && tmp.value==1){
              setDisplay(d("upload-box"), true);
              setDisplay(d("over-box"), false);
            }else{
              setDisplay(d("upload-box"), false);
              setDisplay(d("over-box"), true);
            }
</logic:equal>
        });
      }
      function init(){
        document.all("div_listData").style.height = document.documentElement.clientHeight - 90;
        query();
<logic:equal name="B_DataAttachFileBean" property="afp" value="1">
        createUploadBox('upload-box', 'XMLDataAttachFile.y?cmd=add', 'afileFile', "query()");
        fileTypeControl();
</logic:equal>
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>
