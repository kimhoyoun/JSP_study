<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<%
	String msg ="로그아웃";

	
	
	MemberDTO dto = (MemberDTO)session.getAttribute("mem");
	msg = dto.getPname()+"님 로그아웃 하셨습니다.";
	
	session.invalidate();
	

%>

<script>
	alert("<%=msg%>");
	location.href="main.jsp";
</script>


</body>
</html>