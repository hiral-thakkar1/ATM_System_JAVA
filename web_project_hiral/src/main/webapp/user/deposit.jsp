<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
	form
		{
		margin: 0 auto;
		}
</style>

</head>

<body>
<%@ include file = "common_file.jsp" %>

<%
try
{
	
	int amt = Integer.parseInt(request.getParameter("amount"));
	int new_balance = amt + 0;
	int i = 0;
	
	rs = s.executeQuery("select * from user where account_no1 = "+account_no1+" ");
	
	if(rs.next())
	{
		new_balance = rs.getInt(5)+amt;
		i = s.executeUpdate("update user set balance = " +new_balance+ " where account_no1 = " +account_no1);
		
		if(i > 0)
		{
			%>
			<div class = "col-md-6" style = "position:absolute; top: 280px; left:500px;">
				<div class = "alert alert-success">
					<span class = "closebtn" onclick = "this.parentElement.style.display = 'none';">&times;</span>
					Deposit Update Successfully....<%=new_balance %>
				</div>
			</div>
			<%
		}
		else
		{
			%>
			<div class = "col-md-6" style = "position:absolute; top: 280px; left:500px;">
				<div class = "alert alert-danger">
					<span class = "closebtn" onclick = "this.parentElement.style.display = 'none';">&times;</span>
					Deposit Update Successfully....<%=new_balance %>
				</div>
			</div>
			<%
			out.println("data not update successfully...");
		}
	}
	else
	{
	out.println("Can't Login");		
	}
}
catch(SQLException e)
{
	out.println(e);
}
%>
<!-- <div class = "col-md-6" style = "position:absolute; top: 80px;left: 500px;">
	<form action="" method = "post">
		<div class = form-group>
			<label for = "amt_data">Amount</label>
			<input type = "number" class = "form-control" id = "amt_data" name = "amount">
		</div>
		<div class = "form-group">
			<input type = "submit" value = "Deposit" class = "btn btn-success">
		</div>
	</form>
</div> -->
</body>
</html>