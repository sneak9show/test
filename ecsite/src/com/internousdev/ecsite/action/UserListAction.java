package com.internousdev.ecsite.action;

	import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

	public class UserListAction extends ActionSupport implements SessionAware{

		public Map<String ,Object> session;
		private UserListDAO userListDAO =new UserListDAO();
		private ArrayList<UserInfoDTO> userList=new ArrayList<UserInfoDTO>();

		public String execute() throws SQLException{

				userList = userListDAO.getUserList();

			String result=SUCCESS;
			return result;
		}

		public Map<String, Object> getSession() {
			return session;
		}
		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}
		public UserListDAO getUserListDAO() {
			return userListDAO;
		}
		public void setUserListDAO(UserListDAO userListDAO) {
			this.userListDAO = userListDAO;
		}

		public ArrayList<UserInfoDTO> getUserList() {
			return userList;
		}
		public void setUserList(ArrayList<UserInfoDTO> userList) {
			this.userList = userList;
		}

}
