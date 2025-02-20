<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
	데이터를 quiz_ok.jsp 페이지로 post 방식으로 전송하고,
	화면에 넘어온 값을 출력.
	 -->

	<form action="quiz_ok.jsp" method="post">
			
			아이디: <input type="text" name="id"><br>
			비밀번호: <input type="password" name="pw"><br>
			생일: <input type="date" name="birth"><br>
			
			
			관심분야:
			<input type="checkbox" name="inter" value="JAVA">JAVA
			<input type="checkbox" name="inter" value="JSP">JSP
			<input type="checkbox" name="inter" value="DB">DB
			<input type="checkbox" name="inter" value="HTML">HTML
			
			<br>
			전공:
			<input type="radio" name="major" value="kor">국문학과
			<input type="radio" name="major" value="math">수학과
			<input type="radio" name="major" value="philo">철학과
			<input type="radio" name="major" value="econo">경제학과
			
			<br>
			지역:
			<select name="region">
				<option>서울시</option>
				<option>경기도</option>
				<option>부산시</option>
				<option>대전시</option>
			</select>
			
			<br>
			자기소개:<br>
			<textarea rows="5" cols="50" name="hello"></textarea><br>
			
			<input type="submit" value="확인">
			
		</form>
</body>
</html>