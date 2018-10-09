<%@page import="user.register"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%!ResultSet rs = null;
	int i;%>
</head>
<body>
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<jsp:useBean id="ar" class="user.register" scope="request">
			<jsp:setProperty name="ar" property="*" />
			<%
				try {
							if (request.getParameter("btn_reg") != null) {
								db.connect();
								System.out.println("-----CONNECTED TO DATABASE-----");
								String qr = "insert into user_details(username,email_id,pwd)values('" + ar.getUsername() + "','"
										+ ar.getEmail_id() + "','" + ar.getPwd() + "')";
								i = db.updateSQL(qr);
								if (i > 0) {
									session.setAttribute("userid", ar.getEmail_id());
									System.out.print("-----Registration Successful-----");
									response.sendRedirect("../../user/homepage.jsp");

								} else {
									System.out.print("-----Registration Unccessful-----");
									response.sendRedirect("../../user/index.jsp");
								}
								db.close();
							}
						} catch (Exception ex) {
							out.println("Unable to connect to database " + ex);
						}
			%>
		</jsp:useBean>
	</jsp:useBean>
</body>
</html>