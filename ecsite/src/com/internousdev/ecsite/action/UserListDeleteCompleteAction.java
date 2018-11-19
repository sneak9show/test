package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport implements SessionAware{

	public Map<String ,Object> session;
	private UserListDeleteCompleteDAO userListDeleteCompleteDAO =new UserListDeleteCompleteDAO();
	private ArrayList<ItemInfoDTO> itemList=new ArrayList<ItemInfoDTO>();
	private String deleteFlg;
	private String message;

	public String execute() throws SQLException{

	int res=userListDeleteCompleteDAO.userListDelete();

	if(res > 0){
		userListDeleteCompleteDAO = null;
		setMessage("ユーザー情報を全件削除致しました。");
	}else if(res == 0){
		setMessage("ユーザー情報の削除に失敗しました。");
	}
	String result="SUCCESS";
	return result;
}

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public UserListDeleteCompleteDAO getUserListDeleteCompleteDAO() {
		return userListDeleteCompleteDAO;
	}

	public void setUserListDeleteCompleteDAO(UserListDeleteCompleteDAO userListDeleteCompleteDAO) {
		this.userListDeleteCompleteDAO = userListDeleteCompleteDAO;
	}

	public ArrayList<ItemInfoDTO> getItemList() {
		return itemList;
	}

	public void setItemList(ArrayList<ItemInfoDTO> itemList) {
		this.itemList = itemList;
	}

	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


}
