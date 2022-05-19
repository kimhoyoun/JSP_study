<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<h1>foreach</h1>
<%
	String [] arr = {"정우성","정좌성","정남성","정중성","북두신성","정성"};
%>
<c:forEach var = "i" begin = "3" end = "20" step = "2" varStatus = "no">
	${i } ${no.index }<br />
</c:forEach>
------------------------------------ <br />
<c:forEach var ="tt" items = "<%=arr %>" varStatus = "no">
${no.index } - ${tt } <br />
</c:forEach>
------------------------------------ <br />

<%
	int[] arr2 = {11,45,32,67,88,93,25,89,23};
%>
<c:set var="sum" value = "0"/>
<c:forEach var ="num" items = "<%=arr2 %>" varStatus = "no">
	<c:if test="${num%2==0}" > 
		<c:set var="sum" value = "${sum + num }"/>
	</c:if>
</c:forEach>
 
sum : ${sum } <br />

-------------------------------------- <br />

<c:forTokens items ="현빈,원빈,,,,골빈,투빈_자바빈.장희빈,젤리빈,커피빈"
				delims = ",._" var = "ee" varStatus="no">
	${no.index } - ${ee } <br />
</c:forTokens>
-------------------------------------- <br />

<c:forTokens items ="11,45,32,67,88,93,26,89,23"
				delims = "," var = "ee" varStatus="no">
	${no.index } - ${ee }, ${ee%2 } <br />
</c:forTokens>



<c:set var = "a_max" value ="0"/>
<c:set var = "a_result" value = ""/>
<c:set var = "b_max" value ="0"/>
<c:set var = "b_result" value = ""/>

-------------------------------------- <br />

<c:forTokens items ="a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88"
				delims = "," var = "ee" varStatus="no">
				
	<c:forTokens items ="${ee }"
				delims = "_" var = "ee1" varStatus="no2">
		<c:choose>
			<c:when test = "${no2.index == 0 }">
				<c:set var = "ban" value = "${ee1 }"/>
			</c:when>
			
			<c:when test = "${no2.index == 1 }">
				<c:set var = "name" value = "${ee1 }"/>
			</c:when>
			
			<c:when test = "${no2.index == 2 }">
				<c:set var = "jum" value = "${ee1 }"/>
			</c:when>
		</c:choose>
	</c:forTokens>
		
		
		
	<c:choose>
		<c:when test="${ban == 'a' && a_max <jum }">
			
				<c:set var = "a_max" value = "${jum }"/>
				<c:set var = "a_result" value = "${name }"/>
		</c:when>
		<c:when test="${ban == 'b' && b_max < jum }">
				<c:set var = "b_max" value = "${jum }"/>
				<c:set var = "b_result" value = "${name }"/>
		</c:when>
	</c:choose>

</c:forTokens>

a반 1등 : ${a_result } - ${a_max }점  <br />	
b반 1등 : ${b_result } - ${b_max }점  <br />

</body>
</html>