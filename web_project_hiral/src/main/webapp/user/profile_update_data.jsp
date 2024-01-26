<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "index.jsp" %>

<%
try
{
	/* taking input from html page */
	
	
	/* int p_id = Integer.parseInt(request.getParameter("p_id")); */
	name = request.getParameter("uname");
	int atm_pin1 = Integer.parseInt(request.getParameter("atm_pin"));
	
	String contact_no1 = request.getParameter("contact_no");
	
	int i = s.executeUpdate("update user set name = '"+name+"',atm_pin1 = "+atm_pin1+",contact_no1 = '"+contact_no1+"' where account_no1 = "+account_no1+" ");
	
	if(i > 0)
	{
		%>
		<div class = "alert">
		<span class = "closebtn" onclick = "this.parentElement.style.display = 'none';">&times;</span>
		
		Profile Update Successfully.....
		</div>
		<%
	}
	else
	{
		out.println("data not updateed successfully...");
	}
}
catch(SQLException e)
{
	out.println(e);
}
		%>
</body>
</html>