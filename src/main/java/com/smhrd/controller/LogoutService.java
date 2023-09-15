package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	// 기억하고 있는 회원의 정보 삭제! -> session에서 기억하고 있음!
	
	HttpSession session = request.getSession();
	session.invalidate();
	//session.removeAttribute("info");
			
	
	
	
	// Main.jsp로 이동!
//	System.out.println(session.getAttribute("info"));
	
	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
	
	
	
	}

}
