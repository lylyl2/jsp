package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//브라우저로부터 서블릿 클래스로 요청을 맵핑
@WebServlet("/apple")
public class MyServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	//생성자
	public MyServlet() {
		super();
	}
	
	//서블릿이 생성될 때 최초에 딱 1번 실행됨
	@Override
	public void init() throws ServletException {
		System.out.println("최초에 딱한번 실행됨");
		
		ServletContext application = getServletContext(); //<--application 객체라고 함
		application.setAttribute("menu", Arrays.asList("홈", "등록", "구매", "관리"));
	}
	
	//doGet, doPost메서드가 실행되기 이전에 실행됨
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("myServlet 실행됨");
		
		//브라우저로의 출력 - out 객체
		//서버가 브라우저로 응답을 보낼 때, 이 문서는 어떤 컨텐츠 내용인지를 작성해줘야 함.
		//컨텐츠타입(mime타입)
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<b>안녕하세요!</b>");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
