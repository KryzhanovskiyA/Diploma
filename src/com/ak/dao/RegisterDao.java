package com.ak.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ak.bean.RegisterBean;
import com.ak.util.DBConnection;



public class RegisterDao  {
	
	public String registerUser(RegisterBean registerBean) {
		
		String firstName = registerBean.getFirstName();
		String lastName = registerBean.getLastName();
		String email = registerBean.getEmail();
		String phone = registerBean.getPhone();
		String report = registerBean.getReport();
		String section = registerBean.getSection();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = DBConnection.createConnection();
			
			String query = "insert into users values(NULL,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, phone);
			preparedStatement.setString(5, report);
			preparedStatement.setString(6, section);
			
			int i = preparedStatement.executeUpdate();
			
			if(i!=0) {return "SUCCESS";}
			
		}catch(SQLException e) {e.printStackTrace();
		
		}
		
		
		
		return "Oops.. Something went wrong there..!";
	}

}













