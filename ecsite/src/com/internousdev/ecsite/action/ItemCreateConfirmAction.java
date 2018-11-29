package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemCreateConfirmAction extends ActionSupport implements SessionAware{

	private String itemName;
	private String itemPrice;
	private String itemStock;
	public Map<String ,Object> session;
	private String errorMessage_itemName;
	private String errorMessage_price;
	private String errorMessage_stock;

	public String execute(){
		String result=SUCCESS;

		if(!(itemName.equals(""))
				&& !(itemPrice.equals(""))
				&& !(itemStock.equals(""))){
			session.put("itemName", itemName);
			session.put("itemPrice", itemPrice);
			session.put("itemStock", itemStock);
		}else if((itemName.equals(""))){
			setErrorMessage_itemName("商品名が未入力です。");

			result =ERROR;
		}if((itemPrice.equals(""))){
			setErrorMessage_price("値段が未入力です。");
			result =ERROR;
		}if((itemStock.equals(""))){
			setErrorMessage_stock("在庫数が未入力です。");
			result =ERROR;
		}
		return result;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemStock() {
		return itemStock;
	}

	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMessage_itemName() {
		return errorMessage_itemName;
	}

	public void setErrorMessage_itemName(String errorMessage_itemName) {
		this.errorMessage_itemName = errorMessage_itemName;
	}

	public String getErrorMessage_price() {
		return errorMessage_price;
	}

	public void setErrorMessage_price(String errorMessage_price) {
		this.errorMessage_price = errorMessage_price;
	}

	public String getErrorMessage_stock() {
		return errorMessage_stock;
	}

	public void setErrorMessage_stock(String errorMessage_stock) {
		this.errorMessage_stock = errorMessage_stock;
	}

}
