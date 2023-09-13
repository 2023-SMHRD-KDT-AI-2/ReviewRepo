package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.PopularRank;
import com.smhrd.model.PopularRankDAO;

@WebServlet("/PopularRankService")
public class PopularRankService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");
		// 2. 데이터 수집(이미지에 쓸 데이터 찾아오기)
		String img_id = request.getParameter("img_id");		
		
		// 3. 기능처리
		// DAO 접근, 보내고자 하는 데이터 전달
		// 처리 결과 받아오기
		PopularRankDAO dao = new PopularRankDAO();		
		PopularRank rank = new PopularRank();
		
		rank.setImg_id(img_id);		
		
		request.setAttribute("rank", rank);
		
		
		
		
		// 4. view 처리
		// 4. view 처리
	    // 이미지 정보가 포함된 PopularRank 객체들을 출력
	
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
	
		
		
		
	
	
	
	
	
	
	}

	
	
	

}
