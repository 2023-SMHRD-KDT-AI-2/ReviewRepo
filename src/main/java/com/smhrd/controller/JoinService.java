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
import com.smhrd.model.UserFoot;
import com.smhrd.model.UserFootDAO;

@WebServlet("/JoinServer")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String zipNum = request.getParameter("zipNum");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		String address = zipNum + address1 + address2;
		
		
		String temp = request.getParameter("foot_size");
		String foot_width = request.getParameter("foot_width");
		String foot_height = request.getParameter("foot_height");
		String foot_flat = request.getParameter("foot_flat");
		
		int foot_size = Integer.parseInt(temp);
		
		
		
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
		
		
		
		UserFootDAO footDao = new UserFootDAO();
		UserFoot userfoot = new UserFoot();
		userfoot.setUser_id(user_id);
		userfoot.setFoot_size(foot_size);
		userfoot.setFoot_width(foot_width);
		userfoot.setFoot_height(foot_height);
		userfoot.setFoot_flat(foot_flat);
		
		
		
		
		int cnt = dao.Join(user);
		
		String url = "WEB-INF/index.jsp";
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	
	}

}
