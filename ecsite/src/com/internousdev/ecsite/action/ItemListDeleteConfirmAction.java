package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteConfirmAction extends ActionSupport implements SessionAware{

	public String execute(){

		String result=SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {

	}


}
