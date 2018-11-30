package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemListAction extends ActionSupport implements SessionAware{

	private int id;
	private Map<String ,Object> session;
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	public String execute() throws SQLException{
		buyItemDTO= buyItemDAO.getBuyItem(id);
		session.put("id", buyItemDTO.getId());
		session.put("item_name", buyItemDTO.getItemName());
		session.put("item_price", buyItemDTO.getItemPrice());

		return SUCCESS;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public BuyItemDTO getBuyItemDTO() {
		return buyItemDTO;
	}

	public void setBuyItemDTO(BuyItemDTO buyItemDTO) {
		this.buyItemDTO = buyItemDTO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

}


