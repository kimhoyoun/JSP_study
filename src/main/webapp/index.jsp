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
<h2>Application</h2>
<a href="application/info.jsp">application</a><br>
<a href="application/set1.jsp">set1</a><br>
<a href="application/get.jsp">get</a><br>
<a href="application/set2.jsp">set2</a><br>
<a href="application/remove.jsp">remove</a><br>
<a href="application/login/main.jsp">로그인</a><br>
<a href="application/login2/main.jsp">로그인2</a><br>
<h2>Include</h2>
<a href="inc/big.jsp?pid=zzz&marriage=true">include</a><br>
<a href="inc/home.jsp">home</a><br>
<a href="inc/home2.jsp">home2</a><br>
<a href="inc/big2.jsp?pid=qwer&marriage=false">include디렉티브</a><br>
<h2>Forward</h2>
<a href="forward/aaa.jsp?pid=qaz&age=27&marriage=1">aaa</a><br>
<a href="forward/member.jsp">member</a><br>
<h2>Exception</h2>
<a href="error/err01.jsp">err01</a><br>
<a href="error/err02.jsp">err02</a><br>
<a href="error/err03.jsp">err03</a><br>
<a href="error/err04.jsp">err04</a><br>
<h2>Cookie</h2>
<a href="cookie/set1.jsp">cookie/set1</a><br>
<a href="cookie/set2.jsp">cookie/set2</a><br>
<a href="cookie/view.jsp">cookie/view</a><br>
<a href="cookie/delete.jsp">cookie/delete</a><br>
<a href="cookie/login/main.jsp">로그인</a><br>
</body>
</html>