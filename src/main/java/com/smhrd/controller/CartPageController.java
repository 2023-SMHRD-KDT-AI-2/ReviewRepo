package com.smhrd.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cart;
import com.smhrd.model.CartDAO;
import com.smhrd.model.ProductInfo;

/**
 * Servlet implementation class CartPageController
 */
@WebServlet("/Cart")
public class CartPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		CartDAO dao = new CartDAO();
		Cart cart = new Cart();
		ProductInfo productNameAndPriceSelectOne = new ProductInfo();
		ArrayList<Cart> userCartList = new ArrayList<Cart>();
		userCartList = dao.getUserCartList("TEST1");		
		
		ArrayList<ProductInfo> productNameAndPrice= new ArrayList<ProductInfo>();
		
		for(int i=0; i<userCartList.size(); i++) {
			
			String productID=userCartList.get(i).getPro_id();
			productNameAndPriceSelectOne = dao.getProductNameAndPriceList(productID);
			productNameAndPriceSelectOne.setPro_volume(userCartList.get(i).getPro_volume());
			productNameAndPrice.add(i, productNameAndPriceSelectOne);
			
		}
		
		for (ProductInfo item : productNameAndPrice) {
			System.out.println(item.getPro_name());
			System.out.println(item.getPro_price());
			System.out.println(item.getPro_volume());
			
		}
		request.setAttribute("productNameAndPrice", productNameAndPrice);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);
	}

}
