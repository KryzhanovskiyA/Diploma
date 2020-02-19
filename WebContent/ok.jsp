<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String report = request.getParameter("report");
	String section = request.getParameter("section");
	%>
	 <center><h2>You have been successfully registered with:</h2></center>
	 <table id ="nat" align="center" bgcolor = "green">
<tr>
	<td>First Name</td>
	<td><%= firstName %></td>
</tr>
<tr>
	<td>Last Name</td>
	<td><%= lastName %></td>
</tr>
<tr>
	<td>Email</td>
	<td><%= email %></td>
</tr>
<tr>
	<td>Phone</td>
	<td><%= phone %></td>
</tr>
<tr>
	<td>Report</td>
	<td><%= report %></td>
</tr>
<tr>
	<td>Section</td>
	<td><%= section %></td>
</tr>

</table>
</body>
</html>