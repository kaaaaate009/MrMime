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
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/users", "root", "");

		Statement st = con.createStatement();

		String query = "select * from userpass";
		try {
			ResultSet rs = st.executeQuery(query);
			ResultSet r = null;
			while (rs.next())

			{
	%>

	<table border="2" bordercolor="#2494b7">
		<tr>
			<th>UserName</th>
			<th>Password</th>
		</tr>

		<tr>
			<td><%=rs.getString("ID")%></td>
			<td><%=rs.getString("password")%></td>
			<%
				query = "select * from user_details";
						r = st.executeQuery(query);
						while (rs.next()) {
			%>

			<table border="2" bordercolor="#2494b7">
				<tr>
					<th>UserName</th>
					<th>Password</th>
				</tr>
				<tr>
					<td><%=r.getString("email_id")%></td>
					<td><%=r.getString("pwd")%></td>
				</tr>
			</table>
			<%
				}
					}
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
		</tr>
	</table>

</body>
</html>