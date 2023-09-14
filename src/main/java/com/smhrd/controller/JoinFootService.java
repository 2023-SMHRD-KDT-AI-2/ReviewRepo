package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserFoot;
import com.smhrd.model.UserFootDAO;

@WebServlet("/JoinFootService")
public class JoinFootService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("user_id");
		String temp = request.getParameter("foot_size");
		String foot_width = request.getParameter("foot_width");
		String foot_height = request.getParameter("foot_height");
		String foot_flat = request.getParameter("foot_flat");
		
		int foot_size = Integer.parseInt(temp);
		
	
		UserFootDAO footDao = new UserFootDAO();
		UserFoot userfoot = new UserFoot();
		userfoot.setFoot_size(foot_size);
		userfoot.setFoot_width(foot_width);
		userfoot.setFoot_height(foot_height);
		userfoot.setFoot_flat(foot_flat);
		
		int cnt = footDao.JoinFoot(userfoot);
		
		String url = "WEB-INF/index.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	
	
	}

}
