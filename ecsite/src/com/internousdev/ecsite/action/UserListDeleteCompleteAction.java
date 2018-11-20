package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class UserListDeleteCompleteAction extends ActionSupport implements SessionAware{

	public Map<String ,Object> session;
	private ArrayList<UserInfoDTO> userList=new ArrayList<UserInfoDTO>();
	private String message;
	private String deleteFlg;
	private String result;

	public String execute() throws SQLException{

		UserListDeleteCompleteDAO userListDeleteCompleteDAO=new UserListDeleteCompleteDAO();
		int count=userListDeleteCompleteDAO.userListDelete();

		if(count > 0){
			setMessage("全てのユーザー情報を正しく削除しました。");
		}else if(count == 0){
			setMessage("全てのユーザー情報の削除に失敗しました。");
		}
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
		public String getDeleteFlg() {
			return deleteFlg;
		}
		public void setDeleteFlg(String deleteFlg) {
			this.deleteFlg = deleteFlg;
		}
		public String getResult() {
			return result;
		}
		public void setResult(String result) {
			this.result = result;
		}
}
