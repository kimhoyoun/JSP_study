<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>
<h1>el</h1>
pid : <%=request.getParameter("pid") %>, ${param.pid } <br />
age : <%=request.getParameter("age")+10 %>, ${param.age + 10 } <br />
marriage : <%=request.getParameter("marriage") %>, ${!param.marriage} <br />


<%
	pageContext.setAttribute("aa", 100);
	request.setAttribute("bb", 200);
	session.setAttribute("cc", 300);
	application.setAttribute("dd", 400);
	
// 	pageContext.setAttribute("qqq", 1000);
	request.setAttribute("qqq", 2000);
	session.setAttribute("qqq", 3000);
	application.setAttribute("qqq", 4000);
%>
--------------------------------------------- <br /> <br />
<!-- 바로 연산 가능 -->
aa : <%=pageContext.getAttribute("aa") %>, ${aa } <br />
bb : <%=request.getAttribute("bb") %>, ${bb } <br />
cc : <%=session.getAttribute("cc") %>, ${cc }<br /> 
dd : <%=application.getAttribute("dd") %>, ${dd }<br />

--------------------------------------------- <br /> <br />
<!-- 
	- 같은 이름으로 중복될 경우 가장 작은애의 것을 보여줌 
	- 같은 이름으로 중복된 것 중 정확하게 가져오고 싶다면 
	속성+Scope.키 로 받으면 된다.
	ex) ${sessionScope.qqq}
-->
pageContext <%= pageContext.getAttribute("qqq") %>, ${pageScope.qqq } <br />
request <%= request.getAttribute("qqq") %>, ${requestScope.qqq } <br />
session <%= session.getAttribute("qqq") %>, ${sessionScope.qqq } <br />
application <%= application.getAttribute("qqq") %>, ${applicationScope.qqq } <br />
--------------------------------------------- <br /> <br />

${qqq } <br />
<% request.removeAttribute("qqq"); %>
${qqq } <br />
<% session.removeAttribute("qqq"); %>
${qqq } <br />
<% application.removeAttribute("qqq"); %>
${qqq } <br />
--------------------------------------------- <br /> <br />
\${15+7 } : ${15+7 }<br />
\${15-7 } : ${15-7 }<br />
\${15*7 } : ${15*7 }<br />
\${15/7 } : ${15/7 }<br />
\${15%7 } : ${15%7 }<br />
<br />
\${157 >7 } : ${157 >7 }<br />
\${157 >= 7} : ${157 >=7 }<br />
\${157 <7} : ${157 <7 }<br />
\${157 <=7} : ${157 <=7 }<br />
\${157 ==7} : ${157 ==7 }<br />
\${157 !=7} : ${157 !=7 }<br />
--------------------------------------------- <br /> <br />
\${"장동건"<"장서건"} : ${"장동건"<"장서건"}<br />
\${"장동건"<="장서건"} : ${"장동건"<="장서건"}<br />
\${"장동건">"장서건"} : ${"장동건">"장서건"}<br />
\${"장동건">="장서건"} : ${"장동건">="장서건"}<br />
\${"장동건"=="장서건"} : ${"장동건"=="장서건"}<br />
\${"장동건"!="장서건"} : ${"장동건"!="장서건"}<br />
--------------------------------------------- <br /> <br />
\${true && true} : ${true && true}<br />
\${true && false} : ${true && false}<br />
\${false && false} : ${false && false}<br />
<br />
\${true || true} : ${true || true}<br />
\${true || false} : ${true || false}<br />
\${false || false} : ${false || false}<br />
<br />
XOR는 에러 <br />
<!-- XOR는 에러 -->
<%-- \${true ^ true} : ${true ^ true}<br /> --%>
<%-- \${true ^ false} : ${true ^ false}<br /> --%>
<%-- \${false ^ false} : ${false ^ false}<br /> --%>
<br />
\${true ? "참이지롱" :"거짓부렁"} : ${true ? "참이지롱" :"거짓부렁"}<br />
\${false ? "참이지롱" :"거짓부렁"} : ${false ? "참이지롱" :"거짓부렁"}<br />

</body>
</html>