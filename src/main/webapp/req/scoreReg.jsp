<%@page import="bas.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String info = "name,kor,math,eng";

	Student[] sArr = new Student[5];
	
	for(int i=1; i<sArr.length+1; i++){
		String name = request.getParameter("name"+i);
		String kor = request.getParameter("kor"+i);
		String math = request.getParameter("math"+i);
		String eng = request.getParameter("eng"+i);
		
		sArr[i-1] = new Student(name, Integer.parseInt(kor), Integer.parseInt(math),Integer.parseInt(eng));
		
		
	
	}
	
	
	for(int i=0; i<sArr.length; i++){
		System.out.println(sArr[i]);
	}
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>scoreReg</h1>
	<table border = 1 width = 300px>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>수학</th>
			<th>영어</th>
			<th>총점</th>
			<th>평균</th>
		</tr>
		
		<% for(int i =0; i<sArr.length; i++){ %>
		
			<tr>
				<td><%=sArr[i].getName() %></td>
				<td><%=sArr[i].getKor() %></td>
				<td><%=sArr[i].getMath() %></td>
				<td><%=sArr[i].getEng() %></td>
				<td><%= (sArr[i].getKor()+sArr[i].getMath()+sArr[i].getEng()) %></td>
				<td><%= (double)(sArr[i].getKor()+sArr[i].getMath()+sArr[i].getEng())/3 %></td>
			</tr>
			
		<%
		}
		%>	
	</table>

</body>
</html>