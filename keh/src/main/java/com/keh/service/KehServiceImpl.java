package com.keh.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public KehDto loginCheck(String id, String pw) {
		KehDto dto = new KehDto();
		KehMapper kehMapper = sqlSession.getMapper(KehMapper.class);
		dto = kehMapper.loginCheck(id,pw);
		return dto;
	}

	public void registerCheck(String id, String pw, String name) {
		KehMapper kehMapper = sqlSession.getMapper(KehMapper.class);
		
		kehMapper.register(id, pw, name);

	}

	public void updateInfo(String id, String name) {
		// TODO Auto-generated method stub
		KehMapper kehMapper = sqlSession.getMapper(KehMapper.class);
		
		kehMapper.updateInfo(id, name);
	}

}
