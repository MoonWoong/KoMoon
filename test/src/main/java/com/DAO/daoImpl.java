package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.DTO.dto;
import com.mysql.jdbc.PreparedStatement;

public class daoImpl extends JdbcDaoSupport implements dao {

	public List getTeamList() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	public dao getTeam(Integer ID) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertTeam(dao da) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}


}