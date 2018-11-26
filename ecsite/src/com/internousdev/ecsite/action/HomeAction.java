package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	private List<BuyItemDTO> list= new ArrayList<>();

	private BuyItemDAO buyItemDAO=new BuyItemDAO();

	public String execute()throws SQLException{
		String result ="login";
		if(session.containsKey("id")){
			list=buyItemDAO.getBuyItemInfoAll();
			BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();
			session.put("id",buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());

			result =SUCCESS;
		}
		return result;
	}


	public Map<String,Object> getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

	public List<BuyItemDTO> getList() {
		return list;
	}


	public void setList(List<BuyItemDTO> list) {
		this.list = list;
	}


	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}


	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

}


