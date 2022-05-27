<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>게시판 리스트 입니다.</h2>

<table border="" width = 300>
	<tr>
		<td>id</td> <td>${dto.id }</td>
	</tr>
	<tr><td>제목</td> <td>${dto.title }</td></tr>
	<tr><td>작성자</td> <td>${dto.pname }</td></tr>
	<tr><td>작성일</td>
	<td>
		<fmt:formatDate value="${dto.reg_date }" pattern="yy-MM-dd HH:mm"/>
		</td>
	</tr>	
	<tr><td>조회수</td> <td>${dto.cnt }</td></tr>	
	<tr><td>내용</td><td>${dto.content }</td></tr>	
	<tr><td>파일</td><td>${dto.upfile }</td></tr>	
	<tr>
	<td colspan ="2" align="rigth">
		<a href="<c:url value="/board/List"/>">목록으로</a>
		<a href="<c:url value="/board/ModifyForm?id=${dto.id }"/>">수정</a>
		<a href="<c:url value="/board/DeleteForm?id=${dto.id }"/>">삭제</a>
	</td>	
	</tr>
</table>