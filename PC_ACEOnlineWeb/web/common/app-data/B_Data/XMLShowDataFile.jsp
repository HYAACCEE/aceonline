<%@ page language="java" import="java.io.*" pageEncoding="UTF-8"%>
<%@ page import="com.svv.dms.web.util.FileDES" %>
<%@ page import="com.svv.dms.app.B_DataBaseBean" %>
<%
  String fullName = request.getParameter("f");
  String filename = java.net.URLEncoder.encode(fullName.substring(fullName.lastIndexOf("\\")+1),"UTF-8");
  
  String type = "";
	//type 为response 返回类型,filename 为要打开的文件名称  
	if((filename.indexOf(".xls")>0) || (filename.indexOf(".xlsx")>0)){
	    type = "application/vnd.ms-excel";    
	}else if(filename.indexOf(".pdf")>0){  
	    type = "application/pdf";            
	}else if((filename.indexOf(".doc")>0)  || (filename.indexOf(".docx")>0)){  
	    type = "application/msword";         
	}else if(filename.indexOf(".txt")>0){   
	   type = "text/plain";                  
	}else if(filename.indexOf(".ppt") >0){  
	    type = "application/ppt";             
	}
  
	//response设置返回内容type,outputStream输出  
	response.setContentType(type);
  response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");

  OutputStream outer = null;   
  FileInputStream in = null;   
  try{
    in = new FileInputStream(fullName);
       
    byte[] b = new byte[1024];   
    int i = 0;
    
    outer = response.getOutputStream();
    while((i = in.read(b)) > 0){   
      outer.write(b, 0, i);   
    }
    outer.flush();   
    //要加以下两句话，否则会报错   
    //java.lang.IllegalStateException: getOutputStream() has already been called for //this response     
    out.clear();   
    out = pageContext.pushBody();   
  }catch(FileNotFoundException e){ 
    out.println("文件不存在！");
    System.out.println(e.getMessage());   
  }finally{   
    if(in != null){   
      in.close();   
      in = null;   
    }
  }   
%>
