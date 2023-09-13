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

@WebServlet("/DetailService")
public class DetailService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("서비스실행");
		request.setCharacterEncoding("UTF-8");
		
		ProductDAO dao = new ProductDAO();
		System.out.println("서비스실행2");
		ProductDetail product = new ProductDetail();
		
		String selectedPro_id = request.getParameter("selectedPro_id");
		ArrayList<Product> productList = new ArrayList<Product>();
		System.out.println("서비스실행3");
		
		String pro_id = selectedPro_id;
		productList = dao.getProductDetail(pro_id);
		System.out.println("서비스실행4");
		ArrayList<ProductDetail> productDetail = new ArrayList<ProductDetail>();
		
		
		for (int i=0; i < productList.size(); i++) {
			
			pro_id = productList.get(i).getPro_id();
			ProductDetail detailItem = dao.showProductDetail(pro_id);
			detailItem.setPro_name(productList.get(i).getPro_name());
//			product = dao.showProductDetail(pro_id);
//			product.setPro_name(productList.get(i).getPro_name());
			productDetail.add(detailItem);
			
		}
		
		request.setAttribute("productDetail", productDetail);
		
		RequestDispatcher rd = request.getRequestDispatcher("shop-single.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
//		Product product = new Product();
		
		
		
//		String pro_id = request.getParameter("pro_id");
////		ArrayList<Product> productList = new ArrayList<Product>();
////		productList = dao.getProductInfo("");
//		
//		if (pro_id != null && !pro_id.isEmpty()) {
//			ProductDAO dao = new ProductDAO();
//			Product product = dao.getProductInfo(pro_id);
//			
//		
//		
//		
//			if (product != null) {
////				String pro_name = product.getPro_name();
////				String pro_category = product.getPro_category();
////				String pro_brand = product.getPro_brand();
////				String pro_info = product.getPro_info();
////				String pro_price = product.getPro_price();
////				String pro_color = product.getPro_color();
////				String pro_gender = product.getPro_gender();
////				String pro_material = product.getPro_material();
////				String pro_cost = product.getPro_cost();
////				String pro_time = product.getPro_time();
//		
//				request.setAttribute("product", product);
//				
//				String url = "shop-single.jsp";
//				RequestDispatcher rd = request.getRequestDispatcher(url);
//				rd.forward(request, response);
//			} else {
//				System.out.println("제품 없음. 조짐");
//			}
//		} else {
//			System.out.println("id없음. 조짐.");
				
//		String pro_name = request.getParameter("pro_name");
//		String pro_category = request.getParameter("pro_category");
//		String pro_brand = request.getParameter("pro_brand");
//		String pro_info = request.getParameter("pro_info");
//		String pro_price = request.getParameter("pro_price");
//		String pro_color = request.getParameter("pro_color");
//		String pro_gender = request.getParameter("pro_gender");		
//		String pro_material = request.getParameter("pro_material");
//		String pro_cost = request.getParameter("pro_cost");
//		String pro_time = request.getParameter("pro_time");
		
//		request.setAttribute("product", product);
		
		
		
//		product.setPro_id(pro_id);
//		product.setPro_name(pro_name);
//		product.setPro_category(pro_category);
//		product.setPro_brand(pro_brand);
//		product.setPro_price(pro_price);
//		product.setPro_info(pro_info);
//		product.setPro_color(pro_color);
//		product.setPro_gender(pro_gender);
//		product.setPro_material(pro_material);
//		product.setPro_cost(pro_cost);
//		product.setPro_time(pro_time);
		
		
//		String url = "shop-single.jsp";
//		RequestDispatcher rd = request.getRequestDispatcher(url);
//		rd.forward(request, response);
		
		
		
		
		
		}
		
		
		
		
	}


