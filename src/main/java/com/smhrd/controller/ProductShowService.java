package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Product;
import com.smhrd.model.ProductDAO;

@WebServlet("/ProductShowService")
public class ProductShowService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String pro_id = request.getParameter("pro_id");
		String pro_name = request.getParameter("pro_name");
		String pro_category = request.getParameter("pro_category");
		String pro_brand = request.getParameter("pro_brand");
		String pro_info = request.getParameter("pro_info");
		String pro_price = request.getParameter("pro_price");
		String pro_color = request.getParameter("pro_color");
		String pro_gender = request.getParameter("pro_gender");		
		String pro_material = request.getParameter("pro_material");
		String pro_cost = request.getParameter("pro_cost");
		String pro_time = request.getParameter("pro_time");
		
		
		
		ProductDAO dao = new ProductDAO();
		
		Product product = dao.product(pro_id);
		request.setAttribute("product", product);
		
		product.setPro_id(pro_id);
		product.setPro_name(pro_name);
		product.setPro_category(pro_category);
		product.setPro_brand(pro_brand);
		product.setPro_info(pro_info);
		product.setPro_price(pro_price);
		product.setPro_color(pro_color);
		product.setPro_gender(pro_gender);
		product.setPro_material(pro_material);
		product.setPro_cost(pro_cost);
		product.setPro_time(pro_time);
		
		System.out.println("pro_id : " + pro_id);
		System.out.println("pro_name >>> "+pro_name);
		
		String url = "shop-single.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
		
		
		
		
		
		
		
		
		
	}

}
