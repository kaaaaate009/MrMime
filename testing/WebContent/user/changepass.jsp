<!DOCTYPE html>
<html>

<head>
<%@page import="user.login"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!ResultSet rs = null;
	int i;
	String userid,oldpass,newpass;
	String qr;%>
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<%
			try {
					db.connect();
					System.out.println("-----CONNECTED TO DATABASE-----");
					String userid = (String) session.getAttribute("userid");
					String oldpass= request.getParameter("oldpass");
					rs = db.execSQL("select * from user_details where email_id='" + userid + "'");
					while (rs.next()) {
						
					}
					db.close();
				} catch (Exception ex) {
					out.println("Unable to connect to database " + ex);
				}
		%>
		</jsp:useBean>
		


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #24292e;">



</body>
</html>