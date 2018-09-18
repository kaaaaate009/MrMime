<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("u_name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pass");
		out.println("Welcome " + name + " your email is " + email);
		out.println("Your Password is : " + pwd);

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "password");

		Statement st = con.createStatement();

		int i = st.executeUpdate("insert into user_details(username,email_id,pwd)values('" + name + "','" + email
				+ "','" + pwd + "')");
	%>
</body>
</html>