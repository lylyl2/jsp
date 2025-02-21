<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 에러가 발생하면 이 페이지를 대신 보여줘! -->
<%@ page errorPage="error_view.jsp" %>

<%
	//일부러 에러를 발생시킴
	String abc = (String)session.getAttribute("ABC");
	
	abc.substring(4); //에러가 발생!

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- <a href="ad;lkfjs.jsp">이런 페이지 없음</a> //404는 주소에 처리해야 해서 이걸로 안됨-->
	
</body>
</html>