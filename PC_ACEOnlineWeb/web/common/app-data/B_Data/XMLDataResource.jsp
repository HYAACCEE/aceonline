<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.util.ParamClass" %>
<%@ include file="/common/IncludeTop_s.jsp" %>

    <script language=javascript>//setTitle("数据管理 - 数据来源信息");</script>
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="B_DataResourceBean" property="ao.tableID" />
    <html:hidden name="B_DataResourceBean" property="ao.dataid" />
    <html:hidden name="B_DataResourceBean" property="resourceTableType" />
    <html:hidden name="B_DataResourceBean" property="afp" />


    <table cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0><tr><td height=1>
    <div class="dt_header">【数据来源】</div>
  
    <table class="DMBAR" cellSpacing=1 cellpadding=0 border=0>
      <tr>
<logic:present name="B_DataResourceBean" property="resourceTableTypeList" scope="request">
<logic:iterate id="pi" name="B_DataResourceBean" property="resourceTableTypeList">
        <td class="DM" id="div_resourceTableType_<bean:write name="pi" property="value" />" onclick="DM_Select('<bean:write name="pi" property="value" />')">
        <bean:write name="pi" property="label" /></td>
</logic:iterate>
</logic:present>
      </tr>
    </table>
    
    </td></tr><tr><td>
    <iframe class="sub_frame_data" id="sub_frame_data" name="sub_frame_data" src="" frameborder="0" style="border:0px solid #666677"></iframe>
    
    </td></tr></table>
    
    <script language="javascript">
    <!--
      function DM_Select(v){
        rtpControl(v.substring(3,6));
      }
      function rtpControl(rtp){
        var f = d.MainForm;
        f("resourceTableType").value = rtp;
        f.action = "B_DataResource.y?cmd=query&editFlag="+d.afp.value+"&pageTab="+rtp;
        f.target = "sub_frame_data";
        f.submit();
      }
      function add(){
        var rtp = d("resourceTableType").value;
        disableAll();
        if(rtp == 001){
          d("ao"+rtp+".id").value = '新增';
          d("ao"+rtp+".resourceName").value = '';
        }
        setDisplay(d('div_btn'+rtp), false);
        setDisplay(d('btn_add'+rtp), false);
        setDisplay(d('btn_edit'+rtp), true);
        setDisable(d('div_temp_win'+rtp), false);
        showFormBox('【数据来源 - 添加】','div_temp_win'+rtp);
      }
      function edit(){
        var rtp = d("resourceTableType").value;
        disableAll();
        setDisplay(d('div_btn'+rtp), false);
        setDisplay(d('btn_add'+rtp), true);
        setDisplay(d('btn_edit'+rtp), false);
        setDisable(d('div_temp_win'+rtp), false);
        showFormBox('【数据来源 - 编辑】','div_temp_win'+rtp);
      }
      function disableAll(){
        setDisable(d('div_temp_win001'), true);
        setDisable(d('div_temp_win002'), true);
        setDisable(d('div_temp_win003'), true);
        setDisable(d('div_temp_win004'), true);
      }
      function exec(tip, a){
        var rtp = d("resourceTableType").value;
        var f = d.MainForm;
        confirmMsg('确定要提交吗？', function(){
            f.appendChild(d("div_temp_win"+rtp));
            f.action = "B_DataResource.y?cmd="+a;
            f.target = "_self";
            f.submit();
        });
      }
      function init(){
        $('#div_temp_win001').dialog('close');
        $('#div_temp_win002').dialog('close');
        $('#div_temp_win003').dialog('close');
        $('#div_temp_win004').dialog('close');
        if(isEmpty(d("resourceTableType").value)){
          _d("div_resourceTableType_<%=ParamClass.CLASS_RESOURCE_TABLE_TYPE%>001")[0].click();
        }else{
          _d("div_resourceTableType_<%=ParamClass.CLASS_RESOURCE_TABLE_TYPE%>"+d("resourceTableType").value)[0].click();
        }
      }
    -->
    </script>

