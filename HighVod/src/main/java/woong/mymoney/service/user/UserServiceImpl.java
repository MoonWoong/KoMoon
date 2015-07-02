package woong.mymoney.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import woong.mymoney.dao.user.UserMapper;
import woong.mymoney.dto.UserDto;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	public UserDto loginCheck(String userName) {
		return userMapper.loginCheck(userName);
	}

	public String userIdDupCheck(String userId) {
		// TODO Auto-generated method stub
		return userMapper.userIdDupCheck(userId);
	}

	public void insertUser(UserDto dto) {
		// TODO Auto-generated method stub
		userMapper.insertUser(dto);
	}

	public UserDto selectUserInfo(UserDto dto) {
		// TODO Auto-generated method stub
		return userMapper.selectUserInfo(dto);
	}


}
