<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  
  	request.setAttribute("mem1", new MemberDTO("정우성",10,false));
  %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>big</h1>

big.jsp입니다. <br />


<!-- 
파라미터 형식으로 include 되는 jsp에 정보를 전달할 수 있다. 
에러가 발생한 빨간줄이 나타나지만 실제 구동은 된다.  ===> Eclipse문제??? 
-->

<%= request.getAttribute("mem1") %>



 <%--
 	jsp:param tag를 사용하면 쉽게 넘길 수 있다.
	aaa.jsp에서 받는 방식은 getParameter(파라미터 name)과 동일하다
	
	include내부엔 주석도 넣지 말것........ 스트레스;;;;;;;
--%>

<jsp:include page="aaa.jsp?pname=aaa&age=37">
 	
 	<jsp:param value="88" name = "kor"/> 	
 	<jsp:param value="78" name = "eng"/>
 	<jsp:param value="68" name = "mat"/>

</jsp:include> 

<%
// 	언제 setAttribute가 됐는지에 따라 값을 참조할 수 있고 없다.

	request.setAttribute("mem2", new MemberDTO("정좌성",20,false));
%>


<%= request.getAttribute("mem2") %>
<br />

<!-- include 될 jsp 파일에서 선언한 멤버변수, 지역변수, jspService 모두 사용할 수 없다. -->
<!-- html로 컴파일 된 후 넘어오는 것이기 때문에 변수를 알지 못하고 값으로 알고있는다. -->

<%-- <%=a %>, <%=b %> --%>

<jsp:include page="bbb.jsp"/>
<br />
<br />
<%=request.getAttribute("mem2")%>

</body>
</html>