<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 디렉티브 구간 %>
<%!
	// class 명 : 파일명을 그대로 따라감. 
	// class 03_LifeCycle_jsp
	// declaration -- 클래스 정의
	
	int a =10;
	String b = "아기상어";
	Date now = new Date();
	
	void meth_1(){
		System.out.println("meth_1() 실행");
		
	}
	
	void meth_2(){
		//out.println("meth_2() 실행");
		System.out.println("meth_2() 실행");
	}
	
	/* 직접적인 실행구문 작성 불가. 
	if(true){
		System.out.println("참이지롱");
	} */
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		width :50px;
		height : 50px;
		background : #ff0;
		border: 1px solid #000;
		}
</style>
</head>
<body>
	<h1>03_lifeCycle</h1>
	
	<%
	// scriptlet : _jspService() 메소드 정의 ::> main과 같다.
	// 실제 코드 실행이 된다.
	out.println("와 scriptlet 이다 1 : "+ a+", "+ b+", "+ now+"<br>");
	int aa = 20;
	String bb = "엄마상어";
	out.println("와 scriptlet 이다 2 : "+ aa+", "+ bb+"<br>");
	out.println("와 scriptlet 이다 3"+"<br>");
	
	// 클래스 정의 가능
	class AAA{
		
	}
	
	/* 메소드에서 메소드 정의 불가
	void meth_3(){
		//out.println("meth_2() 실행");
		System.out.println("meth_3() 실행");
	} */
	
	for(int i =0; i<10; i++){
		
	
%>
<%-- <div><%out.println(i); %></div> --%>
<div><%= i %></div>
<% }%>

</body>
</html>