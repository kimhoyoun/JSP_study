<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join form</title>
</head>
<body>
<h1>join form</h1>

<form action="joinReg.jsp">
	<table border=1>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><input type="text" name="age" /></td>
		</tr>
		<tr>
			<th>결혼여부</th>
			<td>
				기혼<input type="radio" value = "true" name="mariage" />
				미혼<input type="radio" value = "false" name="mariage" checked/>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value ="회원가입" /></td>
		</tr>
	</table>
</form>
</body>
</html>