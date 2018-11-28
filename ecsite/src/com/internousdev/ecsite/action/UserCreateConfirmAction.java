package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String ,Object> session;
	private String errorMassage;
	private String errorMassage_id;
	private String errorMassage_pass;
	private String errorMassage_name;

	public String execute(){
		String result =SUCCESS;

		if(!(loginUserId.equals(""))
			&& !(loginPassword.equals(""))
			&& !(userName.equals(""))){
			session.put("loginUserId", loginUserId);
			session.put("loginPassword", loginPassword);
			session.put("userName",userName);

		}else if((loginUserId.equals(""))){
			setErrorMassage_id("ログインIDが未入力です。");

			result =ERROR;
		}if((loginPassword.equals(""))){
			setErrorMassage_pass("ログインPASSが未入力です。");
			result =ERROR;
		}if((userName.equals(""))){
			setErrorMassage_name("ユーザー名が未入力です。");
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

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}

	public String getErrorMassage_id() {
		return errorMassage_id;
	}
	public void setErrorMassage_id(String errorMassage_id) {
		this.errorMassage_id = errorMassage_id;
	}

	public String getErrorMassage_pass(){
		return errorMassage_pass;
	}
	public void setErrorMassage_pass(String errorMassage_pass){
		this.errorMassage_pass = errorMassage_pass;
	}

	public String getErrorMassage_name(){
		return errorMassage_name;
	}
	public void setErrorMassage_name(String errorMassage_name){
		this.errorMassage_name = errorMassage_name;
	}



}
