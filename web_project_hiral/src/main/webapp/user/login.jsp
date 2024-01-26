<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.sql.*,java.util.*" %>
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
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	Statement s = con.createStatement();
	
	int atm_pin1 = Integer.parseInt(request.getParameter("atm_pin"));
	int account_no1 = Integer.parseInt(request.getParameter("acc_no"));
	
	ResultSet rs = s.executeQuery("select * from user where atm_pin1 = "+atm_pin1+" and account_no1 = "+account_no1+" ");
	
	 session.setAttribute("account_no",account_no1); 
	
	if(rs.next())
	{
		response.sendRedirect("index.jsp");
	}
	else
	{
		out.print("invalid account_no or password...");
	}
}
catch(SQLException e)
{
	out.println(e);
}
%>
</body>
</html>