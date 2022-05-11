<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>
<link rel="stylesheet" href="../css/joinForm.css" type="text/css" />
</head>
<body>
<h1>joinReg</h1>
<%
	request.setCharacterEncoding("utf-8");
	String [] hobby = request.getParameterValues("hobby");
	for(String tt : "pid,pname,pw,tel0,tel1,tel2,hobby,gender,content".split(",")){
%>

<div class = "big">
	<div><%=tt %></div>
	<div><%=request.getParameter(tt) %></div>
</div>
<%
	}
%>
<div class = "big">
	<div>취미들</div>
	<div><%=Arrays.toString(hobby) %></div>
</div>

</body>
</html>