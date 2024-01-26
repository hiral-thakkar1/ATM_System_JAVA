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

<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection
	("jdbc:mysql://localhost:3306/hiral_atm","root","");
	
	Statement s = con.createStatement();
	
	String email = request.getParameter("email");
	
	String password = request.getParameter("password");
	
	ResultSet rs = s.executeQuery("select * from admin1 where email = '"+email+"' and password = '"+password+"'");
	
	session.setAttribute("adminemail",email); //email is unique field so need to fetch it
	
	if(rs.next())
	{
		out.println("Login successfully...");
		
		response.sendRedirect("home.jsp");
		
	}
	else
	{
		out.println("invalid account_no or password...");
	}
}

catch(SQLException e)
{
	out.println(e);
}

%>
</body>
</html>