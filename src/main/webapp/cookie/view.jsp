<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
<h1>view</h1>
<%
	Cookie [] coos = request.getCookies();
	for(Cookie coo : coos){%>
		<%=coo.getName() %> : <%= coo.getValue() %> <br />
	
	<%
		
	}
%>
</body>
</html>