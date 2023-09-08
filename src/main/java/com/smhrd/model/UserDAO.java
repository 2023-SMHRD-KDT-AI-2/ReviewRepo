package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

public class UserDAO {
	
	SqlSessionFactory sqlSessionFactory = com.smhrd.database.SqlSessionManager.getSqlSession();
	
	
	public int Join(User user) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("Join", user);
		
		sqlSession.close();
		
		return cnt;
	}

}
