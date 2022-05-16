<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage= "../excep/excep02.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err01</title>
</head>
<body>
<h1>err01</h1>

<%
// 	try{
// 		int a =10/0;		
// 		out.println("정상실행:"+a);
// 	}catch(Exception e){
// 		out.println("에러가 발생했습니다. : "+ e.getMessage());
// 	}

	//// 1->20 까지 3,6,9 게임을 출력하세요.
	// 제약사항 
	// 반복문은 사용가능 조건문, 3항 연사자 사용금지
	// 10으로 나눴을때 3  6 9 나머지 = > 3,6,9 
	// 3, 6, 9의 3으로 나눴을때의 나머지 0
	// 이중 try catch 를 사용하면 됨. 
	
	for(int i =1; i<=20; i++){
			int a = i%10;
		try{
			
			int b = 1234/(a%3);
			out.println(i + "<br>");
		}catch(Exception e){
			try{
				int c = 1234/a;	
				out.println("짝 <br>");
			}catch(Exception e1){
				out.println(i+"<br>");
			}
		}
	}
%>

</body>
</html>