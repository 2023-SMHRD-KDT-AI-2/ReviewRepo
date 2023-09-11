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
	
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email = request.getParameter("email");
		String zipNum = request.getParameter("zipNum");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		String phone = phone1 + phone2 + phone3;
		String address = zipNum + address1 + address2;
		
		
		
		
		UserDAO dao = new UserDAO();
		User user = new User();
		user.setUser_id(user_id);
		user.setUser_pw(user_pw);
		user.setUser_name(user_name);
		user.setUser_gender(user_gender);
		user.setAge(age);
		user.setPhone(phone);
		user.setEmail(email);
		user.setAddress(address);
		
		
//		User user = new User(user_email, user_name, user_id, user_pw, user_foot, user_shoes, user_gender);
		
		
		int cnt = dao.Join(user);
		
		String url = "index.jsp";
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	
	}

}
