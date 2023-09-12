package com.smhrd.model;

import org.apache.ibatis.session.SqlSessionFactory;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ProductDAO {
	
	SqlSessionFactory sqlSessionFactory = 
			SqlSessionManager.getSqlSession();
	
	
	// 싹 다 가져오니까 --------------▽ 필요 없음
	public Product product (String pro_id) {
		try(SqlSession sqlSession = 
				sqlSessionFactory.openSession(true)){
			return sqlSession.selectOne("pro_id",pro_id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
//		// 전체 가지고 올때는 selectList
//		Product info = sqlSession.selectOne("product", productId);
//		
//		sqlSession.close();
//		
//		return info;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
