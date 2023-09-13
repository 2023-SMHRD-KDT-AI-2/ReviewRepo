package com.smhrd.model;

import java.lang.reflect.Parameter;
import java.util.ArrayList; 

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.controller.productSearch;
import com.smhrd.database.SqlSessionManager;

public class SearchDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	ArrayList<productSearch> list = new ArrayList<productSearch>();
	public ArrayList showSearch(String parameter){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList) sqlSession.selectList("selectPro", parameter);
		//System.out.println(list);
		sqlSession.close();
		
		// System.out.println(list);
		
		return list;
	}

}
