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

	public ArrayList<Product> getProductDetail(String pro_id) {
		System.out.println("dao 1");
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println("dao 2");
		ArrayList<Product> detailList = (ArrayList) sqlSession.selectList("productView", pro_id);
		System.out.println("dao 3");
		System.out.println(detailList.size());
		sqlSession.close();
		System.out.println("dao 4");

		return detailList;

	}

	public Product showProduct(String pro_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		detailInfo.setPro_id(pro_id);

		Product detail = sqlSession.selectOne("productView", pro_id);

		sqlSession.close();

		return detail;

	}

	// Product 이미지 불러오기

//	public ArrayList<Product> getProductIMG(String pro_id) {
//		System.out.println("dao 4");
//		SqlSession sqlSession = sqlSessionFactory.openSession(true);
//		System.out.println("dao 5");
//		ArrayList<ProductIMG> IMGList = (ArrayList) sqlSession.selectList("productIMGList", pro_id);
//		System.out.println("dao 6");
//		System.out.println(IMGList.size());
//		sqlSession.close();
//
//		return IMGList;
//
//	}
//
//	public ProductIMG showProductIMG(String pro_id) {
//
//		SqlSession sqlSession = sqlSessionFactory.openSession(true);
//		proIMG.setPro_id(pro_id);
//
//		ProductIMG pro_IMG = sqlSession.selectOne("ProductDetailInfo", pro_id);
//
//		sqlSession.close();
//
//		return detail;
//
//	}

}
