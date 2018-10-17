
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
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../css/jquery.min.js"></script>
<script src="../css/bootstrap.min.js"></script>

<link href="../css/bootstrap1.css" rel="stylesheet">
<title>User Profile | ALGranth</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="profile.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="bootstrap-social-gh-pages/bootstrap-social.css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Anton"
	rel="stylesheet">
<link rel="shortcut icon" href="/favicon.ico">
<link rel="icon" sizes="16x16 32x32 64x64" href="/favicon/favicon.ico">
<link rel="icon" type="image/png" sizes="196x196"
	href="/favicon/favicon-192.png">
<link rel="icon" type="image/png" sizes="160x160"
	href="/favicon/favicon-160.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/favicon/favicon-96.png">
<link rel="icon" type="image/png" sizes="64x64"
	href="/favicon/favicon-64.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/favicon/favicon-32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/favicon/favicon-16.png">
<link rel="apple-touch-icon" href="/favicon/favicon-57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/favicon/favicon-114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/favicon/favicon-72.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/favicon/favicon-144.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/favicon/favicon-60.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/favicon/favicon-120.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/favicon/favicon-76.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/favicon/favicon-152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/favicon/favicon-180.png">
<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" content="/favicon/favicon-144.png">
<meta name="msapplication-config" content="/browserconfig.xml">
<meta name="viewport" content="initial-scale=1, maximum-scale=1" />
<!-- Chrome, Firefox OS and Opera -->
<meta name="theme-color" content="#24292e">
<!-- Windows Phone -->
<meta name="msapplication-navbutton-color" content="#24292e">
<!-- iOS Safari -->
<meta name="apple-mobile-web-app-status-bar-style" content="#24292e">
<%!ResultSet rs = null;
	int i;
	static String newusername, newpassword, submittedpassword, useremail, username, useroldpass;
	String qr1, qr2;
	PreparedStatement ps1, ps2;%>
