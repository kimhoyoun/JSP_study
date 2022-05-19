<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDtail</title>
</head>
<body>
<h1>memberDtail</h1>


<c:set var = "mem" value = "<%=new DBCP_DAO().detail2(new MemberDTO(request.getParameter(\"pid\"))) %>"/>


<table border ="1">
	<tr>
		<th>이름</th>
		<td>${mem.pname }</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${mem.pid }</td>
	</tr>
	<tr>
		<th>나이</th>
		<td>${mem.age }</td>
	</tr>
	<tr>
		<th>결혼</th>
		<td>${mem.marriage }</td>
	</tr>
	<tr>
		<th>가입일</th>
		<td>${mem.reg_Date }</td>
	</tr>
</table>
</body>
</html>