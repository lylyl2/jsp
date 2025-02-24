<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>값을 형변환해서 출력할 때 셋 중에 하나를 선택하면 됨 (db vs java vs 화면)</h3>
	
	<h3>parseDate = 문자를 날짜로 형변환</h3>
	
	<fmt:parseDate var="a" value="2025/02/24" pattern="yyyy/mm/dd"/>
	${a }
	
	<h3>formatDate = 날짜형을 형식으로 변경함</h3>
	
	<c:set var="now" value="<%=new Date() %>"/>
	
	<fmt:formatDate value="${now }" pattern="yyyy년mm월dd일HH:mm:ss"/><br>
	<fmt:formatDate value="${now }" pattern="yyyy-mm-dd HH:mm:ss"/>
	
	<h3>parseNumber = 문자를 숫자로 변환</h3>
	<fmt:parseNumber value="$3.14" pattern="$0.00"/>
	<fmt:parseNumber value="1.123abc" type="number"/>
	
	<h3>formatNumber = 숫자를 문자열로 변환</h3>
	<fmt:formatNumber value="2000" pattern="0000.00"/>
	
	<hr>
	<h3>아래 값을 2025년 02월 24일 형식으로 변경</h3>
	
	<c:set var="timeA" value="2025-02-24"/>
	<c:set var="timeB" value="<%=new Date() %>" />
	
	<fmt:parseDate var="time_a" value="${timeA }" pattern="yyyy-mm-dd"/>
	<fmt:formatDate value="${time_a }" pattern="yyyy년 mm월 dd일"/><br>
	
	<fmt:formatDate value="${timeB }" pattern="yyyy년 MM월 dd일" />
	
</body>


</html>