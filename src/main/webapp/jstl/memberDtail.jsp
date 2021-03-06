<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDtail</title>
</head>
<body>
<h1>memberDtail</h1>


<c:set var = "mem" value = "<%=new DBCP_DAO().detailFile(new MemberDTO(request.getParameter(\"pid\"))) %>"/>


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
		<td>
		<fmt:formatDate value="${mem.reg_Date }" pattern="yy-MM-dd a h:mm"/>
		</td>
	</tr>
</table>

<c:if test="${mem.imgFile != null }">
	<h3>사진</h3>
	<p><img src="${pageContext.request.contextPath }/zzz/${mem.imgFile}" /></p>
</c:if>

</body>
</html>