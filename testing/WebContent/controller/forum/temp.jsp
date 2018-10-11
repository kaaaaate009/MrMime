<%@page import="user.forum"%>
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
</head>
<body>
	<%!ResultSet rs = null;
	int i;%>
</head>
<body>
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<jsp:useBean id="ar" class="user.forum" scope="request">
			<jsp:setProperty name="ar" property="*" />
			<%
				try {
							System.out.println("-----CONNECTED TO DATABASE-----");
							String qr = "insert into forum_question(question,description)values('" + ar.getQuestion()
									+ "','" + ar.getDescription() + "')";
							i = db.updateSQL(qr);
							if (i > 0) {
								System.out.println("-----Posted-----");
								response.sendRedirect("../../user/problems.jsp?cred=Posted");

							} else {
								System.out.println("-----Failed to Post-----");
								response.sendRedirect("../../user/problems.jsp?cred=Failed to Post");
							}

						} catch (Exception ex) {
							out.println("Unable to connect to database " + ex);
						}
			%>
				}
			db.connect();
		</jsp:useBean>
	</jsp:useBean>
</body>
</html>