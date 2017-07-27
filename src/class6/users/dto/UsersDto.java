package class6.users.dto;

public class UsersDto {
	private String userId; 			// 회원 아이디
	private String userName;		// 회원 이름
	private String userPwd;			// 비밀 번호
	private String userLevel;		// 회원 등급
	private String userEmail;		// 이메일
	private String userPhone;		// 핸드폰 번호
	private String companyNo;		// 회사 번호
	private String regDate;			// 가입 일자
	
	public UsersDto(){ }
	
	public UsersDto(String userId, String userName, String userPwd, 
			String userLevel, String userEmail, String userPhone, 
			String companyNo, String regDate) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userLevel = userLevel;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.companyNo = companyNo;
		this.regDate = regDate;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
}
