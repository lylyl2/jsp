<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
	1. 첫번째 페이지에서 넘어온 id, pw를 받습니다.
	2. id가 aaa123이고, pw가 1234 라면 동일하면 로그인 성공이라 간주하고,
		quiz01_welcome페이지로 리다이렉트
	3. 둘 중 하나라도 틀렸으면 quiz01_fail 페이지로 리다이렉트
	*/
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String cid = "aaa123";
	String cpw = "1234";
	
	if (id.equals(cid) && pw.equals(cpw)) {
		response.sendRedirect("quiz01_welcome.jsp");
	} else {
		response.sendRedirect("quiz01_fail.jsp");
	}
	

%>