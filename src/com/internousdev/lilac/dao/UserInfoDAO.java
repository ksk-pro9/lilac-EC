package com.internousdev.lilac.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.lilac.dto.UserInfoDTO;
import com.internousdev.lilac.util.DBConnector;

public class UserInfoDAO {

	public int createUser(String familyName, String firstName, String familyNameKana, String firstNameKana, String sex, String email, String loginId, String password){

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int count = 0;
		String sql = "insert into user_info(user_id, password, family_name, first_name, family_name_kana, first_name_kana, sex, email, logined, regist_date, update_date) values (?,?,?,?,?,?,?,?,?,?, now(), 0)";

		try{
			PreparedStatement ]
		}

	}




//ssssssssssssssss

//	sssssssssssss

	public String userLogin(String loginId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		String sql = "select * from user_info where user_id=?";

		int result = 0;

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, loginId);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
