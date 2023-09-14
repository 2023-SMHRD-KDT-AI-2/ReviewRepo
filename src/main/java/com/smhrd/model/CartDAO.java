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
	    
	    ArrayList<Cart> cartlist = new ArrayList<>();
	    
	        SqlSession sqlSession = sqlSessionFactory.openSession(true);
	        cartlist = (ArrayList)sqlSession.selectList("userCartList", userId);
	        System.out.println(cartlist);
	        
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
	
	// 이미지 불러오기 기능
	public String getProductImage(String proid) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		 String path = sqlSession.selectOne("productImageList", proid);
		 
		 return path;
	}
	
	// 카트 삭제하기 기능
	public int DeleteCartRowOne(String proid) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt=sqlSession.delete("DeleteCartOne",proid);
		
		return cnt;
	}
}
