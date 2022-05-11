<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    
    	String name = request.getParameter("pname");
    	String sNum1 = request.getParameter("sNum1");
    	String sNum2 = request.getParameter("sNum2");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>adult Join</h1>

<form action="">
	<table border="">
		<tr>
			<td>이름</td>
			<td>
			<%=name %>
			<input type="hidden" name = "pname" value = "<%=name%>"/>
			</td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td>
			<%=sNum1 %>-
			<%=sNum2.charAt(0)+"******"%>
				<input type="hidden" name="sNum1" value = "<%= sNum1%>" />
				<input type="hidden" name="sNum2" value = "<%= sNum2%>" />
			</td>
		</tr>
		<tr>
			<td>전화</td>
			<td>
				<select name="tel1" id="">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="012">012</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
				</select> -
				<input type="text" name="tel2" />-
				<input type="text" name="tel3" />
			</td>
		</tr>
		<tr>
			<td>회사</td>
			<td><input type="text" name="" /></td>
		</tr>	
		<tr>
			<td colspan ="2" align="center">
				<input type="submit" value="가입" />
			</td>
		</tr>
	</table>
</form>

</body>
</html>