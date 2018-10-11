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
<style>
.nicebutton
{
	background-color: #336699;
	height: 40px;
	width: 80px;
	border: 1px solid #24292e;
	border-radius : 5px;
	color: white;
}
.nicebutton:active
{
	transform: translateY(3px);
	background-color: #24292e;
}
.nicebutton:hover
{
	background-color: #4488bb;
}
.userinfo
{
	border: 1px solid lightgray;
	border-radius: 20px;
	background-color: white;
	text-size: 23px;
	width: 30%;
	height: 350px;
}
.usertext
{
	!text-align: right;
	padding-top: 10px;
	padding-right: 10px;
	font-size: 23px;
}
img
{
	width: 100px;
	height: 100px;
	float: left;
	object-fit: cover;
}

</style>
<title>Insert title here</title>
<%!ResultSet rs = null;
	int i;
	String useremail,username,userpass;
	String qr;%>
</head>
<body style="background-color: #24292e;">

	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<%
			try {
					db.connect();
					System.out.println("-----CONNECTED TO DATABASE-----");
					String userid = (String) session.getAttribute("userid");
					rs = db.execSQL("select * from user_details where email_id='" + userid + "'");
					while (rs.next()) {
						username = rs.getString("username");
						userpass = rs.getString("pwd");
						useremail = rs.getString("email_id");
					}
					db.close();
				} catch (Exception ex) {
					out.println("Unable to connect to database " + ex);
				}
		%>
		<div>
			<div class="userinfo">
				<div class="usertext">	
					<img src="../icons/man-7-512.png">
						<%=username%>
						<%=useremail%><a href="changepass.jsp">
						<button class="nicebutton">Change password</button>
						</a>
				</div>
			</div>
		</div>
	</jsp:useBean>
	


</body>
</html>