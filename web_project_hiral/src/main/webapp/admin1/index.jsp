<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking System</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

<style>
body
{

width:100%;

overflow-x:hidden;
}
</style>
</head>
<body>

<%
Integer count = (Integer)(session.getAttribute("counts"));

if(count == null || count == 0)
{
	count = 1;
}

else
{
	count += 1;
}

session.setAttribute("counts",count);

%>

<h1>Total number of visits: <%= count %></h1>

<div class = "container">

<div class = "row mx-5 my-5 border p-5 border-secondary" 
style="border-radius:10px; background-color:whitesmoke;">

<div class = "col-md-8 offset-md-2">

<form action="admin_login.jsp" method = "post">

<h4 classs = "text-center">Admin_Login_Form</h4>

<div class = "form-group">

<label for = "email">Email</label>

<input type = "email" class = "form-control" 
id = "email" name = "email" placeholder = "Enter Your Email Here">

</div>

<div class = "form-group">

<label for = "password">Password</label>

<input type = "password" class = "form-control" id = "password" 
name = "password" placeholder = "Enter your password Here">

</div>

<button type = "submit" class = "btn btn-primary">Submit</button><br>

<a href = "forgetpassword.jsp">forget password?</a>

<br><br>

</form>
</div>

</div>
</div>

</body>
</html>