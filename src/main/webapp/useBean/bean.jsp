<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 기본생성자로 생성 -->
<jsp:useBean id="mm1" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="pid" param="pid" name = "mm1"/>
<!-- 알아서 형변환 해주는 장점이 있다. -->
<!-- scope의 기본은 page -->
<jsp:setProperty property="age" param="age" name = "mm1"/>
<jsp:setProperty property="marriage" param="marriage" name = "mm1"/>

<jsp:useBean id="mm2" class="jdbc_p.MemberDTO" scope="request"/>
<jsp:setProperty property="pid" param="pid" name = "mm2"/>

<jsp:useBean id="mm3" class="jdbc_p.MemberDTO" scope="session"/>
<jsp:setProperty property="pid" param="pid" name = "mm3"/>
<jsp:setProperty property="age" value ="29"  name = "mm3"/>

<jsp:useBean id="mm4" class="jdbc_p.MemberDTO" scope="application"/>
<jsp:setProperty property="pid" param="pid" name = "mm4"/>
<jsp:setProperty property="marriage" value="true" name = "mm4"/>

<jsp:useBean id="mm5" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name = "mm5"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean</title>
</head>
<body>
<h1>useBean</h1>
mm1 -------------------------------------------------------------------------------------- <br />
<%=mm1 %> <br />
request :<%= request.getAttribute("mm1") %> <br />
mm2 -------------------------------------------------------------------------------------- <br />
<%=mm2 %> <br />
request : <%= request.getAttribute("mm2") %> <br />

mm3 -------------------------------------------------------------------------------------- <br />
<%=mm3 %> <br />
session : <%= session.getAttribute("mm3") %> <br />

mm4 -------------------------------------------------------------------------------------- <br />
<%=mm4 %> <br />
application : <%= application.getAttribute("mm4") %> <br />

mm5 -------------------------------------------------------------------------------------- <br />
<%=mm5 %> <br />
</body>
</html>