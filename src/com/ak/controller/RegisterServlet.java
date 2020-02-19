package com.ak.controller;

import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//
//import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.ak.bean.RegisterBean;
import com.ak.dao.RegisterDao;
 
public class RegisterServlet extends HttpServlet {
 
private static final long serialVersionUID = 1L;

public RegisterServlet() {
 }
 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
 String firstName = request.getParameter("firstname");
 String lastName = request.getParameter("lastname");
 String email = request.getParameter("email");
 String phone = request.getParameter("phone");
 String report = request.getParameter("report");
 String section = request.getParameter("section");
 
 RegisterBean registerBean = new RegisterBean();
 registerBean.setFirstName(firstName);
 registerBean.setLastName(lastName);
 registerBean.setEmail(email);
 registerBean.setPhone(phone);
 registerBean.setReport(report);
 registerBean.setSection(section);
 
 

 
 
// try {
//	    Class.forName("com.mysql.cj.jdbc.Driver");
//	    
//
//	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customers?serverTimezone=Europe/Moscow&useSSL=false", "root", "Qwerty123");
//	    System.out.println("Connection succesfull!");
//	    
//	    String query = "insert into users values(NULL,?,?,?,?,?,?)";
//	    PreparedStatement ps = con.prepareStatement(query); 
//	    
//	    ps.setString(1, registerBean.getFirstName());
//	    ps.setString(2, registerBean.getLastName());
//	    ps.setString(3, registerBean.getEmail());
//	    ps.setString(4, registerBean.getPhone());
//	    ps.setString(5, registerBean.getReport());
//	    ps.setString(6, registerBean.getSection());
//
//	    ps.executeUpdate(); // execute it on test database
//	    System.out.println("successfully inserted");
//	    ps.close();
//	    con.close();
//	    
//	    request.getRequestDispatcher("ok.jsp").forward(request, response);
//	} catch (ClassNotFoundException | SQLException e) {
//		System.out.println("Connection failed...");
//		e.printStackTrace();
//	   }
 



 
 RegisterDao registerDao = new RegisterDao();
 
 
 String userRegistered = registerDao.registerUser(registerBean);
 
 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
 request.getRequestDispatcher("/ok.jsp").forward(request, response);
 }
 else   //On Failure, display a meaningful message to the User.
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/register.jsp").forward(request, response);
 }
 } 
}
