<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/IncludeTop.jsp" %>

<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
String id = "1";  
%>  

     <script language="javascript" src="dsoframer.js"></script>  
     <script type="text/javascript">  
         /*用法说明：  
           1，创建 word对象  
           2，设置文件上传url  
           3，在页面加载时，打开word文档，根据是否传人docUrl参数，决定是本地新建，还是从服务器端获取  
           4，在页面关闭时，执行上传操作。  
         */  
          var word = new word();  
          //决定路径  
          word.setUploadUrl("http://127.0.0.1:8070/word/upload_handle.jsp");  
            
          var docurl = "";  
          function load(){  
              //方法：openDoc(docName, docUrl)  
              // docName:必填，本地保存的文件名, 也为上传到服务器上时的文件名  
              // docUrl: 填时，为从服务器端获取doc文档的路径, 不填时，表示本地新建doc文档   
                
              word.openDoc('1.doc',"http://127.0.0.1:8070/word/upload/1.doc");  
                
              /**  
               //这里实现读取服务器的模板，并保存到服务器的业务路径中  
              $.post("/ZsytpServlet",{type:"ajaxWord",id:<%=id%>},function(result){  
                     var dataObj=eval("("+result+")");//转换为json对象   
                       
                     docurl = dataObj.docurl;  
                     if(docurl == ""){  
                         word.openDoc('<%=id%>.doc',"<%=basePath%>/webapps/zsytp/templ/"+dataObj.fhtk+".doc");  
                       
                         document.getElementById('oframe').SetFieldValue("f_name",dataObj.f_name,"");  
                         document.getElementById('oframe').SetFieldValue("m_name",dataObj.m_name,"");  
                         document.getElementById('oframe').SetFieldValue("town",dataObj.town,"");  
                         document.getElementById('oframe').SetFieldValue("f_name1",dataObj.f_name,"");  
                         document.getElementById('oframe').SetFieldValue("m_name1",dataObj.m_name,"");  
                         document.getElementById('oframe').SetFieldValue("sqsj",dataObj.sqsj,"");  
                         document.getElementById('oframe').SetFieldValue("f_name2",dataObj.f_name,"");  
                         document.getElementById('oframe').SetFieldValue("f_birthday",dataObj.f_birthday,"");  
                         document.getElementById('oframe').SetFieldValue("f_hjdz",dataObj.f_hjdz,"");  
                         document.getElementById('oframe').SetFieldValue("m_name2",dataObj.m_name,"");  
                         document.getElementById('oframe').SetFieldValue("m_birthday",dataObj.m_birthday,"");  
                         document.getElementById('oframe').SetFieldValue("m_hjdz",dataObj.m_hjdz,"");  
                     }else{  
                     //实现读取业务路径的内容，并修改  
                         word.openDoc('<%=id%>.doc',"<%=basePath%>/webapps/zsytp/word/"+docurl);  
                     }         
              });  
              **/  
                
          }  
            
          //为了简化，我定义关闭窗口的时候，保存到服务器上面，并且删除本地的临时文件  
          function unload(){  
              word.saveDoc();  
              word.close();  
          }  
            
          //给书签赋值  
          function setFileVal(){  
             document.getElementById('oframe').SetFieldValue("dm","2006-03-16 22:22:22","");  
          }  
            
          //插入红头文件  
            
          //等等。。网上都有 API  
            
             
          //真正开发的时候，，需要用到的方法，保存文件到服务器上  
          //可以查看里面的 document.getElementById('oframe').HttpAddPostString("id",id); 等向后台穿参数  
          function uploadFile(){  
             //word.saveDocAndParm('1',docurl);  
          }  
     </script>  
 </head>  
 <body onload="load();" onunload="unload();">    
    <input  type="button" value="保存文件到服务器" onclick="uploadFile()" >  
    <hr/>  
    <!--   
    <object classid="clsid:00460182-9E5E-11d5-B7C8-B8269041DD57" codebase="dsoframer.ocx" id="oframe" width="100%" height="100%">  
      <param name="BorderStyle" value="1">  
      <param name="TitlebarColor" value="52479">  
      <param name="TitlebarTextColor" value="0">    
    </object>  
   -->  
   <object classid="clsid:00460182-9E5E-11d5-B7C8-B8269041DD57" codebase="dsoframer.CAB#Version=2.0.0.0" id="oframe" width="100%" height="100%">  
          <param name="BorderStyle" value="1">  
          <param name="TitlebarColor" value="52479">  
          <param name="TitlebarTextColor" value="0">  
    </object>


    <form name="MainForm" action="/" method="POST">

    <div id="db_main">    

    <div class="dt_header">【<bean:write name="I_ProcessDescBean" property="po.processName" /> 表单模板】</div>
    <div id="list_div" align="center"></div>
    
    </div>
    </form>

    <script language="javascript">
    <!--
      function commit(){
        parent.d("ao.processCols").value = d.cols.value;
        parent.closeBox();
      }
      function initWord(){
        // 为了兼容Office XP，可以创建“SharePoint.OpenDocuments.1”
        openDocObj = new ActiveXObject("SharePoint.OpenDocuments.2");
        //调用openDocObj的相应的方法。比如打开服务器上的一个Office文档
        //openDocObj.ViewDocument("http://www.abc.com/documents/sample.doc");
        //打开Office程序在线编辑文件
        openDocObj.EditDocument("http://www.abc.com/documents/sample.doc");
        //打开服务器上的一个文档模版，来创建一个新的文档：
        openDocObj.CreateNewDocument("http://www.abc.com/documents/sampleTemplate.dot", "http://www.abc.com/documents/");
        
      }
      function init(){
        initWord();
      }
    -->
    </script>
   
<%@ include file="/common/IncludeBottom.jsp" %>