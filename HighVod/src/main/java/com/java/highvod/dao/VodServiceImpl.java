package com.java.highvod.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class VodServiceImpl implements VodService {
	
	@Autowired
	private SqlSession sqlSession;

	public String queryTest() {
		return sqlSession.selectOne("test");
	}

}
