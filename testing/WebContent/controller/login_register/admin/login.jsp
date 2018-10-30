<%@page import="user.login"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%!ResultSet rs = null;
	int i;
	String qr;%>
</head>
<body>
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
			<%
				try {
							if (request.getParameter("btn_login") != null) {

								db.connect();
								System.out.println("-----CONNECTED TO DATABASE-----");
								rs = db.execSQL("select * from admin_details where email_id='" + request.getParameter("email_id")
										+ "' and pwd='" + request.getParameter("pwd") + "'");
								if (rs.next()) {
									session.setAttribute("adminid", request.getParameter("email_id"));
									//out.println("welcome " + userid);
									//out.println("<a href='logout.jsp'>Log out</a>");
									System.out.print("-----Login Successful-----");
									response.sendRedirect("../../../user/adminpanel.jsp");
								} else {
									System.out.print("-----Login Unccessful-----");
									response.sendRedirect("../../../user/admin_index.jsp?cred=Invalid+Credintials+Please+Try+Again");
								}
								db.close();
							}
						} catch (Exception ex) {
							out.println("Unable to connect to database " + ex);
						}
			%>
	</jsp:useBean>
</body>
</html>