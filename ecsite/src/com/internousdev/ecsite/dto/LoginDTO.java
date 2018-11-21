package com.internousdev.ecsite.dto;

public class LoginDTO {
	private String loginId;
	private String loginPassword;
	private String userName;
	private boolean loginFlg=false;
	private boolean admin_flg;

	public boolean getAdmin_flg() {
		return admin_flg;
	}
	public void setAdmin_flg(boolean admin_flg) {
		this.admin_flg = admin_flg;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean getLoginFlg() {
		return loginFlg;
	}
	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}

}
