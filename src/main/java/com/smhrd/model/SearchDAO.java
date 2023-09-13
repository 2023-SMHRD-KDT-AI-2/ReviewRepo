package com.smhrd.model;

import java.util.ArrayList; 

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class SearchDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	ArrayList<com.smhrd.controller.productSearch> list = new ArrayList<com.smhrd.controller.productSearch>();
	//입력값 확인
	public ArrayList<com.smhrd.controller.productSearch> showSearch(String pro_name){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList) sqlSession.selectList("selectPro", pro_name);
		
		sqlSession.close();
		
		return list;
	}

}
