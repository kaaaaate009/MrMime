
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML>
<html>
<head>
<title>ALGranth|Forum</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="forumMain.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="bootstrap-social-gh-pages/bootstrap-social.css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<%
	if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
		response.sendRedirect("index.jsp?cred=You+are+not+logged+in");
	}
%>
<%!ResultSet rs, rs2, rs3 = null;
	int id;
	int i;
	String qr;%>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="getStarted.jsp"><img
					src="homepageLogo1.png"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<!--<li class="active"><a href="#">Home</a></li>-->
					<li><a href="howtostart.jsp">How To Start</a></li>
					<li><a href="getStarted.jsp">Get Started</a></li>
					<li><a href="algorithm.jsp">Algorithms</a></li>
					<li><a href="data_structures.jsp">Data Structures</a></li>
					<li><a href="problems.jsp">MCQs</a></li>
					<li class="active"><a href="forum.jsp">Forum</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right ">
					<jsp:useBean id="db" class="database.db" scope="request">
						<jsp:setProperty name="db" property="*" />
						<%
							try {

									db.connect();
									System.out.println("-----CONNECTED TO DATABASE-----");
									String var = (String) session.getAttribute("userid");
									rs3 = db.execSQL("select username from user_details where email_id='" + var + "'");
									rs2 = db.execSQL(
											"select * from forum_question where q_id=" + request.getParameter("cred"));

									while (rs2.next()) {
										id = rs2.getInt("q_id");
									}
									while (rs3.next()) {
						%>
						<li><a href="profile.jsp"> <%=rs3.getString("username")%>
						</a></li>

						<%
							}
									db.close();
								} catch (Exception ex) {
									out.println("Unable to connect to database " + ex);
								}
						%>
					</jsp:useBean>

					<li><a href="../controller/login_register/logout.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<form action="../controller/forum/add_forum_answer.jsp?cred=<%=id%>"
			method="post" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-4" for="name"></label>
				<div class="col-xs-3">
					<div class="input-group">
						<input type="text" class="form-control" id="name"
							placeholder="Description" name="description">
					</div>
				</div>
			</div>
			<br>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<div class="subButton">
						<div class="col-xs-3">
							<button type="submit" class="btn btn-primary btn-block"
								name="btn_reg">Post</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<jsp:useBean id="db2" class="database.db" scope="request">
		<jsp:setProperty name="db2" property="*" />
		<%
			try {

					db2.connect();
					System.out.println("-----CONNECTED TO DATABASE-----");
					rs = db2.execSQL("select * from forum_question where q_id=" + request.getParameter("cred"));

					while (rs.next()) {
						int q = rs.getInt("q_id");
						rs2 = db2.execSQL("select distinct answer from forum_answer a , forum_question q where '" + q
								+ "' = a.q_id");
		%>
		<div class="jumbotron">
			<p>
				<%=rs.getString("question")%>
				<%=rs.getString("date_time")%>

			</p>
		</div>

		<%
			while (rs2.next()) {
		%>
		<div class="jumbotron">
			<p>
				<%=rs2.getString("answer")%>

			</p>
		</div>
		<%
			}
					}
					db2.close();
				} catch (Exception ex) {
					out.println("Unable to connect to database " + ex);
				}
		%>
	</jsp:useBean>
</body>
</html>