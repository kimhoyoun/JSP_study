<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String main = "info"; 
    	
    if(request.getParameter("main") != null){
    	main = request.getParameter("main");
    }
    	String mainUrl = "main2/"+main+".jsp";
    	String menuUrl = "menu2/"+main+".jsp";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지</title>
<link rel="stylesheet" href="../css/in_home2.css" type="text/css" />
</head>
<body>
<header>
	<jsp:include page="top2.jsp"/>
</header>

<section>
	<div id = "submenu">
		<jsp:include page = "<%=menuUrl %>"/>
	</div>
	
	<div id ="main">
		<jsp:include page="<%=mainUrl %>"/>	
	</div>
	
</section>
</body>
</html>