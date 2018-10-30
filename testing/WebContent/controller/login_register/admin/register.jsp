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
<%!ResultSet rs, rs2 = null;
	int i;%>
</head>
<body>
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<%
			try {
					if (request.getParameter("btn_reg") != null) {
						db.connect();
						System.out.println("-----CONNECTED TO DATABASE-----");
						String duplicate = null;
						rs2 = db.execSQL("select * from security_codes where code=" + request.getParameter("code"));
						while (rs2.next()) {
							duplicate = rs2.getString("code");
						}
						if (duplicate != null) {
							duplicate = null;
							rs = db.execSQL("select * from admin_details where email_id = '"
									+ request.getParameter("email_id") + "' ");

							while (rs.next()) {
								duplicate = rs.getString("email_id");
							}

							if (duplicate == null) {
								String qr = "insert into admin_details(username,email_id,pwd)values('"
										+ request.getParameter("username") + "','" + request.getParameter("email_id")
										+ "','" + request.getParameter("pwd") + "')";
								i = db.updateSQL(qr);
								if (i > 0) {
									session.setAttribute("adminid", request.getParameter("email_id"));
									System.out.println("-----Registration Successful-----");
									response.sendRedirect("../../../user/adminpanel.jsp");

								} else {
									System.out.println("-----Registration Unccessful-----");
									response.sendRedirect(
											"../../../user/admin_index.jsp?cred=Registration+Failed+Please+Try Again");
								}
							} else {
								response.sendRedirect(
										"../../../user/admin_index.jsp?cred=User with the same Email Id already exist");
							}
						} else {
							response.sendRedirect("../../../user/admin_index.jsp?cred=if failed");

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