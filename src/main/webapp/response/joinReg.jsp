<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

	String type = request.getParameter("type");
	String pname = request.getParameter("pname");
	String sNum1 = request.getParameter("num1");
	String sNum2 = request.getParameter("num2");
	
	
	
	
	response.sendRedirect("../join/"+type+".jsp?pname="+pname+
			"&sNum1="+sNum1+"&sNum2="+sNum2);
	
%>