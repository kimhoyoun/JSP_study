<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="mem" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name = "mem"/>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>


</head>
<body>
<h1>joinReg</h1>

<%
	boolean rs = false;
	String msg = "회원가입 실패!";

// 	String ff = request.getRealPath("zzz");
// 	ff = "C:\\temp\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
// 	MultipartRequest mm = new MultipartRequest(
// 			request,
// 				ff,				// 파일저장 위치
// 			10*1024*1024,	// 파일 최대크기
// 			"UTF-8",		// 인코딩
// 			new DefaultFileRenamePolicy() 	// 파일 이름 중복 정책
// 			);
	
	
// 	String pid = mm.getParameter("pid");
// 	String pname = mm.getParameter("pname");
// 	String pw = mm.getParameter("pw");
// 	String age = mm.getParameter("age");
// 	String marriage = mm.getParameter("marriage");
// 	String fileName1 = "";
// 	String fileType1 = mm.getContentType("pic");
	
// 	Enumeration files = mm.getFileNames();
// 	 while(files.hasMoreElements()) {
// 		 String name = (String)files.nextElement();
// 		 String original = mm.getOriginalFileName(name);
// 		 System.out.println("file : "+original);
// 	 }
	 
// 	String fileName2 = "";
	
// 	if(fileType1.contains("image")){
		String realPath = "";
    	String savePath = "C:\\temp\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
    	int maxSize = 10*1024*1024;
    	String type = "utf-8";
    	ServletContext context = request.getServletContext();
    	realPath = savePath;
    	ArrayList saveFiles = new ArrayList();
    	ArrayList origFiles = new ArrayList();
    	
		String imageString = "";
		try {
			DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
			diskFileItemFactory.setRepository(new File(realPath));
			diskFileItemFactory.setSizeThreshold(maxSize);
			diskFileItemFactory.setDefaultCharset("utf-8");
			ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
 
 
			List<FileItem> items = fileUpload.parseRequest(request);
			for (FileItem item : items) {
				if (item.isFormField()) {
					System.out.println(String.format("[파일형식이 아닌 파라미터] 파라미터명: %s, 파일 명: %s, 파일크기: %s bytes <br>", item.getFieldName(), item.getString(), item.getSize()));
				} else {
					System.out.println(String.format("[파일형식 파라미터] 파라미터명: %s, 파일 명: %s, 파일 크기: %s bytes <br>", item.getFieldName(), item.getName(), item.getSize()));
					
					if (item.getSize() > 0) {
						String separator = File.separator;
						System.out.println();
						int index = item.getName().lastIndexOf(separator);
						String fileName = item.getName().substring(index + 1);
						File uploadFile = new File(realPath + separator + fileName);
						
						imageString += fileName+",";
						
						System.out.println("realPath : "+ realPath );
						System.out.println("separator : "+ separator );
						System.out.println("index : "+index);
						System.out.println("fileName : "+fileName);
						System.out.println("uploadFile : "+ uploadFile);
						item.write(uploadFile);
					}
				}
 
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(imageString);
		
		
		
		
		
%>
</body>
<script>
	alert("<%=msg%>");
	location.href = "../";
</script>
</html>

