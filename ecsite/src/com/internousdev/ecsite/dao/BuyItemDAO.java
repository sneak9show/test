package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {
	private DBConnector dbConnector =new DBConnector();


	public BuyItemDTO getBuyItemInfo()throws SQLException{
		BuyItemDTO buyItemDTO =new BuyItemDTO();
		Connection connection=dbConnector.getConnection();
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
		}finally{
			connection.close();
		}

		return buyItemDTO;
	}

	public List<BuyItemDTO> getBuyItemInfoAll()throws SQLException{

		List<BuyItemDTO> list = new ArrayList<>();
		String sql="SELECT * FROM item_info_transaction";
		Connection connection=dbConnector.getConnection();

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();

			while(resultSet.next()){
				BuyItemDTO buyItemDTO =new BuyItemDTO();

				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));

				list.add(buyItemDTO);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}

		return list;
	}

	public BuyItemDTO getBuyItem(int id )throws SQLException{
		BuyItemDTO buyItemDTO =new BuyItemDTO();
		Connection connection=dbConnector.getConnection();
		String sql="SELECT * FROM item_info_transaction where id=?";


		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			ResultSet resultSet=preparedStatement.executeQuery();

			if(resultSet.next()){
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}

		return buyItemDTO;
	}


}

