package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserSelectDeleteAction extends ActionSupport implements SessionAware{

	public Map<String ,Object> session;
	private ArrayList<UserInfoDTO> userList=new ArrayList<UserInfoDTO>();
	private String message;
	private String result;
	private int id;

	public String execute() throws SQLException{
		System.out.println(id);
		UserListDeleteCompleteDAO userListDeleteCompleteDAO=new UserListDeleteCompleteDAO();
//		int count=userListDeleteCompleteDAO.userSelectDelete(id);
//
//		session.put("id", UserInfoDTO.getId());
//		session.put("user_name", UserInfoDTO.getUserName());

//		if(count > 0){
//			setMessage("ユーザー情報を正しく削除しました。");
//		}else if(count == 0){
//			setMessage("ユーザー情報の削除に失敗しました。");
//		}
		result=SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<UserInfoDTO> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<UserInfoDTO> userList) {
		this.userList = userList;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


}
