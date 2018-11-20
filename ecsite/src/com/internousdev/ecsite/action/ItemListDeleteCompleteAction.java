package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport implements SessionAware {

	public Map<String , Object> session;
	private ArrayList<ItemInfoDTO> itemList =new ArrayList<ItemInfoDTO>();
	private String message;
	private String deleteFlg;
	private String result;

	public String execute() throws SQLException{

		ItemListDeleteCompleteDAO itemListDeleteCompleteDAO = new ItemListDeleteCompleteDAO();
		int count=itemListDeleteCompleteDAO.itemListDelete();

		if(count > 0){
			setMessage("全ての商品情報を正しく削除しました。");
		}else if(count == 0){
			setMessage("全ての商品情報の削除に失敗しました。");
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

	public ArrayList<ItemInfoDTO> getItemList() {
		return itemList;
	}
	public void setItemList(ArrayList<ItemInfoDTO> itemList) {
		this.itemList = itemList;
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
