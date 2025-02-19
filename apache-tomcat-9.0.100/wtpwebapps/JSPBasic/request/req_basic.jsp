<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uri = request.getRequestURI(); //uri : 경로값
	StringBuffer url = request.getRequestURL(); //url : 전체주소
	String conPath = request.getContextPath(); //컨택스트패스 - 프로젝트 구분단위 : 프로젝트 식별 이름. WAS(프로젝트명) //나중에 없앰.
	String address = request.getRemoteAddr(); //원격접속 주소
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	uri: <%=uri %><br>
	url: <%=url %><br>
	컨택스트패스: <%=conPath %><br>
	상대방의접속주소: <%=address %><br>
</body>
</html>