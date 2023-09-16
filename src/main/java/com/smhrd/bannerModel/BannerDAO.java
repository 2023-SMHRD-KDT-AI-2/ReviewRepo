package com.smhrd.bannerModel;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class BannerDAO {

	BannerResult br = new BannerResult();
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public ArrayList<BannerResult> bannerRecommendList (BannerResult br) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ArrayList<BannerResult> bannerrecommendlist =(ArrayList) sqlSession.selectList("bannerRecommendList", br);
		return bannerrecommendlist;
		
	}
}
