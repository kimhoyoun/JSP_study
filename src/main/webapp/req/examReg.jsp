<%@page import="bas.StudDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    
    	ArrayList<StudDTO> studs = new ArrayList<>();
    	String[] names = request.getParameterValues("pname");
    	String[] kors = request.getParameterValues("kor");
    	String[] engs = request.getParameterValues("eng");
    	String[] maths = request.getParameterValues("mat");
    	
    	for(int i=0; i<names.length; i++){
    		studs.add(new StudDTO(names[i], kors[i], engs[i], maths[i]));
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examReg</title>
<link rel="stylesheet" href="../css/examForm.css" type = "text/css" />
</head>
<body>
<h1>examReg</h1>

<% for(StudDTO dto : studs){%>
	<%=dto.getDiv() %>
<%
}
%>
</body>
</html>