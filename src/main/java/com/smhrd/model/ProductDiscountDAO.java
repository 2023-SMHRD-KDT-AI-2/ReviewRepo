package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ProductDiscountDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	   
	ArrayList<ProductDiscount> dislist = new ArrayList<>();
	    
	public ArrayList<ProductDiscount> discountlist(){

	        SqlSession sqlSession = sqlSessionFactory.openSession(true);
	        
	        dislist = (ArrayList) sqlSession.selectList("discountlist");
	        
	        sqlSession.close();
	        
	        return dislist;
	        
	    }
	
	}