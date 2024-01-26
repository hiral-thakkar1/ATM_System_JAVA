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
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	
	Statement s=con.createStatement();
	
	String email = request.getParameter("email");
	
	ResultSet rs = s.executeQuery("select * from admin1 where email = '"+email+"' ");
	
	if(rs.next())
	{
		String npsw = request.getParameter("npsw");
		String cpsw = request.getParameter("cpsw");
		
		if(npsw.compareTo(cpsw)==0)
		{
			int i = s.executeUpdate("update admin1 set password = '"+npsw+"'where email = '"+email+"' ");
			
			if(i > 0)
			{
				%>
				
				<script>
				
					alert('password changed successfully....');
					window.location='index.jsp';
				</script>
				
				<%
			}
		}
			else
			{
				
				%>
				
				<script>
				
					alert("password can't changed successfully.... ");
					window.location = 'forgetpassword.jsp';
				</script>
				
				<%
			}
		}
}
	
catch(SQLException e)
	{
		out.println(e);
	}
				
				%>
</body>
</html>