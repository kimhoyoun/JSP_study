<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie/set1</title>
</head>
<body>
<h1>cookie/set1</h1>
<%
	Cookie coo1 = new Cookie("pname", "bbb");
	
	response.addCookie(coo1);

%>
</body>
</html>