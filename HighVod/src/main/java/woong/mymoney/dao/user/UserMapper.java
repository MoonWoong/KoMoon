package woong.mymoney.dao.user;

import org.apache.ibatis.annotations.Param;

import woong.mymoney.dto.UserDto;

public interface UserMapper {
	
	UserDto loginCheck(@Param("userName") String userName);

	String userIdDupCheck(@Param("userId") String userId);

	void insertUser(UserDto dto);

	UserDto selectUserInfo(UserDto dto);
	
}
