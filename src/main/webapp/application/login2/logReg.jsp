<%@page import="java.util.ArrayList"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
</body>
<h1>로그인 처리</h1>

<%
	String[] idArr = new String[]{"aa","bb","cc","dd","ee"};
	String[] pwArr = new String[]{"1111","2222","3333","4444","5555"};
	String[] nameArr = new String[]{"이효리","삼효리","사효리","오효리","육효리"};

	String id = request.getParameter("pid"), pw = request.getParameter("pw"), msg = "로그인 실패";
	
	for(int i=0; i<idArr.length; i++){
		if(idArr[i].equals(id)&&pwArr[i].equals(pw)){
			msg = "로그인 성공";
			application.setAttribute("inUser", new MemberDTO(id,nameArr[i],pw));
			break;
		}
	}

%>

<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
</script>
</html>