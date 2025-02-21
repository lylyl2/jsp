<%@page import="com.hr.model.DepartmentDTO"%>
<%@page import="com.hr.model.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- VC 역할하는 페이지 -->
<%
	String departmentId = request.getParameter("departmentId");
	
	//model로 연결(DepartmentDAO.java + DTO)
	
	//DAO 객체 생성
	DepartmentDAO dao = DepartmentDAO.getInstance();
	//부서정보
	DepartmentDTO dto= dao.getDepartmentInfo(departmentId);
	
	//dto를 request에 저장함
	request.setAttribute("dto", dto);
	
	request.getRequestDispatcher("index01_result.jsp").forward(request, response);
	
%>