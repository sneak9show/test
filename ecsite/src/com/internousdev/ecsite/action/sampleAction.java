
package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class sampleAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private String id;
	private String selectedId;
	public String execute() {
		String result=ERROR;
		BuyItemDAO buyItemDAO = new BuyItemDAO();
		int count = 0;
		List<String> deleteErrorMessageList = new ArrayList<String>();
		selectedId = String.valueOf((selectedId.split(", ",0))[0]);
		int intSelectedId = Integer.parseInt(selectedId);
		id = String.valueOf((id.split(", ",0))[intSelectedId]);
		System.out.println(id);
		count += buyItemDAO.getBuyItem(id);
		if(count <= 0) {
			return ERROR;
		}else {
			List<ItemInfoDTO> itemInfoDtoList = new ArrayList<ItemInfoDTO>();
			itemInfoDtoList = buyItemDAO.getBuyItemInfo();
			Iterator<ItemInfoDTO> iterator = itemInfoDtoList.iterator();
			if(!(iterator.hasNext())) {
				itemInfoDtoList = null;
			}
			session.put("userInfoDtoList", itemInfoDtoList);

			result=SUCCESS;
		}
		return result;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSelectedId() {
		return selectedId;
	}
	public void setSelectedId(String selectedId) {
		this.selectedId = selectedId;
	}


}