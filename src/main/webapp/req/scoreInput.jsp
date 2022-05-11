<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="scoreReg.jsp" method = "post">
	<table border = "1" width = 500px>	
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>수학</th>
			<th>영어</th>
		</tr>
		
		<tr>
			<td><input type="text" name = "name1"/></td>
			<td><input type="text" name = "kor1"/></td>
			<td><input type="text" name = "math1"/></td>
			<td><input type="text" name = "eng1"/></td>
		</tr>
	
		<tr>
			<td><input type="text" name = "name2"/></td>
			<td><input type="text" name = "kor2"/></td>
			<td><input type="text" name = "math2"/></td>
			<td><input type="text" name = "eng2"/></td>
		</tr>
		<tr>
			<td><input type="text" name = "name3"/></td>
			<td><input type="text" name = "kor3"/></td>
			<td><input type="text" name = "math3"/></td>
			<td><input type="text" name = "eng3"/></td>
		</tr>
		<tr>
			<td><input type="text" name = "name4"/></td>
			<td><input type="text" name = "kor4"/></td>
			<td><input type="text" name = "math4"/></td>
			<td><input type="text" name = "eng4"/></td>
		</tr>
		
		<tr>
			<td><input type="text" name = "name5"/></td>
			<td><input type="text" name = "kor5"/></td>
			<td><input type="text" name = "math5"/></td>
			<td><input type="text" name = "eng5"/></td>
		</tr>
		
	</table>
	
	<input type="submit"  value="제출"/>
</form>
</body>
</html>