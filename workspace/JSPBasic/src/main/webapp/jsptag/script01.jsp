<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	//우리가 알고있는
	//모든 자바코드가 들어갈 수 있음~
	int a = 1;
	//sysout으로 참 거짓 내보내면 콘솔창에 나옴.
	//out.println으로 하면 화면으로 출력.
	if(a >= 10) {
		out.println("참");
	} else {
		out.println("거짓");
	}
	%>
	
	<!-- 우리는 섞어쓰는 방법을 알아야 함 -->
	<hr>
	
	<%
	if(a >= 10) {
		out.println("<b>참</b>");
	} else {
		out.println("<b>거짓</b>");
	}
	
	%>
	
	<hr>
	
	<!-- 깔끔하게 라인별로 정리하자 -->
	<% if(a >= 10) { %>
	<a href="#">참</a>	
	<% } else { %>
	<a href="#">거짓</a>	
	<% } %>
	
	<hr>
	
	<% for(int i = 1; i <= 20; i ++) { %>
		<input type="checkbox" name="num">박스<%=i %>
	<% } %>
	
	
	
	
</body>
</html>