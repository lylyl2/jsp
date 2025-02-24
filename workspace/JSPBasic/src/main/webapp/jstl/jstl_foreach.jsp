<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//스크립트릿 - 1~10까지 합
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum = sum + i;
		}
	%>
	<%=sum %>
	
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="sum" value="${sum + i }"/>
	</c:forEach>
	
	<c:out value="${sum }"/>
	
	<hr>
	
	<h3>구구단 5단 출력</h3>
	<%-- <%
		int dan = 5;
		for(int i = 1; i <= 9; i++) {
			out.print(dan + " * " + i + " = " + (dan * i) + "<br>"); 
		}
	%> --%>
	
	<c:forEach var="i" begin="1" end="9" step="1">
		5 x ${i } = ${i * 5 }<br>
	</c:forEach>
	
	<h3>2~9단까지 출력</h3>
	<c:forEach var="i" begin="2" end="9">
		<c:forEach var="j" begin="1" end="9">
			${i } x ${j } = ${i * j }<br>
		</c:forEach>
	</c:forEach>
	
	<h3>***향상된 포문 for(변수명 : 배열)</h3>
	<c:set var="arr" value="<%=new int[] {1,2,3,4,5} %>"/>
	
	<c:forEach var="i" items="${arr }" varStatus="stat">
		${i }<br>
		i의 인덱스: ${stat.index }<br>
		i의 카운드: ${stat.count }<br>
	</c:forEach>
	
	
	
	
	
	
</body>
</html>