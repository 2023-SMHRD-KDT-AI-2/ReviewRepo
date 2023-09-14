package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Product;
import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDetail;
import com.smhrd.model.ProductIMG;

@WebServlet("/DetailService")
public class DetailService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("서비스실행");
		request.setCharacterEncoding("UTF-8");

		ProductDAO dao = new ProductDAO();
		System.out.println("서비스실행2");
		

		String selectedPro_id = request.getParameter("selectedPro_id");

		ArrayList<Product> productList = new ArrayList<Product>();
		System.out.println("서비스실행3");
		String pro_id = selectedPro_id;
		productList = dao.getProductDetail(pro_id);
		System.out.println("서비스실행4");
		

		request.setAttribute("productList", productList);

		RequestDispatcher rd = request.getRequestDispatcher("shop-single.jsp");
		rd.forward(request, response);
		System.out.println("서비스실행5");

	}

}
