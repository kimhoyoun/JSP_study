<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="mem" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name = "mem"/>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>
</head>
<body>
<h1>joinReg</h1>

<%

	boolean rs = false;
	String msg = "회원가입 실패!";
	rs = new MemberDAO().insert(mem);
	
	if(rs){
		msg = mem.getPname()+"회원가입 성공";
	}
%>
</body>
<script>
	alert("<%=msg%>");
	location.href = "../";
</script>
</html>

