package woong.mymoney.dto;

public class UserDto {

	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String userBirth;
	private String userSex;
	private String userEmail;

	public UserDto() {

	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "UserDto [userNo=" + userNo + ", userId=" + userId + ", userPw="
				+ userPw + ", userName=" + userName + ", userBirth=" + userBirth
				+ ", userSex=" + userSex + ", userEmail=" + userEmail + "]";
	}

}
