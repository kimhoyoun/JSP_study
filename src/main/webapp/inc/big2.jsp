<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int a =10;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브</title>
</head>
<body>
<h1>include 디렉티브</h1>

<%= request.getParameter("pid")%>,
<%= request.getParameter("marriage")%>,
<%=a %>


<%-- 
	include file ="sub1.jsp?pname=edc" 방식은 안됨. 
	다른방법 없음
--%>
<%-- <%@ include file ="sub1.jsp?pname=edc" %> --%>
<%-- <%@ include file =<%=subUrl %> %> --%>
<%-- <%@ include file =subUrl %> --%>
<%-- <%@ include file ="subUrl" %> --%>

<%@ include file ="sub1.jsp" %>
<%=b %>
<br /><br />

<%@ include file ="sub2.jsp" %>


</body>
</html>