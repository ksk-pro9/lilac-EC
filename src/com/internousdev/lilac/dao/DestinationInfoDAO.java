package com.internousdev.lilac.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.lilac.dto.DestinationInfoDTO;
import com.internousdev.lilac.util.DBConnector;
public class DestinationInfoDAO {

	public int insert(String userId,String familyName,
			String firstName,String familyNameKana,String firstNameKana,
					String email,String telNumber,String userAddress){
		DBConnector dvConnector=new getConnection();
		Connection connection=dbConnector.getConnection();
		int count=0;
		String sql="insert into destination_info(user_id,family_name,family_name_kana,first_name_kana,"
				+ "email,tel_number,user_address,regist_date,update_date)"
				+ "values(?,?,?,?,?,?,?,?,now(),'0000-01-01')";
		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,userId);
			preparedStatement.setString(2,familyName);
			preparedStatement.setString(3,firstName);
			preparedStatement.setString(4,familyNameKana);
			preparedStatement.setString(5,firstNameKana);
			preparedStatement.setString(6,email);
			preparedStatement.setString(7,email);
			preparedStatement.setString(8,userAddress);
			count=preparedStatement.executeUpdate();
		}catch(SQLException){
			e.print
		}
	
	
	
	
	
	}
