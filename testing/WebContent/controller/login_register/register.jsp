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
								rs = db.execSQL("select * from user_details where email_id = '" + ar.getEmail_id() + "' ");
								String duplicate = null;
								
								while (rs.next()) {
									duplicate = rs.getString("email_id");
								}
								
								if (duplicate == null) {
									String qr = "insert into user_details(username,email_id,pwd)values('" + ar.getUsername()
											+ "','" + ar.getEmail_id() + "','" + ar.getPwd() + "')";
									i = db.updateSQL(qr);
									if (i > 0) {
										session.setAttribute("userid", ar.getEmail_id());
										System.out.println("-----Registration Successful-----");
										response.sendRedirect("../../user/getStarted.jsp");

									} else {
										System.out.println("-----Registration Unccessful-----");
										response.sendRedirect(
												"../../user/index.jsp?cred=Registration+Failed+Please+Try Again");
									}
								} else {
									response.sendRedirect("../../user/index.jsp?cred=User with the same Email Id already exist");
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