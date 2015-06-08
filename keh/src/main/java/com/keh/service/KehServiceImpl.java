package com.keh.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.keh.dao.KehMapper;
import com.keh.dto.KehDto;

@Repository
public class KehServiceImpl implements KehService {

	@Autowired
	private SqlSession sqlSession;
	
//	public List getTeamList() throws DataAccessException {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	public dao getTeam(Integer ID) throws DataAccessException {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	public void insertTeam(dao da) throws DataAccessException {
//		// TODO Auto-generated method stub
//		
//	}
//	
//	private static final String Query = "SLECT * "+"FROM member"+"WHERE ID=? AND PASSWORD=?";
//
//	public KehDto find(String ID, String PW) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	
	public ArrayList<KehDto> memberList() {
		ArrayList<KehDto> result = new ArrayList<KehDto>();
		
		KehMapper kehMapper = sqlSession.getMapper(KehMapper.class);
       
        result = kehMapper.memberList();
        
        return result;
	}

	
}
