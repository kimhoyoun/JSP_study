<%@page import="jdbc_p.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jdbc_p.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
     
     ArrayList<NoticeDTO> list = new NoticeDAO().list();
     
     int pageNo = 1;
     
     if(request.getParameter("pageNo") != null){
    	 pageNo = Integer.parseInt(request.getParameter("pageNo"));
     }
     
     int cnt = 10;
     int start = (pageNo-1)*cnt;
     int end = pageNo *cnt;
     
     if(list.size()<= pageNo*cnt){
    	 end = list.size();
     }
      
    request.setAttribute("list",list);
    request.setAttribute("start", start);
    request.setAttribute("end", end);
    request.setAttribute("mainURL", "notice");
    %>
    
     <jsp:forward page ="view/template.jsp"/>