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

</head>
<body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	Statement s = con.createStatement();
	
	int id = Integer.parseInt(request.getParameter("id"));
	
	ResultSet rs = s.executeQuery("select * from user where id = "+id+" ");
%>

	<div class = "container">

		<div class = "row">

			<div class="col-md-8" style = "position:absolute;top:80px;left:300px;">

				<div class = "card mb-4">

					<div class = "card-header">

						<i class = "fas fa-table me-1"></i>

						<h4 class = "text-center text-denger">Account Details</h4>

					</div>

	<div class = "card-body">

		<table id = "datatableSimple" class = "table table-striped">

			<thead class = "thead-dark">

				<tr>

					<th scope = "col">ID</th>

					<th scope = "col">Name</th>

					<th scope = "col">Atm_pin</th>

					<th scope = "col">Account_no</th>

					<th scope = "col">Balance</th>

					<th scope = "col">Contact_no</th>

				</tr>

			</thead>

<%
while(rs.next())
	
{
%>

	<tbody>
	
	<tr>
	
		<td><%=rs.getInt(1)%></td>
	
		<td><%=rs.getString(2)%></td>
	
		<td><%=rs.getInt(3)%></td>
	
		<td><%=rs.getInt(4)%></td>
	
		<td><%=rs.getInt(5)%></td>
	
		<td><%=rs.getString(6)%></td>
	
	</tr>
	
	</tbody>
	
	<%
	}
	
	con.close();
	%>
			</table>
	
					</div>
	
				</div>
	
			</div>
	
		</div>
	
	</div>

<%
}

catch(SQLException e)
{
	out.println(e);
}
%>
</body>
</html>