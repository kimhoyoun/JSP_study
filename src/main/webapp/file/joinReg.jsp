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

	String ff = request.getRealPath("zzz");
	ff = "C:\\temp\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
				ff,				// 파일저장 위치
			10*1024*1024,	// 파일 최대크기
			"UTF-8",		// 인코딩
			new DefaultFileRenamePolicy() 	// 파일 이름 중복 정책
			);
	
	
	String pid = mm.getParameter("pid");
	String pname = mm.getParameter("pname");
	String pw = mm.getParameter("pw");
	String age = mm.getParameter("age");
	String marriage = mm.getParameter("marriage");
	String fileName1 = "";
	String fileType1 = mm.getContentType("pic");
	String fileName2 = "";
	
// 	if(fileType1.contains("image")){
		
	if(mm.getContentType("pic")!= null && 
			Pattern.matches("image/.*", mm.getContentType("pic"))){
		fileName1 = mm.getFilesystemName("pic");
		if(mm.getFile("myff") != null){
			fileName2 = mm.getFilesystemName("myff");
		}
		new DBCP_DAO().insertFile(new MemberDTO(pid, pname, pw, age, marriage, fileName1, fileName2));
		rs = true;
	}else{
		if(mm.getFile("pic") !=null){
			mm.getFile("pic").delete();
		}
		if(mm.getFile("myff")!=null){
			mm.getFile("myff").delete();
		}
		%>
		<script>
		alert("이미지 파일을 넣어주세요!");
		location.href = "joinForm.jsp";
		</script>
		
		<%
// 		response.sendRedirect("joinForm.jsp");
	}
	
	
	
	if(rs){
		msg = pname+"님 회원가입 성공";
	}
%>
</body>
<script>
	alert("<%=msg%>");
	location.href = "../";
</script>
</html>

