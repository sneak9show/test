package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String ,Object> session;
	private String errorMessage_id;
	private String errorMessage_pass;
	private String errorMessage_name;

	public String execute(){
		String result =SUCCESS;

		if(!(loginUserId.equals(""))
			&& !(loginPassword.equals(""))
			&& !(userName.equals(""))){
			session.put("loginUserId", loginUserId);
			session.put("loginPassword", loginPassword);
			session.put("userName",userName);

		}else if((loginUserId.equals(""))){
			setErrorMessage_id("ログインIDが未入力です。");
			result =ERROR;
		}if((loginPassword.equals(""))){
			setErrorMessage_pass("ログインPASSが未入力です。");
			result =ERROR;
		}if((userName.equals(""))){
			setErrorMessage_name("ユーザー名が未入力です。");
			result =ERROR;
		}
		return result;
	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
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

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMessage_id() {
		return errorMessage_id;
	}
	public void setErrorMessage_id(String errorMessage_id) {
		this.errorMessage_id = errorMessage_id;
	}

	public String getErrorMessage_pass(){
		return errorMessage_pass;
	}
	public void setErrorMessage_pass(String errorMessage_pass){
		this.errorMessage_pass = errorMessage_pass;
	}

	public String getErrorMessage_name(){
		return errorMessage_name;
	}
	public void setErrorMessage_name(String errorMessage_name){
		this.errorMessage_name = errorMessage_name;
	}



}
