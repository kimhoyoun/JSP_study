<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 메인</title>
</head>
<body>
<h1>메인페이지입니다.</h1>

<%
	if(application.getAttribute("inUser") != null){
		
		MemberDTO dto = (MemberDTO)application.getAttribute("inUser");
%>
		<%=dto.getPname() %>님 안녕하세요 <br />
		<a href="logout.jsp">로그아웃</a>
<%
		
	}else{
%>


	<form action="logReg.jsp">
		어른디<input type="text" name="pid" /> <br />
		아뭐<input type="text" name="pw" /> <br />
		<input type="submit" value="로그인" />
	</form>

<%
	}
%>

</body>
</html>