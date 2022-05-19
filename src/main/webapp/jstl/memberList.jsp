<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList</title>
</head>
<body>
<h1>memberList</h1>
<table border="">
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>이름</td>
		<td>나이</td>
		<td>결혼</td>
		<td>가입일</td>
	</tr>
	<c:forEach items="<%= new DBCP_DAO().listAll() %>" var = "dto" varStatus="no">
	
	<tr>
		<td>${no.index }</td>
		<td>${dto.pid }</td>
		<td>
		
		<a href="<c:url value="/jstl/memberDtail.jsp?pid=${dto.pid }"/>">${dto.pname}</a>
		
		</td>
		<td>${dto.age}</td>
		<td>${dto.marriage}</td>
		<td>${dto.reg_Date}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>