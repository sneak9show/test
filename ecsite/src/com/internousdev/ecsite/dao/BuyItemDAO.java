package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {
	private DBConnector dbConnector =new DBConnector();
	private Connection connection=dbConnector.getConnection();


	public BuyItemDTO getBuyItemInfo(){
		BuyItemDTO buyItemDTO =new BuyItemDTO();
		String sql="SELECT id,item_name,item_price FROM item_info_transaction";

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();

			if(resultSet.next()){
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return buyItemDTO;
	}

	public List<BuyItemDTO> getBuyItemInfoAll(){

		List<BuyItemDTO> list = new ArrayList<>();
		String sql="SELECT * FROM item_info_transaction";

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();

			while(resultSet.next()){
				BuyItemDTO buyItemDTO =new BuyItemDTO();

				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));

			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return list;
	}

}
