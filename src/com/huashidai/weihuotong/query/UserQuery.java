package com.huashidai.weihuotong.query;



public class UserQuery extends BaseQuery{
	private String username;
	private Integer state = -99;
	private Integer userType = -1;
	private String useCode;

	
	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	

	public String getUseCode() {
		return useCode;
	}

	public void setUseCode(String useCode) {
		this.useCode = useCode;
	}

	@Override
	public String toString() {
		return super.toString() + username + "," + state + "," + userType + "," + useCode;
	}

}
