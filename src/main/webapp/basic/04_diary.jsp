<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Calendar today = Calendar.getInstance();

	today.set(Calendar.DATE,1);
	today.set(Calendar.MONTH,0);
	int first = today.get(Calendar.DAY_OF_WEEK);
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH)+1;
	int last = today.getActualMaximum(Calendar.DATE);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/04_diary.css" type="text/css"/>
</head>
<body>
<h1>04_Diary</h1>
<div id = "calendar">

<%for(int k=1; k<=12; k++){
	today.set(Calendar.MONTH,k-1);
	 first = today.get(Calendar.DAY_OF_WEEK);
	 year = today.get(Calendar.YEAR);
	 month = today.get(Calendar.MONTH)+1;
	 last = today.getActualMaximum(Calendar.DATE);
		%>
		<div id = "month">
	
			<div><img src="../fff/f<%=month %>.png" alt="" /></div>
			<div><%=year+"년 "+month+"월" %></div>
			<div>
				<%for(char dd : "일월화수목금토".toCharArray()){%>
				<div><%=dd %></div>
				<%
				}		
				
				for(int i=1; i<first; i++){ %>
					
				<div></div>
				<%
				}
				
				for(int i=1; i<=last; i++){ %>
					
				<div><%=i %></div>
				<%
				}
				%>
			</div>
		</div>
	<%} %>

</div>
</body>
</html>