<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  	String pid = URLEncoder.encode("아기상어","UTF-8");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jspProj_jsp</h1>
<h2>basic</h2>
<a href="basic/01_first.jsp">01_first.jsp</a><br>
<a href="basic/02_sec.html">02_sec.html</a><br />
<a href="basic/03_lifeCycle.jsp">03_lifeCycle.jsp</a><br />
<a href="basic/04_diary.jsp">04_diary.jsp</a><br />
<a href="basic/05_out.jsp">05_out.jsp</a><br />
<h2>request</h2>
<a href="req/aaa.jsp?pid=<%=pid %>&no=1234&marriage=true">aaa</a><br>
<a href="req/joinForm.jsp">joinForm</a><br>
<a href="req/examForm.jsp">examForm</a><br>
<a href="req/scoreInput.jsp">scoreInput</a><br>
<h2>Response</h2>
<a href="response/aaa.jsp">aaa</a><br>
<a href="response/ccc.jsp">ccc</a><br>
<a href="response/movieForm.jsp">movieForm</a><br>
<a href="response/joinForm.jsp">joinForm</a><br>
</body>
</html>