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

	Cookie cooId = new Cookie("pid", "");
	Cookie cooPw = new Cookie("pw", "");
	
	Cookie [] coos = request.getCookies();
	
	for(Cookie coo : coos){
		if(coo.getName().equals("pid")){
			msg = coo.getValue()+"님 로그아웃 하셨습니다.";
		}
	}
	
	cooId.setMaxAge(0);
	cooPw.setMaxAge(0);
	response.addCookie(cooId);
	response.addCookie(cooPw);
	

%>

<script>
	alert("<%=msg%>");
	location.href="main.jsp";
</script>


</body>
</html>