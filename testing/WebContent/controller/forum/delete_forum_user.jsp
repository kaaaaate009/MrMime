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
					if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
						response.sendRedirect("../../user/index.jsp?cred=You+are+not+logged+in");
					}
						db.connect();
						System.out.println("-----CONNECTED TO DATABASE-----");
						String qr="delete from forum_question where q_id="+request.getParameter("cred");
						i = db.updateSQL(qr);
						
						if (i > 0) {
							System.out.println("-----Deletd-----");
							response.sendRedirect("../../user/profile.jsp?cred=Deleted");

						} else {
							System.out.println("-----Failed to Post-----");
							response.sendRedirect("../../user/profile.jsp?cred=Failed to Delete");
						}

						db.close();
				} catch (Exception ex) {
					out.println("Unable to connect to database " + ex);
				}
		%>
	</jsp:useBean>

</body>
</html>