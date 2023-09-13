package com.smhrd.model;

import org.apache.ibatis.session.SqlSessionFactory;

import java.lang.reflect.Array;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ProductDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	Product detailInfo = new Product();

	
	// Product 정보 불러오기
	
	public ArrayList<Product> getProductDetail (String pro_id) {
		System.out.println("dao 1");
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println("dao 2");
		ArrayList<Product> detailList = (ArrayList)sqlSession.selectList("productList", pro_id);
		System.out.println("dao 3");
		System.out.println(detailList.size());
		sqlSession.close();
		
		return detailList;
		
	}
	
	public ProductDetail showProductDetail (String pro_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		detailInfo.setPro_id(pro_id);
		
		ProductDetail detail = sqlSession.selectOne("ProductDetailInfo", pro_id);
		
		sqlSession.close();
		
		return detail;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
