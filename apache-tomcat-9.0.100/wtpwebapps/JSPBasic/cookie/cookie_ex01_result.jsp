<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");
	
	/* String[] check = request.getParameterValues("remember");
	String idlog = id; */
	
	//id와 pw가 동일하면 로그인 성공
	if(id.equals(pw)) {
		//성공하면 쿠키 생성!
		Cookie cookie = new Cookie("userId", id);
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		
		if(idCheck !=null) {
			Cookie rememberMe = new Cookie("rememberMe", id);
			rememberMe.setMaxAge(87600);
			response.addCookie(rememberMe);
		}
		
		/* if(check != null && check.length > 0 && check[0].equals("yes")) {
			Cookie cookie2 = new Cookie("userIdLog", idlog);
			cookie2.setMaxAge(1800);
			response.addCookie(cookie2);
		} */
		
		response.sendRedirect("cookie_ex01_welcome.jsp"); //시간 만료되기 전까지는 다음 페이지에서 쿠키 사용 가능!
		
		
	} else {
		response.sendRedirect("cookie_ex01.jsp"); //성공 못하면 이전페이지
	}

%>