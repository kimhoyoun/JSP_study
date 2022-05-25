<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 파일 다운만 하면 되니까 브라우저에 열릴 필요가없다. --%>
<%

	String fName = URLEncoder.encode(request.getParameter("fName"),"UTF-8");
	
	response.setHeader("Content-Disposition","attachment; filename="+fName);

	out.clear();
	out = pageContext.pushBody();
	
	String path = request.getRealPath("fff");
	path = "C:\\temp\\jsp_work\\jspProj\\src\\main\\webapp\\fff";
	path+="\\"+request.getParameter("fName");
	
	FileInputStream fis = new FileInputStream(path);
	ServletOutputStream sos = response.getOutputStream();
	byte [] buf = new byte[1024];
	
	while(fis.available()>0){
		int len = fis.read(buf);
		sos.write(buf,0,len);
	}
	
	sos.close();
	fis.close();
%>