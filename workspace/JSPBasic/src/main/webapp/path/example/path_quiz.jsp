<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- request 폴더안에 req_get_ex01페이지로 상대경로 -->
	<a href="../../request/req_get_ex01.jsp">req_get_ex01 상대경로</a><br>
	
	<!-- img태그로 html/img 폴더 안에 있는 이미지로 상대경로 -->
	<img alt="이미지" src="../../html/img/a.jpg" width="100" height="100">
	<img alt="이미지" src="../../html/img/b.jpg" width="100" height="100"><br>
	
	<!-- img태그로 html/img 폴더 안에 있는 이미지를 절대경로 -->
	<img alt="이미지" src="/JSPBasic/html/img/a.jpg" width="100" height="100">
	<img alt="이미지" src="http://localhost:8181/JSPBasic/html/img/b.jpg" width="100" height="100"><br>
	
	<!-- a링크를 통해서 MyServlet페이지로 이동 상대경로 -->
	<!-- URL맵핑값으로 찾아야 함 -->
	<a href="../../apple">MyServlet 상대경로</a><br>
	
	<!-- a링크를 통해서 MyServlet페이지로 이동 절대경로 -->
	<a href="http://localhost:8181/JSPBasic/apple">MyServlet 절대경로</a>
	
</body>
</html>