<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="commonpage.jsp" %>
<%
 
try
{
	/* Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	Statement s = con.createStatement(); */
	email =(String)session.getAttribute("adminemail");
	
	String name = request.getParameter("uname");
	String password = request.getParameter("psw");
	
   int i=s.executeUpdate("update admin1 set username = '"+name+"',password = '"+password+"' where email = '"+email+"' ");
	
	
	
	if(i>0)
	{
		%>
		<script>
				alert('User update successfully.....');
				window.location='commonpage.jsp';
		</script>
		
		<% 
	}
	
	else
	{
		%>
		<script>
				alert("User can't updated successfully...");
				window.location='admin_profile_update.jsp';
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