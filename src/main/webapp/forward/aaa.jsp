<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward/aaa</title>
</head>
<body>
<h1>forward/aaa</h1>
</body>
</html>

<%
	int marriage = 0;
	if(request.getParameter("marriage") != null){
		marriage = Integer.parseInt(request.getParameter("marriage"));
	}
	request.setAttribute("mat", 91);
	request.setAttribute("mems", new MemberDAO().list(marriage));
%>
<%-- page source로 봐도 aaa.jsp의 내용은 보이지 않는다. --%>
<jsp:forward page = "bbb.jsp?kor=88">	
	<jsp:param value = "77" name = "eng"></jsp:param>
</jsp:forward>