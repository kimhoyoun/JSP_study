<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String main = "info"; 
    	
    if(request.getParameter("main") != null){
    	main = request.getParameter("main");
    }
    
    	String mainUrl = "main/"+main+".jsp";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지</title>
<link rel="stylesheet" href="../css/in_home.css" type="text/css" />
</head>
<body>
<header>
	<jsp:include page="top.jsp"/>
</header>


<%-- jsp:include page="main/<%=main%>.jsp" 처럼 조립하면 안됨. --%>
<section>
	<jsp:include page="<%=mainUrl%>"/>

</section>
</body>
</html>