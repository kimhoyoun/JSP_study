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

	if(application.getAttribute("inUser") != null){
		MemberDTO dto = (MemberDTO)application.getAttribute("inUser");
		
		msg = dto.getPname()+"님 로그아웃 하셨습니다";
		
		application.removeAttribute("inUser");
	}

%>

<script>
	alert("<%=msg%>");
	location.href="main.jsp";
</script>


</body>
</html>