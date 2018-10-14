<html>
<head>
<%@page import="user.login"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!ResultSet rs = null;
		int i;
		static String newusername,newpassword,submittedpassword,useremail,username,useroldpass;
		String qr1,qr2;
		PreparedStatement ps1,ps2;
%>
<title>Admin Panel</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../css/jquery.min.js"></script>
<script src="../css/bootstrap.min.js"></script>
<link rel="stylesheet" href="profile.css">
<link rel="stylesheet"
	href="bootstrap-social-gh-pages/bootstrap-social.css">
<!-- link rel="stylesheet" href=../font-awesome/css/font-awesome.min.css"-->

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
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
					<a class="navbar-brand" href="getStarted.jsp"><img
						src="homepageLogo1.png"></a> <a class="navbar-brand-mobile"
						href="getStarted.jsp"><img src="homepageLogo1.png"></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					
					<ul class="nav navbar-nav navbar-right ">

						<%
							try {

									db.connect();
									System.out.println("-----CONNECTED TO DATABASE-----");
									String var = (String) session.getAttribute("userid");
									rs = db.execSQL("select username from admin_details where username='" + var + "'");

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
						db.connect();
						Class.forName("com.mysql.jdbc.Driver");
	
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
						System.out.println("-----CONNECTED TO DATABASE-----");
						String userid = (String) session.getAttribute("userid");
						qr1="select * from admin_details where username='" + userid + "'";
						ps1=con.prepareStatement(qr1);
						rs=ps1.executeQuery();
						while (rs.next()) {
							username = rs.getString("username");
							useroldpass = rs.getString("pwd");						}
						
						newusername=request.getParameter("username");
						newpassword=request.getParameter("newpassword");
						submittedpassword=request.getParameter("oldpassword");
						System.out.println(newusername);
						System.out.println(newpassword);
						System.out.println(submittedpassword);
						System.out.println(useroldpass);
						db.close();
						if(newpassword!=null)
						{
							
							if(useroldpass.equals(submittedpassword))
							{
								Class.forName("com.mysql.jdbc.Driver");
	
								con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
	
								Statement st1 = con.createStatement();
	
								System.out.println("Tried changing password");
								qr2="update admin_details set username= '"+ newusername + "', pwd= '"+newpassword+"' where email_id = '"+ userid + "'" ;
								ps2=con.prepareStatement(qr2);
								i=ps2.executeUpdate();
								response.sendRedirect("profile.jsp?cred=Password+changed+successfully");
							}
							else
							{	
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
					<h1>Admin Panel</h1>
				</div>
				<!--  >div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src=""></a></div-->
			</div>
			<div class="row">
				<div class="col-sm-3" style="margin-top: 45px;">
					<!--left col-->

					<ul class="list-group">
						<li class="list-group-item text-muted">Admin Profile</li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong>Userame</strong></span><%=username %></li>


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
						<li><a href="#messages" data-toggle="tab">Questions</a></li>
						<li><a href="#settings" data-toggle="tab">Reset Password</a></li>
					</ul>

					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>User</th>
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
	                	String qr1="select * from quizreport order by userid";
	                	ps1=con.prepareStatement(qr1);
	                	rs=ps1.executeQuery();
	                	while(rs.next())
	                	{
	                		%>
										<tr>
											<td><%=rs.getString("userid") %></td>
											<td><%=rs.getString("subject") %></td>
											<td><%=rs.getInt("score") %></td>
											<td><%=rs.getInt("attempted") %></td>
											<td><%=(double)((double)rs.getInt("score")/(double)rs.getInt("attempted"))*100 %></td>
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
											<th>User</th>
											<th>Question</th>
										</tr>
									</thead>
									<tbody id="items">

										<%
	                		Class.forName("com.mysql.jdbc.Driver");
		                	
		                	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
		                	PreparedStatement ps2;
		                	String question = (String) session.getAttribute("userid");
		                	String qr2="select * from forum_question order by usr_id";
		                	ps1=con.prepareStatement(qr2);
		                	rs=ps1.executeQuery();
		                	while(rs.next())
		                	{
	                	%>
										<tr>
											<td><%=rs.getString("date_time") %>></td>
											<td><%=rs.getString("usr_id") %>
											<td><%=rs.getString("question") %></td>
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