</head>
<body>
	<!--NavBar-->
	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

				</div>

				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<!--<li class="active"><a href="#">Home</a></li>-->
						<li><a href="howtostart.jsp">How To Start</a></li>
						<li><a href="getStarted.jsp">Get Started</a></li>
						<li><a href="algorithm.jsp">Algorithms</a></li>
						<li><a href="data_structures.jsp">Data Structures</a></li>
						<li><a href="problems.jsp">MCQs</a></li>
						<li><a href="forum.jsp">Forum</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right ">

						<%
							try {

									db.connect();
									System.out.println("-----CONNECTED TO DATABASE-----");
									String var = (String) session.getAttribute("userid");
									rs = db.execSQL("select username from user_details where email_id='" + var + "'");

									while (rs.next()) {
						%>
						<li><a href="profile.jsp"> <%=rs.getString("username")%>
						</a></li>

						<%
							}
									db.close();
								} catch (Exception ex) {
									out.println("Unable to connect to database " + ex);
								}
						%>




						<li><a href="../controller/login_register/logout.jsp"><span
								class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
					</ul>

					<!--<div class = "search">
                        <form class="navbar-form navbar-right">
                            <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search algranth">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                            </div>
                        </form>
                    </div>-->

				</div>
			</div>

		</nav>
	</jsp:useBean>
	<%
		if (request.getParameter("cred") != null) {
	%>
	<script type="text/javascript">
	   			 var msg = "<%=request.getParameter("cred")%>";
		alert(msg);
	</script>
	<%
		}
	%>

	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
			System.out.println("-----CONNECTED TO DATABASE-----");
			String userid = (String) session.getAttribute("userid");
			qr1 = "select * from user_details where email_id='" + userid + "'";
			ps1 = con.prepareStatement(qr1);
			rs = ps1.executeQuery();
			while (rs.next()) {
				username = rs.getString("username");
				useroldpass = rs.getString("pwd");
				useremail = rs.getString("email_id");
			}

			newusername = request.getParameter("username");
			newpassword = request.getParameter("newpassword");
			submittedpassword = request.getParameter("oldpassword");
			System.out.println(newusername);
			System.out.println(newpassword);
			System.out.println(submittedpassword);
			System.out.println(useroldpass);
			if (newpassword != null) {

				if (useroldpass.equals(submittedpassword)) {
					Class.forName("com.mysql.jdbc.Driver");

					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");

					Statement st1 = con.createStatement();

					System.out.println("Tried changing password");
					qr2 = "update user_details set username= '" + newusername + "', pwd= '" + newpassword
							+ "' where email_id = '" + userid + "'";
					ps2 = con.prepareStatement(qr2);
					i = ps2.executeUpdate();
					response.sendRedirect("profile.jsp?cred=Password+changed+successfully");
				} else {
					response.sendRedirect("profile.jsp?cred=Password+change+unsuccessful");
				}

			}
		} catch (Exception ex) {
			out.println("Unable to connect to database " + ex);
		}
	%>


	<hr>
	<div style="margin-top: 60px;">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-sm-10">
					<h1>User Profile</h1>
				</div>
				<!--  >div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src=""></a></div-->
			</div>
			<div class="row">
				<div class="col-sm-3" style="margin-top: 45px;">
					<!--left col-->

					<ul class="list-group">
						<li class="list-group-item text-muted">Profile</li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong>Name</strong></span><%=username%></li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong>Email</strong></span><%=useremail%></li>


					</ul>
					<!-- >ul class="list-group">
						<li class="list-group-item text-right"><span
							class="pull-left"><strong>Allergie</strong></span>
							<button>edit</button>
							<div class="expandable form-group text-center"
								style="margin-top: 30px; width: 100%" data-count="1">
								<div class="row">
									<input name="name[]" type="text" id="name[]"
										placeholder="Allergia">
									<button class="btn add-more" id="add-more" type="button">+</button>
								</div>
							</div></li>


					</ul-->


				</div>
				<!--/col-3-->
				<div class="col-sm-9">

					<ul class="nav nav-tabs" id="myTab">
						<li class="active"><a href="#home" data-toggle="tab">Test
								results</a></li>
						<li><a href="#messages" data-toggle="tab">My Questions</a></li>						
						<li><a href="#settings" data-toggle="tab">Reset Password</a></li>
					</ul>

					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>Subject</th>
											<th>Marks scored</th>
											<th>Questions attempted</th>
											<th>%Accuracy</th>
										</tr>
									</thead>
									<tbody>

										<%
											Class.forName("com.mysql.jdbc.Driver");

											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
											PreparedStatement ps1;
											String userid = (String) session.getAttribute("userid");
											String qr1 = "select * from quizreport where userid = '" + userid + "'";
											ps1 = con.prepareStatement(qr1);
											rs = ps1.executeQuery();
											while (rs.next()) {
										%>
										<tr>
											<td><%=rs.getString("subject")%></td>
											<td><%=rs.getInt("score")%></td>
											<td><%=rs.getInt("attempted")%></td>
											<td><%=(double) ((double) rs.getInt("score") / (double) rs.getInt("attempted")) * 100%></td>
											<!-- >td><button type="button" data-toggle="modal" data-target="#edit" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></button></td-->
											<!-- >td><button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-eye-open"></span></button></td-->
										</tr>
										<%
											}
										%>

										<!-- >tr>
											<td colspan="12" class="hiddenRow"><div
													class="accordian-body collapse" id="demo1">
													<table class="table table-striped">
														<h1>Dettagli trattamento</h1>

														<tbody>
															<tr id='addr0'>
																<td></td>
																<td><input type="text" name='name0'
																	placeholder='Name' class="form-control" /></td>
																<td><input type="text" name='mail0'
																	placeholder='Mail' class="form-control" /></td>
																<td><input type="text" name='mobile0'
																	placeholder='Mobile' class="form-control" /></td>
															</tr>
															<tr id='addr1'></tr>
														</tbody>

													</table>
													<a id="add_row" class="btn btn-default pull-left">Aggiungi
														riga</a><a id='delete_row' class="pull-right btn btn-default">Elimina
														riga</a>

												</div></td>
										</tr-->



									</tbody>

								</table>
								<hr>
								<div class="row">
									<div class="col-md-6 col-md-offset-4 text-center">
										<ul class="pagination" id="myPager"></ul>
									</div>
								</div>
							</div>
							<!--/table-resp-->

							<!-- div id="edit" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">×</button>
											<h4 class="modal-title">Modifica dati per (servizio)</h4>
										</div>
										<div class="modal-body">
											<input id="fn" type="text" class="form-control" name="fname"
												placeholder="Prodotti utilizzati"> <input id="ln"
												type="text" class="form-control" name="fname"
												placeholder="Colori Utilizzati"> <input id="mn"
												type="text" class="form-control" name="fname"
												placeholder="Note">
										</div>
										<div class="modal-footer">
											<button type="button" id="up" class="nicebutton"
												data-dismiss="modal">Aggiorna</button>
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">Chiudi</button>
										</div>
									</div>
								</div>
							</div-->

							<hr>

						</div>
						<!--/tab-pane-->
						<div class="tab-pane" id="messages">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>Date & time</th>
											<th>Question</th>
										</tr>
									</thead>
									<tbody id="items">

										<%
											Class.forName("com.mysql.jdbc.Driver");

											Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
											PreparedStatement ps2;
											String userid1 = (String) session.getAttribute("userid");
											String qr2 = "select * from forum_question where usr_id = '" + userid1 + "'";
											System.out.println("UserID: " + userid1);
											ps1 = con.prepareStatement(qr2);
											rs = ps1.executeQuery();
											while (rs.next()) {
										%>
										<tr>
											<td><%=(rs.getString("date_time"))%></td>
											<td><a href="forum.jsp"><%=(rs.getString("question"))%></a></td>
										</tr>
										<%
											}
										%>



									</tbody>
								</table>
							</div>

						</div>
						<!--/tab-pane-->
						<div class="tab-pane" id="settings">


							<hr>
							<form class="form" action="profile.jsp" method="get"
								id="changepasswordform">
								<div class="form-group">

									<div class="col-xs-6">
										<label for="username"><h4>Username</h4></label> <input
											type="text" class="form-control" name="username"
											id="username" placeholder="Enter username">
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-6">
										<label for="oldpassword"><h4>Old password</h4></label> <input
											type="password" class="form-control" name="oldpassword"
											id="oldpassword" placeholder="Enter old password">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="newpassword"><h4>New passwprd</h4></label> <input
											type="password" class="form-control" name="newpassword"
											id="newpassword" placeholder="Enter new password">
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-12">
										<br>
										<button class="nicebutton" type="submit">Submit</button>
										<button class="btn btn-lg" type="reset">Clear</button>
									</div>
								</div>
							</form>
						</div>

					</div>
					<!--/tab-pane-->
				</div>
				<!--/tab-content-->

			</div>
			<!--/col-9-->
		</div>
		<!--/row-->
		</hr>
	</div>
	</div>
</body>
</html>