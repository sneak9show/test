package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteConfirmAction extends ActionSupport implements SessionAware{

	public String execute()throws SQLException{

		String result=SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {

	}


}
