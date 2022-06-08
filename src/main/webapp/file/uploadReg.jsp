<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
//     	request.setCharacterEncoding("UTF-8");
    
    	String ff = request.getRealPath("zzz");
    	ff = "C:\\temp\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
    	
    	MultipartRequest mm = new MultipartRequest(
    			request,
   				ff,				// 파일저장 위치
    			10*1024*1024,	// 파일 최대크기
    			"UTF-8",		// 인코딩
    			new DefaultFileRenamePolicy() 	// 파일 이름 중복 정책
    			);
    	
    	

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadReg</title>
</head>
<body>
<h1>uploadReg</h1>
<form action="uploadReg.jsp">
	<table border="">
		<tr>
			<td>이름</td>
			<td><%=mm.getParameter("pname") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=mm.getParameter("age") %></td>
		</tr>
		<tr>
			<td>파일1</td>
			<td>원본 : <%=mm.getOriginalFileName("upff1") %>,
			저장된 이름 : <%=mm.getFilesystemName("upff1") %>
			파일 타입 : <%=mm.getContentType("upff1") %>
			파일에 해당하는 class : <%=mm.getFile("upff1") %>
			파일 삭제 : <%=mm.getFile("upff1").delete() %>
			</td>
		</tr>
		<tr>
			<td>파일2</td>
			<td>원본 : <%=mm.getOriginalFileName("upff2") %>,
			저장된 이름 : <%=mm.getFilesystemName("upff2") %>
			파일 타입 : <%=mm.getContentType("upff2") %></td>
		</tr>
	</table>
</form>
</body>
</html>