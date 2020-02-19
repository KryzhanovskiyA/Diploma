<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<style>
table#nat{
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>
<body>  
<% 
	String firstName =  request.getParameter("fullname");
	String lastName = request.getParameter("userName");
	String email = request.getParameter("pass");
	String phone = request.getParameter("address");
	String report = request.getParameter("age");
	String section = request.getParameter("qual");
	String percent = request.getParameter("percent");
	String year = request.getParameter("yop"); 
%>
<table id ="nat">
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
<br>
use " <i> select * from student; </i> " in mysql client to verify it.
</body>
</html>