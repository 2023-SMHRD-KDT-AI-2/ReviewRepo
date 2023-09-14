package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet{
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id = request.getParameter("user_id");
    	String user_pw = request.getParameter("user_pw");
    	
    	// 3. 기능 처리
    	
    	UserDAO dao = new UserDAO();
    	
    	User user = new User();
    	
		user.setUser_id(user_id);
    	user.setUser_pw(user_pw);
    	
    	   	
    	User info = dao.Login(user);
    	
    	
    	// 4. view 처리
    	
    	// 성공 -> LoginSuccess.jsp
    	
    	// 실패 -> LoginFail.jsp
    	
    	
    	
    	if (info != null) {
    		// 로그인 성공시
    		// 해당하는 회원의 정보를 session 영역에 저장!
    		// -> Main으로 이동!
    		HttpSession session = request.getSession();
    		session.setAttribute("info", info);
    		session.setAttribute("user_id", user_id);
    		// 로그인 성공하나 실패하나 어차피 메인가니까... else 생략
    		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    		rd.forward(request, response);
    	} else {
    		
    		response.sendRedirect("index.jsp");
    	}
	
		
	}

}
