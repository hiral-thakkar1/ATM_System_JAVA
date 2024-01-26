<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "common_file.jsp" %>

<div class = "col-md-6" style = "position:absolute; top:80px; left:500px;">
	<form  method = "post" action = "withdraw.jsp">
		<div class = "form-group">
			<label for = "amt_data">Amount</label>
			<input type = "number" class = "form-control" id = "amt_data" name = "amount">
		</div>
		<div class = "form-group">
			<input type = "submit" value = "withdraw" class = "btn btn-success">
		</div>
	</form>
</div>
</body>
</html>