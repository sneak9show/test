package com.internousdev.login_02.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.login_02.dto.LoginDTO;
import com.internousdev.login_02.util.DBConnector;

public class LoginDAO {

	public LoginDTO select(String name,String password) throws SQLException{
		LoginDTO dto=new LoginDTO();
		DBConnector db=new DBConnector();
		Connection con = db.getConnection();
		String sql ="select * from user where user_name=? and password=?";

		try{
/* PreparedStatementとは16行目のsql文字列をデータベースに持っていく際に
 * 書いてあることが正しいかどうかプリコンパイルして保持しておくインターフェイスのこと
 * ！これを使ったときはcloseを忘れずに！ */
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			/* executeQueryでSQL文を実行する */

			if(rs.next()){
				dto.setName(rs.getString("user_name"));
				dto.setPassword(rs.getString("password"));
			}
			/* dtoに入れてる */

		}catch(SQLException e){
			e.printStackTrace();
			/* SQL絡みのエラーがでたら処理を中止しエラーを表示する */
		}finally{
			con.close();
			/* DBとの接続を切ってる */
		}
		return dto;
	}

}
