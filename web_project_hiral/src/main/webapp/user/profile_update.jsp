<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

<style>
body
{
width: 100%;
overflow-x:hidden;
}

</style>
</head>
<body>
<%@ include file = "common_file.jsp"%>

<%
try
{
	account_no1 = (Integer)session.getAttribute("account_no");
	rs = s.executeQuery("select * from user where account_no1 = "+account_no1);
	
	while(rs.next())
		
	{
		%>
		<div class = "col-md-6" style = "position:absolute; top:80px; left:500px;">
			<form action="profile_update_data.jsp">
			
				<div class = "form-group">
					<label for = "name">Name</label>
					<input type = "text" class = "form-control" id = "name" name = "uname" value = "<%=rs.getString(2)%>"/>
				</div>
				
				<div class = "form-group">
					<label for = "atm-pin">Atm_pin</label>
					<input type = "text" class = "form-control" id = "atm_pin" name = "atm_pin" value = "<%=rs.getInt(3)%>"/>
				</div>
				
				<div class = "form-group">
					<label for = "contact">Contact_no</label>
					<input type = "text" class = "form-control" id = "contact" name = "contact_no" value = "<%=rs.getString(6)%>"/>
				</div>
				<div class = "form-group">
					<input type = "submit" value = "Update" class = "btn btn-success">
				</div>
			</form>
		</div>
		<%
	}
}
catch(SQLException e)
{
	out.println(e);
}
%>
</body>
</html>