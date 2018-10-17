<!DOCTYPE HTML>
<html>
<head>

<title>ALGranth</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="main.css">
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
</head>
<body>
	<!--NavBar-->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><img
					src="homepageLogo1.png"></a> <a class="navbar-brand-mobile"
					href="index.jsp"><img src="homepageLogo1.png"></a>
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
					<li><a href="#" data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-log-in"></span> Register</a></li>
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
	<!--Register-->
	<div class="jumbotron">
		<div class="register">
			<center>
				<h3>Log In</h3>
				<br>
			</center>
			<form action="../controller/login_register/login.jsp"
				method="post" class="form-horizontal">
				
				<br>
				<div class="form-group">
					<label class="control-label col-sm-4" for="email"></label>
					<div class="col-xs-3">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input type="email"
								class="form-control" id="email" placeholder="Email"
								name="email_id">
						</div>
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="control-label col-sm-4" for="pwd"></label>
					<div class="col-xs-3">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								class="form-control" id="pwd" placeholder="Password" name="pwd">
						</div>
					</div>
				</div>
				<br>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-10">
						<div class="subButton">
							<div class="col-xs-3">
								<button type="submit" class="btn btn-primary btn-block"
									name="btn_login">Log In and Start Coding!</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--Features-->
	<div class="jumbotron ">
		<div class="features">
			<div class="row">
				<div>
					<center>
						<h2>The Wikipedia for algorithms</h2>
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<!--<img src="algo.png">-->
						</div>
						<div class="col-sm-3">
							<h3>Get an in-depth understanding of logic behind each line
								of code.</h3>
						</div>
						<div class="col-sm-3"></div>
					</center>
				</div>
			</div>
			<hr class="features-hr">
		</div>
		<div class="features">
			<div class="row">
				<div>
					<center>
						<h2>Practice from a vast array of problems</h2>
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<!--<img src="algo.png">-->
						</div>
						<div class="col-sm-3">
							<h3>
								Find a detailed explanation to every problem, accompanied by its
								most efficient solution.<br> <br>Each problem
								categorised on the basis of the algorithmic paradigm it is based
								on.
							</h3>
						</div>
						<div class="col-sm-3"></div>
					</center>
				</div>
			</div>
			<hr class="features-hr">
		</div>
		<div class="features">
			<div class="row">
				<div>
					<center>
						<h2>Learn and help others learn</h2>
						<div class="col-sm-3"></div>
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<h3>
								Contribute to our ever expanding library.<br> <br>Submit
								your unique solutions or articles and earn Karma!
							</h3>
						</div>
						<div class="col-sm-3"></div>
					</center>
				</div>
			</div>
			<hr class="features-hr">
		</div>
		<div class="features">
			<div class="row">
				<div>
					<center>
						<h2>Join the ALGranth Community</h2>
						<h3>Become an ALGranth Guru</h3>
					</center>
				</div>
			</div>
		</div>
	</div>
	<!--Quotes-->
	<div class="jumbotron">
		<div class="quotes">
			<div class="row">
				<div class="col-md-5">
					<center>
						<h3>"Everyone should know how to program a computer, because
							it teaches you how to think."</h3>
					</center>
					<center>
						<h3>- STEVE JOBS</h3>
					</center>
				</div>
				<div class="vertical-line"></div>
				<div class="col-md-5">
					<center>
						<h3>"Programming is a skillset acquired by practice and
							example rather than from books."</h3>
					</center>
					<center>
						<h3>- ALAN TURING</h3>
					</center>
				</div>
			</div>
		</div>
		<div class="quotes-mobile">
			<div>
				<center>
					<h3>"Everyone should know how to program a computer, because
						it teaches you how to think."</h3>
				</center>
				<center>
					<h3>- STEVE JOBS</h3>
				</center>
			</div>
			<br>
			<hr class="quotes-hr">
			<br>
			<div>
				<center>
					<h3>"Programming is a skillset acquired by practice and
						example rather than from books."</h3>
				</center>
				<center>
					<h3>- ALAN TURING</h3>
				</center>
			</div>
		</div>

		<div class="quotes-tablet">
			<div>
				<center>
					<h3>"Everyone should know how to program a computer, because
						it teaches you how to think."</h3>
				</center>
				<center>
					<h3>- STEVE JOBS</h3>
				</center>
			</div>
			<br>
			<hr class="quotes-hr">
			<br>
			<div>
				<center>
					<h3>"Programming is a skillset acquired by practice and
						example rather than from books."</h3>
				</center>
				<center>
					<h3>- ALAN TURING</h3>
				</center>
			</div>
		</div>

	</div>
	<!--Footer-->
	<div class="jumbotron">
		<div class="footer row">
			<div class="col-sm-1 "></div>
			<div class="col-sm-2">
				<h4 class="footerheadpad">Algranth</h4>
				<ul class="ulfooter">
					<li><a href=#>Home</a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h4 class="footerheadpad">About</h4>
				<ul class="ulfooter">
					<li><a href=#>About Us</a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h4 class="footerheadpad">Help</h4>
				<ul class="ulfooter">
					<li><a href="getStarted.jsp">Get Started</a></li>
					<li><a href=#>Contact Us</a></li>
				</ul>
			</div>
			<div class="row footercopyright">
				<center>
					<span class="col-sm-6">&copy; 2018 Best Mini Project of IT,
						All Rights Reserved.</span>
				</center>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
			
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<center>
						<h4 class="modal-title">Register</h4>
					</center>
				</div>
				<div class="modal-body">
					<form action="../controller/login_register/register.jsp"
						class="form-horizontal">
						<div class="form-group">
					<label class="control-label col-sm-4" for="name"></label>
					<div class="col-sm-offset-3 col-sm-6">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" id="name" placeholder="Name"
								name="username">
						</div>
					</div>
				</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input type="email"
										class="form-control" id="email" placeholder="Email ID "
										name="email_id">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-6">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" id="pwd" placeholder="Password"
										name="pwd">
								</div>
							</div>
						</div>
					<!--  	<div class="form-group">
							<div class="col-sm-offset-1 col-sm-10">
								<div class="checkbox">
									<center>
										<label><input type="checkbox">Remember me</label>
									</center>
								</div>
							</div>
						</div>
					-->
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-6">
								<center>
									<button type="submit" class="btn btn-primary btn-block"
										name="btn_reg">Register</button>
								</center>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
