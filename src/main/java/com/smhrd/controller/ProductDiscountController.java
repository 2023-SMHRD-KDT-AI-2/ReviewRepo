package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDiscount;
import com.smhrd.model.ProductDiscountDAO;
import com.smhrd.model.Search;
import com.smhrd.model.SearchDAO;

@WebServlet("/ProductDiscount")
public class ProductDiscountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 2. 데이터 수집(여러가지에 쓸데이터들)
		String pro_id = request.getParameter("pro_id");
		
		// 3. 기능처리
		// DAO 접근, 보내고자 하는 데이터 전달
		// 처리 결과 받아오기
		
		ProductDiscountDAO dao = new ProductDiscountDAO();
		ProductDiscount discount = new ProductDiscount();

		discount.setPro_id(pro_id);
		
	      RequestDispatcher rd = request.getRequestDispatcher("shop.jsp");
	        rd.forward(request, response);
	    }
	}
