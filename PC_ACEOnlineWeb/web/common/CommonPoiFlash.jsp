<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
<%@ page import="com.svv.dms.web.Constants" %>

<%
	String fn = (String)request.getAttribute(Constants.REQUEST_ATTRIBUTE_POI_NAME);
	XSSFWorkbook wb = (XSSFWorkbook)request.getAttribute(Constants.REQUEST_ATTRIBUTE_POI);
	if(wb==null){
	    out.println("<font color=red>错误：无数据！</font>");
	%>
      <script>
      window.close();
      </script>
    <%
      out.close();
	}else{
	    //System.out.println("[CommonPoiFlash.jsp] 111-----------------------------------------");
	%>
	    <script>
	    moveTo(0,0);
	    resizeTo(screen.width,screen.height);
	    </script>
    <%	
      //System.out.println("[CommonPoiFlash.jsp] 222-----------------------------------------");
    	response.setContentType ("application/excel");
	    response.setHeader("Content-disposition","inline; filename="+ (fn==null ? "excel" : fn) +".xlsx");
      //System.out.println("[CommonPoiFlash.jsp] 333-----------------------------------------");
	    
		  OutputStream outer = null;
		  try{
		    outer = response.getOutputStream();
        wb.write(outer);
        //System.out.println("[CommonPoiFlash.jsp] 444-----------------------------------------");
        outer.close();
		    outer.flush();   
		    //要加以下两句话，否则会报错   
		    //java.lang.IllegalStateException: getOutputStream() has already been called for //this response     
		    out.clear();   
		    out = pageContext.pushBody();   
		  }catch(FileNotFoundException e){ 
		    %>		    
      <script>
      alert("文件不存在！");
      window.close();
      </script>
		    <%
		    System.out.println(e.getMessage());   
		  }finally{   
		    if(wb != null){
		      wb = null;   
		    }
		  } 
 }		  
%>