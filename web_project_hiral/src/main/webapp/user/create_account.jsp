<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>second insert practical...</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	Statement s = con.createStatement();
	
	String name = request.getParameter("uname");
	int atm_pin1 = Integer.parseInt(request.getParameter("atm_pin"));
	int account_no1 = Integer.parseInt(request.getParameter("acc_no"));
	
	int balance = Integer.parseInt(request.getParameter("balance"));
	String contact_no1 = request.getParameter("contact_no");
	
	int i = s.executeUpdate("insert into user(name,atm_pin1,account_no1,balance,contact_no1) values ('"+name+"',"+atm_pin1+","+account_no1+","+balance+",'"+contact_no1+"')");
	
	if(i > 0)
	{
		%>
		<script>
			alert("account created successfully..");
			window.location = "login.html";
		</script>
		<%
	}
	else
	{
		%>
		<script>
		alert("account not created successfully..");
		window.location = "create_account.jsp";
		</script>
		
		<%
		
		out.println("can't insert data.....");
	}
}
catch(SQLException e)
{
	out.println(e);
}
%>
</body>
</html>