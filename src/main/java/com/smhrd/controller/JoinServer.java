package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/JoinServer")
public class JoinServer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	
		String user_email = request.getParameter("user_email");
		String user_name = request.getParameter("user_name");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
//		String user_foot = request.getParameter("user_foot");
//		String user_shoes = request.getParameter("user_shoes");
//		String user_gender = request.getParameter("gender");
		
		System.out.println("username : " + user_name);
		
		UserDAO dao = new UserDAO();
		User user = new User();
		user.setUser_email(user_email);
		user.setUser_name(user_name);
		user.setUser_id(user_id);
		user.setUser_pw(user_pw);
//		User user = new User(user_email, user_name, user_id, user_pw, user_foot, user_shoes, user_gender);
		
		
		int cnt = dao.Join(user);
		
		String url = "WEB-INF/Main.jsp";
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	
	}

}
