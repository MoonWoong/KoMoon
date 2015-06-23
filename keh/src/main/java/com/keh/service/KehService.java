package com.keh.service;

import java.util.ArrayList;

import com.keh.dto.KehDto;

public interface KehService {
	
//	List getTeamList() throws DataAccessException;
//	dao getTeam(Integer ID)throws DataAccessException;
//	void insertTeam(dao da)throws DataAccessException;
//	KehDto find(String ID,String PW);
	
	
	ArrayList<KehDto> memberList();
	KehDto loginCheck(String id,String pw);
	
}
