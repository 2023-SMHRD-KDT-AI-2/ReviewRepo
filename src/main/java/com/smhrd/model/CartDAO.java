package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CartDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	ProductInfo proinfo = new ProductInfo();
	// 장바구니 추가상품 불러오기 기능
	
	public ArrayList<Cart> getUserCartList(String userId) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<Cart> cartlist= (ArrayList)sqlSession.selectList("userCartList", userId);
		System.out.println(cartlist.size());
		sqlSession.close();
		
		return cartlist;
	}
	
	// 상품 정보 불러오기 기능
	public ProductInfo getProductNameAndPriceList(String proId){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		proinfo.setPro_id(proId);
		
		ProductInfo productinfo= sqlSession.selectOne("productNameAndPriceList", proId);
		
		sqlSession.close();
				
		return productinfo;
	}
	
	
	// 카트 삭제하기 기능
}
