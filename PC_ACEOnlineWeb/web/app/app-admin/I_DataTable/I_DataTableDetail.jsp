<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

    <!--script language=javascript>setTitle("查看数据表结构");</script-->
    <form name="MainForm" action="/" method="POST">
    <html:hidden name="I_DataTableBean" property="ao.tableID" />
    <html:hidden name="I_DataTableBean" property="ao.tableName" />
    <input type="hidden" name="rowNum">

    <div id="db_main">    

    <div class="dt_header">【<bean:write name="I_DataTableBean" property="ao.tableMemo" />】</div>
    <div id="list_div" align="center"></div>
    
    </div>
    </form>

    <script language="javascript">
    <!--
      function updateColSeq(obj,id,name,memo){
			  confirmMsg("请输入新排序：B<input type=text size=3 name=newseq>", function() {
			        ajax("I_DataTable.y?cmd=updateColSeq", {"dc.colid":id, "dc.colName":name, "dc.seq":d.newseq.value}, function(html){
			              setMessage(html);
			              page_redirect();
			        });
			  });
      }
      function editExt(obj,id,name,memo){
        showBox('【'+memo+' - 元数据】', "I_DataTableColumnExtInfo.y?cmd=editPage&ao.colid="+id, 600, 600);
      }
      function del(obj,id,name,memo){
        checkAdminPass('确定要删除[' + id + ':' + memo + ']吗？', function(){
            ajax('I_DataTable.y?cmd=delCol', {"dc.colid":id, "dc.colName":name, "dc.colMemo":memo}, function(html){
                setMessage(html);
                page_redirect();
            });
         });
      }
      function page_redirect(){
        var dx = new DynaXmlHttp();
        dx.setAction("I_DataTable.y?cmd=queryRows");
        dx.addParam("ao.tableID", d("ao.tableID").value);
        load(dx,true);
      }
      function init(){
        page_redirect();
      }
    -->
    </script>
<%@ include file="/common/IncludeBottom.jsp" %>

