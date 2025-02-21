<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 값 확읺
	String myId = (String)session.getAttribute("my_id"); //찾을 이름을 매개변수로 넣기!
	String myName = (String)session.getAttribute("my_name");
	
	//시간 확인
	int time = session.getMaxInactiveInterval();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%=myId %><br>
	<%=myName %><br>
	
	세션의 유효시간: <%=time %><br>
	
	<a href="session_remove.jsp">세션삭제하기</a>
	
</body>
</html>