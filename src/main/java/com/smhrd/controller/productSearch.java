package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Search;
import com.smhrd.model.SearchDAO;

@WebServlet("/productSearch")
public class productSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String parameter = request.getParameter("search");
		String pro_name = request.getParameter("pro_name");
		
		
		SearchDAO dao = new SearchDAO();
		Search search = new Search();
		
		search.setPro_name(pro_name);

		ArrayList<Search> shoes = new ArrayList<Search>();// 넘어온 데이터값을

		request.setAttribute("shoes", shoes);
		
		String url = "";
		
		if(shoes != null) {
			url = "shop.jsp";
		}

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	
}
