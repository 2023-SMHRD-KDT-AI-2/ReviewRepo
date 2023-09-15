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

	public User Login(User user) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// selectOne -> 실행 결과가 하나만 확인되는 경우
		// selectList -> 실행 결과가 여러개 확인되는 경우

		User info = sqlSession.selectOne("Login", user);

		sqlSession.close();

		return info;

	}

}
