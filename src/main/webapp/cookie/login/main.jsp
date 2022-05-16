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
	Cookie [] coos = request.getCookies();
	
	String id = "";
	String pw = "";
	
	for(Cookie coo : coos){
		if(coo.getName().equals("pid")){
			id = coo.getValue();
		}
		
		if(coo.getName().equals("pw")){
			pw = coo.getValue();
		}
	}

	
	
	if(!id.trim().equals("")&&!pw.trim().equals("")){ %>
		<%=id %>님 안녕하세요 <br />		
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