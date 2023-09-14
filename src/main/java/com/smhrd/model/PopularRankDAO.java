package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class PopularRankDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	ArrayList<PopularRank> ranklist = new ArrayList<>();
	
		
	public ArrayList<PopularRank> list(){

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ranklist = (ArrayList) sqlSession.selectList("list");
		
		sqlSession.close();
		
		return ranklist;
		
	}
	
	public PopularRank detail(String num) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		PopularRank popularrank = sqlSession.selectOne("detail", num);
		
		sqlSession.close();
		
		return popularrank;
		
	}
	
	
}

