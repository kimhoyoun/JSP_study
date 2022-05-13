<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	int c = 300;
%>
<%
	int d = 400;
%>

<h2>bbb.jsp입니다.</h2>
<%=c %>, <%=d %>


<%= request.getAttribute("mem1") %>
<%= request.getAttribute("mem2") %>

<%
request.setAttribute("mem2", new MemberDTO("정북성",20,false));

 %>