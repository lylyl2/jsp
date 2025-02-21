<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 국어, 수학점수의 평균을 구합니다.
	평균이 60점 이상이면 success페이지로 이동해서
	
	"name님의 평균 xx점 합격입니다"를 출력합니다.
	
	평균이 60미만이면 fail페이지로 이동해서
	"name님의 평균 xx점 불합격입니다" 출력합니다.
	
	조건 - 세션을 사용하지 않음
	
	*/
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	Double kor = Double.parseDouble(request.getParameter("kor"));
	Double math = Double.parseDouble(request.getParameter("math"));
	
	Double avg = (kor + math) / 2;
	
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	if(avg >= 60) {
		RequestDispatcher dp = request.getRequestDispatcher("quiz01_success.jsp");
		dp.forward(request, response);
	} else {
		RequestDispatcher dp = request.getRequestDispatcher("quiz01_fail.jsp");
		dp.forward(request, response);
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>