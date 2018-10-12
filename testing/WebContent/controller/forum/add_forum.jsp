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
						String sqlDate = (new java.util.Date()).toString();
						String qr = "insert into forum_question(question,description,date_time,usr_id)values('"
								+ request.getParameter("question") + "','" + request.getParameter("description") + "','"
								+ sqlDate + "','" + session.getAttribute("userid")+"')";
						i = db.updateSQL(qr);
						if (i > 0) {
							System.out.println("-----Posted-----");
							response.sendRedirect("../../user/forum.jsp?cred=Posted");

						} else {
							System.out.println("-----Failed to Post-----");
							response.sendRedirect("../../user/forum.jsp?cred=Failed to Post");
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