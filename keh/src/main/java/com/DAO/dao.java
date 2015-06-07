package com.DAO;

import java.util.List;
import com.DTO.*;
import org.springframework.dao.DataAccessException;
public interface dao {
	
List getTeamList() throws DataAccessException;
dao getTeam(Integer ID)throws DataAccessException;
void insertTeam(dao da)throws DataAccessException;
dto find(String ID,String PW);

}
