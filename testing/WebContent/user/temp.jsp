<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="../controller/forum/temp.jsp" method="post">
		<input type="text" name="question"> 
		<input type="text"
			name="description">
		<button type="submit" name="btn_reg">Post</button>
	</form>
</body>
</html>