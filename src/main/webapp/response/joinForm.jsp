<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
</head>
<body>
<h1>joinForm</h1>

<form action="joinReg.jsp" method = "post">
	<table border ="">
		<tr>
			<td>종류</td>
			<td>
				<input type="radio" name="type" value="child"/>미성년자
				<input type="radio" name="type" value="adult"/>성인
				<input type="radio" name="type" value="foreigner"/>외국인
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="pname" />
			</td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td>
				<input type="text" name="num1" />-
				<input type="text" name="num2" />			
			</td>
		</tr>
		<tr>
			<td colspan = "2" align = "center">
				<input type="submit"  value="회원가입"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>