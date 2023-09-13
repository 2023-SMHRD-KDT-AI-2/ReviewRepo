package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserFootDAO {
	
	SqlSessionFactory sqlSessionFactory = com.smhrd.database.SqlSessionManager.getSqlSession();
	
	public int JoinFoot(UserFoot userfoot) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("UserFoot", userfoot);
		
		sqlSession.close();
		
		return cnt;
	}
	
	
	

}
