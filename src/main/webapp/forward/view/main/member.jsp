<%@page import="jdbc_p.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>회원 목록이다</h3>

<% ArrayList<MemberDTO> mems = (ArrayList<MemberDTO>)request.getAttribute("mems");
	
	for(MemberDTO mem : mems){
		out.println(mem + "<br>");
	}
%>
