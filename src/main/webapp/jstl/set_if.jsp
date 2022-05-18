<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_if</title>
</head>
<body>
<h1>set_if</h1>

<c:set var = "nn1" value="차은우"/>
<c:set var = "nn1" value="차은수" scope="request"/>
<c:set var = "nn1" value="차은미" scope="session"/>
<c:set var = "nn1" value="차은양" scope="application"/>
<c:set var = "nn1" value="차은가" />

${nn1 } <br />
${requestScope.nn1 } <br />
${sessionScope.nn1 } <br />
${applicationScope.nn1 } <br />
---------------------------------- <br />

<c:remove var="nn1" scope ="page"/>
${nn1 } <br />
<c:remove var="nn1" scope ="request"/>
${nn1 } <br />
<c:remove var="nn1" scope ="session"/>
${nn1 } <br />
<c:remove var="nn1" scope ="application"/>
${nn1 } <br />
---------------------------------- <br />
<c:set var = "mm" value="<%=new MemberDTO(\"aaa\",\"홍길동\") %>" />
<c:set property="pw" target="${mm}" value = "1q2q" />
${mm } <br />
<%-- ${mm.pid} ==> mm.getPid()--%>
${mm.pid },${mm.pname },${mm.pw },${mm.age }<%-- ,${mm.tel } --%> <br />
${mm.nickname } <br />
---------------------------------- <br />
<c:if test="${false }">
	참이지롱 <br />
</c:if>

<c:set var = "jum" value="78"/>
<!-- if는 else가 없다... -->
<c:if test="${jum>=80 }">
<!-- 	합격 <br /> -->
	<c:set var = "res" value="합격"/>
</c:if>
<!-- if문과 otherwise 같이 사용 불가 -->
<%-- <c:otherwise>
	<c:set var = "res" value="불합격"/>
</c:otherwise> --%>


res : ${res }
---------------------------------- <br />
<c:choose>
	<c:when test="${jum>=80 }">
		<c:set var = "res2" value="우수"/>
	</c:when>
	<c:when test="${jum>=60 }">
		<c:set var = "res2" value="정상"/>
	</c:when>
	<c:otherwise>
		<c:set var = "res2" value="미흡"/>
	</c:otherwise>
</c:choose>

res2 : ${res2 }
</body>
</html>