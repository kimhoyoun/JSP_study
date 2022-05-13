<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	int a = 10;
%>
<%
	int b = 20;
%>

<h2>aaa.jsp입니다.</h2>
<%= request.getParameter("pid") %>
<%= request.getParameter("marriage") %>


<%=a %>, <%=b %> <br />
<!-- include : jsp:include page="aaa.jsp?pname=aaa&age=37" 방식으로 보낸 값 -->
<%= request.getParameter("pname") %>, 
<%= request.getParameter("age") %>,

<!-- include내 param tag : jsp:param value="88" name = "kor" 방식으로 보낸 값-->
<%= request.getParameter("kor") %>,
<%= request.getParameter("eng") %>,
<%= request.getParameter("mat") %>

<%-- <%= request.getAttribute("mem1") %> --%>
<%-- <%= request.getAttribute("mem2") %> --%>
