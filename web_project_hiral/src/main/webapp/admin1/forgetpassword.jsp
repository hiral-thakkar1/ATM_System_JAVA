<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
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
<script type = "text/javascript"src="/js/jquery-3.7.1.min.js"></script>
<script type = "text/javascript"src="/js/jquery.validate.min.js"></script>

<style>

body
{

width:100%;

overflow-x:hidden;
}

</style>

</head>
<body>

<div class = "container">

<div class = "row mx-5 my-5 border p-5 border-secondary" style = "border-redius: 10px;background-color:whitesmoke;">

<div class = "col-md-8 offset-md-2">

<h2 class-"text-center">Reset Your Password</h2>

<form action="forsetpwd.jsp" method = "POST">

<div class = "form-group">

<label for = "email">email</label>

<input type = "text" class = "form-control" id = "email" name = "email" placeholder="Enter new email here">

<br>

<br>

<div class = "form-group">

<label for = "password">New password</label>

<input type = "password" class = "form-control" id="password" name = "npsw" placeholder = "Enter new password here">

<br>
<br>

<label for = "c_password">Confirm password</label>

<input type = "password" class = "form-control" id = "c_password" name = "cpsw" placeholder = "Enter new password here">

<br>
<br>

<input type = "submit">
 
</div>
</div>

</form>

</div>

</div>


</div>
</body>
</html>