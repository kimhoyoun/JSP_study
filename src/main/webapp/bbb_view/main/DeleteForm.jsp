<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>글 삭제 폼</h2>

<form action="DeleteReg" method="post" >
<input type="hidden" name = "id" value=${param.id } />
<input type="hidden" name = "page" value=${nowPage } />
	<table border="" width=400>
		
		<tr>
			<th>암호</th>
			<td><input type="text" name="pw" /></td>
		</tr>
		
		<tr>
			
			<td colspan="2" align="center">
			<a href="<c:url value="/board/Detail?id=${param.id }&page=${nowPage}"/>">뒤로</a>
			<input type="reset" value="취소" />
			<input type="submit" value="삭제" />
			
			</td>
		</tr>
	</table>
</form>