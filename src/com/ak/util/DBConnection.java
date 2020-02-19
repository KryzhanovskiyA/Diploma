package com.ak.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection createConnection() {
		
		Connection connection = null;
		String url = "jdbc:mysql://localhost:3306/customers?serverTimezone=Europe/Moscow&useSSL=false";
		String username = "root";
		String password = "Qwerty123";
		
		try 
		 {
		 try 
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver"); 
		 } 
		 catch (ClassNotFoundException e)
		 {
		 e.printStackTrace();
		 }
		 
		 connection = DriverManager.getConnection(url, username, password);
		 System.out.println("Printing connection object "+connection);
		 } 
		 catch (Exception e) 
		 {
		 e.printStackTrace();
		 }
		 
		 return connection;
	}

}
