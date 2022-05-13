<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String main = (String)request.getAttribute("mainURL");
   		String mainURL = "main/"+main+".jsp";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/forward.css" type = "text/css" />
</head>
<body>
<header>
	<jsp:include page = "stop.jsp" />
</header>

<section>
	<h3><%=main %> 페이지</h3>
	<jsp:include page="<%=mainURL %>"/>
</section>

<footer>
	난 바닥이야
</footer>
</body>
</html>