<%@page import="jdbc_p.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

table{
	width : 800px;
	height : auto;
	margin : 0px auto;
	border-spacing: 0px;
	border-collapse: collapse;
	border-top: solid 3px black;
    border-bottom: solid 3px black;
}

caption{
      text-align: left;
}
    
th{
		height: 30px;
      background: #eeeeee;
      border-bottom: solid 1px black;
}    

th.no{
	width : 100px
}

th.title{
	width : 300px
}

th.pname{
	width : 150px
}

th.date {
	width : auto
}

td.title{
	text-align : left;
}

td{
	height : 30px;
	border-bottom : dotted 1px black;
	text-align: center;
}

td a{
	text-decoration: none;
}

div#page{
	width :800px;
	margin : 0px auto;
	
}

div#page div{
	width : 100px;
	margin : 0px auto;
}
</style>    


<%
	ArrayList<NoticeDTO> arr = (ArrayList<NoticeDTO>)request.getAttribute("list");
	int start = (int)request.getAttribute("start");
	int end = (int)request.getAttribute("end");
	int lastPage = 1;
	
	if(arr.size()%10 == 0){
		lastPage = arr.size()/10;
	}else{
		lastPage = arr.size()/10 +1;	
	}
	 
	
%>

<table>
<caption>공지사항</caption>
	<tr>
		<th class = "no">no</th>
		<th class = "title">게시글</th>
		<th class = "pname">작성자</th>
		<th class = "date">날짜</th>
	</tr>
	
	
	<% for(int i = start; i<end; i++){
	%>
		<tr>
			<td class = "no"><%= arr.get(i).getNo() %></td>
			<td class = "title"><a href=""><%= arr.get(i).getTitle() %></a></td>
			<td class = "pname"><%= arr.get(i).getPname() %></td>
			<td class = "date"><%= arr.get(i).getDate() %></td>
		</tr>
	<%
	}
	%>
</table>
<div id = "page">
	<div>
	<%for(int i = 1; i<=lastPage; i++){ %>
	
		<a href="?pageNo=<%=i%>"><%=i %></a>
	<%
	}
	%>
	</div>
</div>