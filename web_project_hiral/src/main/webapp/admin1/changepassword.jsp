<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking System</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script type = "text/javascript"src="/js/jquery-3.7.1.min.js"></script>
<script type = "text/javascript"src="/js/jquery.validate.min.js"></script>

<style>
body{

width:100%;

overflow-x:hidden;
}
</style>
</head>
<body>

<div class = "container">

<div class = "row mx-5 my-5 border p-5 border-secondary" style = "border-redius:10px;background-color:whitesmoke;">

<div class = "col-md-8 offset-md-2">

<h2 class = "text-center">Reset Your Password</h2>

<form action="" method = "POST">

<div class ="form-group">

<label for ="oldpassword">Old password</label>

<input type = "password" class="form-control" id ="oldpassword" name = "opsw" placeholder = "Enter new password here">

<br>
<br>

<div class ="form-group">

<label for ="password">New password</label>

<input type = "password" class="form-control" id ="password" name = "npsw" placeholder = "Enter new password here">

<br>
<br>

<label for ="c_password">Confirm password</label>

<input type = "password" class="form-control" id ="c_password" name = "cpsw" placeholder = "Enter new password here">

<br>
<br>

<input type ="submit">
</div>
</form>

</div>

</div>

</div>

<%
try

{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiral_atm","root","");
	
	Statement s = con.createStatement();
	
	String opsw = request.getParameter("opsw");
	
	if(opsw != null)
	{
		String email = (String)session.getAttribute("adminemail");
		ResultSet rs = s.executeQuery("select * from admin1 where password ='"+opsw+"' ");
		
		
		if(rs.next())
			
		{
			String npsw = request.getParameter("npsw");
			String cpsw = request.getParameter("cpsw");
			
			if(npsw.compareTo(cpsw)==0)
				
			{
				int i = s.executeUpdate("update admin1 set password = '"+npsw+"' where email = '"+email+"' ");
				
				if(i > 0)
				{
					%>
					<script>
					
						alert('password changed successfully.....');
						window.location = 'commonpage.jsp';
					</script>
					<%
					
				}
				else
					
				{
					%>
					<script>
					
					alert('password can"t changed successfully.....');
					window.location = 'changepassword.jsp';
					</script>
					
					<%
				}
			}
			
			else{
					%>
					
					<script>
					
						alert('password & confirm password both are not same');
						window.loction = 'changepassword.jsp';
					</script>
				<%
			}
		}
		else{
				
				%>
				<script>
				
					alert('Your old password is not match');
					window.location='changepassword.jsp';
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