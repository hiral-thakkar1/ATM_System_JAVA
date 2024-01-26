<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>




<%

try

{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	//create connection with server "src/main/webapp/profil_update_data.jsp"
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	
	Statement s = con.createStatement();
	
	int id =Integer.parseInt(request.getParameter("id"));
	//delete particular data
	
	int del = s.executeUpdate("delete from user where id = "+id);
	
	if(del > 0)
		
	{
	%>
	
	<script>
	
		alert('User Deleted Successfully....');
	
		window.location = 'detail_data.jsp';
	
	</script>	
	<%
	
	}
	else
	{
	%>
	
	<script>
	
		alert("User can't Deleted Successfully.....");
	
		window.location = 'detail_data.jsp';
	</script>
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