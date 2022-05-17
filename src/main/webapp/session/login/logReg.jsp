<%@page import="jdbc_p.MemberDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name = "dto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
</body>
<h1>로그인 처리</h1>

<%

	String msg = "로그인 실패";
	
	MemberDTO mem = new MemberDAO().detail(dto); 
	
	if(mem != null){
		msg = "로그인 성공";
		session.setAttribute("mem", mem);
	}
	
%>

<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
	
</script>
</html>