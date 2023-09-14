package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CartDAO;

@WebServlet("/CartDelete")
public class CartDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// jsp에서 delete누르고 오면 해당 row의 pro 물고오기
	request.setCharacterEncoding("UTF-8");
	String proid=request.getParameter("proid");
		CartDAO dao = new CartDAO();
		
		int cnt=dao.DeleteCartRowOne(proid);
		
		if (cnt>0) {
		RequestDispatcher rd = request.getRequestDispatcher("CartPage");
		rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("CartPage");
			rd.forward(request, response);
		}
		
	}

}
