<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int start = (int)request.getAttribute("start");
	int end = (int)request.getAttribute("end");
%>
    
    
<h3>갤러리1</h3>
<div class = "big">
	<%-- 내 페이지가 아닌 url 기준으로 경로를 설정해줘야한다. --%>
	
	<% for(int i =start; i<=end; i++){ %>
		<img src="../fff/f<%=i %>.png" alt="" />
		
	<%
	}
	%>
</div>

<div id ="page">
<%-- 자신의 페이지면 '?'만 쓰면 된다. --%>
<% for(int i =1; i<=6; i++){ %>
		<a href="?pageNo=<%=i%>"><%=i%></a>
		
	<%
	}
	%>
</div>
