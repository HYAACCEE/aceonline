<%@ page language="java" import="java.io.*" pageEncoding="GB2312"%>
<%@ page import="com.svv.dms.web.Constants" %>
<%
  String fileName = request.getParameter("f");
  String fullName = request.getRealPath("/") + Constants.UPLOAD_FILE_PATH + fileName;
  //File tmpFile = new File(Constants.UPLOAD_FILE_PATH);
  //String fullName = tmpFile.getAbsolutePath() + fileName;
  
  String filedisplay = java.net.URLEncoder.encode(fileName.substring(fileName.lastIndexOf("/")+1),"UTF-8");
  System.out.println(fullName);
    
  //设置响应头和下载保存的文件名
  response.setContentType("application/x-download");
  response.setHeader("Content-Disposition", "attachment; filename=\"" + filedisplay + "\"");

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