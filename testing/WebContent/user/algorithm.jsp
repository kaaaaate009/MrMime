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
<title>Theory | ALGranth</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="algorithm.css">
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
	String qr;%>
	
	        <style>div.algorithm{text-align:justify}</style>
	
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
				<a class="navbar-brand" href="getStarted.jsp"><img
					src="homepageLogo1.png"></a> <a class="navbar-brand-mobile"
					href="getStarted.jsp"><img src="homepageLogo1.png"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<!--<li class="active"><a href="#">Home</a></li>-->
					<li><a href="howtostart.jsp">How To Start</a></li>
					<li><a href="getStarted.jsp">Get Started</a></li>
					<li class="active"><a href="algorithm.jsp">Algorithms</a></li>
					<li><a href="data_structures.jsp">Data Structures</a></li>
					<li><a href="problems.jsp">MCQs</a></li>
					<li><a href="forum.jsp">Forum</a></li>
					<li><a href="admin_index.jsp">Admin Portal</a></li>
				</ul>
				<%
					if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
					<li><a href="index.jsp">Register</a></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<jsp:useBean id="db" class="database.db" scope="request">
						<jsp:setProperty name="db" property="*" />
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
					</jsp:useBean>
					<li><a href="../controller/login_register/logout.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Log Out</a></li>

				</ul>
				<%
					}
				%>
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
	<!-- Algorithms -->
	<div class="algorithm">
		<div class="header">
			<h2>Algorithms</h2>
		</div>
		<hr class="sub-hr">
		<div class="grid">
			<div class="grid-column col-sm-3">
				<a href="#" data-toggle="modal" data-target="#algo_modal_searching">
					<div class="grid-element">
						<img src="../theory_icons/algo_search.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Searching</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_sorting">
					<div class="grid-element">
						<img src="../theory_icons/algo_sort.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Sorting</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_strings">
					<div class="grid-element">
						<img src="../theory_icons/algo_string.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Strings</h3>
					</div>
				</a>
			</div>
			<div class="grid-column col-sm-3">
				<a href="#" data-toggle="modal" data-target="#algo_modal_greedy">
					<div class="grid-element">
						<img src="../theory_icons/algo_greedy.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Greedy</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_graph">
					<div class="grid-element">
						<img src="../theory_icons/algo_graph.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Graph
							Theory</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_dp">
					<div class="grid-element">
						<img src="../theory_icons/algo_dp.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">DP</h3>
					</div>
				</a>
			</div>
			<div class="grid-column col-sm-3">
				<!--<center><hr class="element-hr"></center>-->
				<a href="#" data-toggle="modal"
					data-target="#algo_modal_constructive">
					<div class="grid-element">
						<img src="../theory_icons/algo_constructive.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Constructive</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_bm">
					<div class="grid-element">
						<img src="../theory_icons/algo_bits.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; padding-left: 10px; margin-top: 15px;">
							Bit<br>Manipulation
						</h3>
					</div>
				</a> <a href="#" data-toggle="modal" data-target="#algo_modal_recursion">
					<div class="grid-element">
						<img src="../theory_icons/algo_recursive.png"
							style="border-radius: 25px; float: left; margin-left: 5%; margin-top: 14px;">
						<h3
							style="vertical-align: middle; float: left; margin-top: 25px; padding-left: 10px;">Recursion</h3>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!--Footer-->
	<div style="margin-top: 19vh">
		<div class="jumbotron footer row">
			<div class="col-sm-4"></div>
			<div class="row footercopyright">
				<center>
					<span class="col-sm-4">&copy; 2017 Algranth, All Rights
						Reserved.</span>
				</center>
			</div>
			<div class="col-sm-4"></div>
			<span class="col-sm-6 footer-span"> <a href="index.html"
				class="footer-text">Home</a> <span> | </span> <a href=#
				class="footer-text">Contact Us</a> <span> | </span> <a
				href="aboutUs.html" class="footer-text">About Us</a> <span> |
			</span> <a href=# class="footer-text">Terms Of Service</a>
			</span>
		</div>
	</div>
	<!--Algorithms Modal-->
	<!--
	<div class="sub-modal">
			<div class="modal fade" id="algo_modal" role="dialog">
					<div class="modal-dialog">
							<div class="modal-content">
									<div class="modal-header">
											<center><h4 class="modal-title">Algorithm</h4></center>
									</div>
									<div class="modal-body">
									</div>
									<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											<a href="#"><button type="button" class="btn btn-default" style="float: left">Read More</button></a>
									</div>
							</div>
					</div>
			</div>
	</div>
	-->
	<!--Searching Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_searching" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Searching Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">In computer science, a search
						algorithm is any algorithm which solves the search problem,
						namely, to retrieve information stored within some data structure,
						or calculated in the search space of a problem domain. Examples of
						such structures include but are not limited to a linked list, an
						array data structure, or a search tree.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="Searching.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Sorting Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_sorting" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Sorting Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">Sorting refers to arranging data in a
						particular format. Sorting algorithm specifies the way to arrange
						data in a particular order. Most common orders are in numerical or
						lexicographical order.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="Sorting.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Strings Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_strings" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">String Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">A string is traditionally a sequence
						of characters, either as a literal constant or as some kind of
						variable. The latter may allow its elements to be mutated and the
						length changed, or it may be fixed (after creation). A string is
						generally considered a data type and is often implemented as an
						array data structure of bytes (or words) that stores a sequence of
						elements, typically characters, using some character encoding.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="Strings.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Greedy Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_greedy" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Greedy Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">A greedy algorithm, as the name
						suggests, always makes the choice that seems to be the best at
						that moment. This means that it makes a locally-optimal choice in
						the hope that this choice will lead to a globally-optimal
						solution.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="Greedy.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Graph Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_graph" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Graph Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">Graphs are used to represent networks
						of communication, data organization, computational devices, the
						flow of computation. A Graph is a non-linear data structure
						consisting of nodes and edges. The nodes are sometimes also
						referred to as vertices and the edges are lines or arcs that
						connect any two nodes in the graph.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="GraphTheory.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--DP Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_dp" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Dynamic Programming Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">Dynamic programming (usually referred
						to as DP ) is a very powerful technique to solve a particular
						class of problems. It demands very elegant formulation of the
						approach and simple thinking and the coding part is very easy. The
						idea is very simple, If you have solved a problem with the given
						input, then save the result for future reference, so as to avoid
						solving the same problem again.. shortly 'Remember your Past'.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="dp.jsp"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Constructive Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_constructive" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Constructive Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">It's an algorithm which builds
						something. A graph, an array, a matrix etc. It's what test
						generators use to build test cases.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="constructive.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--BM Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_bm" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Bit Manipulation Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">Working on bytes, or data types
						comprising of bytes like ints, floats, doubles or even data
						structures which stores large amount of bytes is normal for a
						programmer. In some cases, a programmer needs to go beyond this -
						that is to say that in a deeper level where the importance of bits
						is realized.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="bit.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Recursion Modal-->
	<div class="sub-modal">
		<div class="modal fade" id="algo_modal_recursion" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Recursive Algorithms</h4>
						</center>
					</div>
					<div class="modal-body">A recursive algorithm is an algorithm
						which calls itself with "smaller (or simpler)" input values, and
						which obtains the result for the current input by applying simple
						operations to the returned value for the smaller (or simpler)
						input. More generally if a problem can be solved utilizing
						solutions to smaller versions of the same problem, and the smaller
						versions reduce to easily solvable cases, then one can use a
						recursive algorithm to solve that problem. For example, the
						elements of a recursively defined set, or the value of a
						recursively defined function can be obtained by a recursive
						algorithm.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="recursion.jsp"><button type="button"
								class="btn btn-default" style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--DS Modal-->
	<!--
	<div class="ds-modal">
			<div class="modal fade" id="ds_modal" role="dialog">
					<div class="modal-dialog">
							<div class="modal-content">
									<div class="modal-header">
											<center><h4 class="modal-title">Data Structure</h4></center>
									</div>
									<div class="modal-body">
									</div>
									<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											<a href="#"><button type="button" class="btn btn-default" style="float: left">Read More</button></a>
									</div>
							</div>
					</div>
			</div>
	</div>
	-->
	<!--Arrays Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_arrays" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Arrays</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Linked Lists Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_ll" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Linked Lists</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Stack Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_stack" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Stack</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Queue Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_queue" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Queue</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Trees Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_trees" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Trees</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Graph Modal-->
	<div class="ds-modal">
		<div class="modal fade" id="ds_modal_graphs" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<center>
							<h4 class="modal-title">Graphs</h4>
						</center>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="#"><button type="button" class="btn btn-default"
								style="float: left">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal " id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<center>
						<h4 class="modal-title">Sign in</h4>
					</center>
				</div>
				<div class="modal-body">
					<form action="../controller/login_register/login.jsp"
						class="form-horizontal">
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
										name="btn_login">Sign in</button>
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