<%@ include file="/common/IncludeBottom.jsp" %>

    <div id="div_temp_win001" class="easyui-dialog" disabled style="position:relative;margin:0 auto;width:480px; height:280px;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader" width="130"><bean:write name="B_DataResourceBean" property="ao001.id_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="B_DataResourceBean" property="ao001.id" readonly="true" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.resourceName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao001.resourceName"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.resourceCode_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao001.resourceCode"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.resourceSubject_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao001.resourceSubject"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.sctLevel_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="B_DataResourceBean" property="ao001.sctLevel">
                  <html:optionsCollection name="B_DataResourceBean" property="sctLevelList" /></html:select><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.resourceType_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao001.resourceType"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao001.issueDepartment_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao001.issueDepartment" /><br/></td> 
      </tr>
      <tr id="div_btn001">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add001" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit001" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </div>


    <div id="div_temp_win002" class="easyui-dialog" style="position:relative;margin:0 auto;width:680px; height:600px;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.id_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="B_DataResourceBean" property="ao002.id" readonly="true" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.collectObject_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.collectObject"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.organName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.organName"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.actionName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.actionName"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.actionArea_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.actionArea"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.actionStartDate_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.actionStartDate" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.actionEndDate_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.actionEndDate" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.actionDesc_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.actionDesc" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.collectDevice_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.collectDevice" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.createDate_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.createDate" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao002.collectorName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao002.collectorName" /><br/></td> 
      </tr>
      <tr id="div_btn002">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add002" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit002" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </div>

    <div id="div_temp_win003" class="easyui-dialog" style="position:relative;margin:0 auto;width:680px; height:600px;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.id_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="B_DataResourceBean" property="ao003.id" readonly="true" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.title_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.title"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.subTitle_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.subTitle"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.mainResponser_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.mainResponser"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.otherResponser_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.otherResponser"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.publishArea_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.publishArea" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.publisher_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.publisher" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.publishDate_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.publishDate" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.subject_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.subject" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.version_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.version" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.language_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.language" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.startPage_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.startPage"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.endPage_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao003.endPage"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao003.sctLevel_desc" /></td> 
        <td class="tdBody"><html:select styleClass="sel_text" name="B_DataResourceBean" property="ao003.sctLevel">
                  <html:optionsCollection name="B_DataResourceBean" property="sctLevelList" /></html:select><br/></td> 
      </tr>
      <tr id="div_btn003">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add003" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit003" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </div>

    <div id="div_temp_win004" class="easyui-dialog" style="position:relative;margin:0 auto;width:680px; height:600px;">
    <div id="db_main">
    <table class=tbBorder cellSpacing=1>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.id_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_read" name="B_DataResourceBean" property="ao004.id" readonly="true" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.title_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.title"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.subTitle_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.subTitle"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.mainAuthor_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.mainAuthor"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.otherAuthor_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.otherAuthor"/><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.websiteName_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.websiteName" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.websiteUrl_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.websiteUrl" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.publishDate_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.publishDate" /><br/></td> 
      </tr>
      <tr>
        <td class="tdHeader"><bean:write name="B_DataResourceBean" property="ao004.language_desc" /></td> 
        <td class="tdBody"><html:text styleClass="ipt_text" size="50" name="B_DataResourceBean" property="ao004.language" /><br/></td> 
      </tr>
      <tr id="div_btn004">
        <td class="tdHeaderP" colspan="2">
          <input type="button" class="button" name="btn_add004" value=" 添加 " onclick="exec('添加','add');">&nbsp;&nbsp;
          <input type="button" class="button" name="btn_edit004" value=" 修改 " onclick="exec('修改','edit');">&nbsp;&nbsp;
        </td> 
      </tr>
    </table>
    </div>
    </div>
   

    </form>