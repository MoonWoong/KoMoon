package woong.mymoney.service.user;

import woong.mymoney.dto.UserDto;

public interface UserService {
	
	public UserDto loginCheck(String userName);

	public String userIdDupCheck(String userId);

	public void insertUser(UserDto dto);

	public UserDto selectUserInfo(UserDto dto);
	
}
