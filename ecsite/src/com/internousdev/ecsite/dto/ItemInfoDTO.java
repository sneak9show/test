package com.internousdev.ecsite.dto;

public class ItemInfoDTO {

	private String itemName;
	private String itemPrice;
	private String itemStock;
	private String id;
	private String insert_date;



	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
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



}
