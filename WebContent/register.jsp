<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
 var firstname = document.form.firstname.value;
 var lastname = document.form.lastname.value;
 var email = document.form.email.value;
 var phone = document.form.phone.value;
 var report = document.form.report.value;
 var section = document.form.section.value;
  
 if (firstname==null || firstname=="")
 { 
 alert("First Name can't be blank"); 
 return false; 
 }
 else if (lastname==null || lastname=="")
 { 
 alert("Last Name  can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (phone==null || phone=="")
 { 
 alert("Phone can't be blank"); 
 return false; 
 }
 
 } 
</script> 
</head>
<body>
<center><h2>Java Conferention Registration </h2></center>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>First Name</td>
 <td><input type="text" name="firstname" /></td>
 </tr>
 <tr>
 <td>Last Name</td>
 <td><input type="text" name="lastname" /></td>
 </tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" /></td>
 </tr>
 <tr>
 <td>Phone</td>
 <td><input type="text" name="phone" /></td>
 </tr>
 <tr>
 <td>Report</td>
 <td><input type="text" name="report" /></td>
 </tr>
 <tr>
 <td>Section</td>
 <td><select name="section">
 <option></option>
 <option>Languages</option>
 <option>Tasks</option>
 <option>Problems</option>
 <option>Soft</option>
 </select></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Register"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 
</body>
</html>