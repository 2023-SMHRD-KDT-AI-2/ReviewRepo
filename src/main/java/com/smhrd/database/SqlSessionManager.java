package com.smhrd.database;

import java.io.InputStream;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	//DB에 대한 기능을 사용할 수 있는 Factory 생성하는 클래스
	private static SqlSessionFactory sqlSession;
	
	static {
		try {
			String resource = "com/smhrd/database/config.xml";
			
			InputStream inputStream = 
					Resources.getResourceAsStream(resource);
			
			sqlSession = 
					new SqlSessionFactoryBuilder().build(inputStream);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//Factory용 getter 메소드
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}
	
}
