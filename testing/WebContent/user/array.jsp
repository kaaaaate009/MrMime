<!DOCTYPE HTML>
<html>
    <head>
        <title>Theory | ALGranth</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="array.css">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu|Varela+Round" rel="stylesheet">
        <link rel="stylesheet" href="bootstrap-social-gh-pages/bootstrap-social.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
        <link rel="shortcut icon" href="/favicon.ico">
        <link rel="icon" sizes="16x16 32x32 64x64" href="/favicon/favicon.ico">
        <link rel="icon" type="image/png" sizes="196x196" href="/favicon/favicon-192.png">
        <link rel="icon" type="image/png" sizes="160x160" href="/favicon/favicon-160.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/favicon/favicon-96.png">
        <link rel="icon" type="image/png" sizes="64x64" href="/favicon/favicon-64.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16.png">
        <link rel="apple-touch-icon" href="/favicon/favicon-57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/favicon/favicon-114.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/favicon/favicon-72.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/favicon/favicon-144.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/favicon/favicon-60.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/favicon/favicon-120.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/favicon/favicon-76.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/favicon/favicon-152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/favicon/favicon-180.png">
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
        <style>div.searching{text-align:justify}</style>
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
					<li ><a href="algorithm.jsp">Algorithms</a></li>
					<li class="active"><a href="data_structures.jsp">Data Structures</a></li>
					<li><a href="problems.jsp">MCQs</a></li>
					<li><a href="forum.jsp">Forum</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right ">
					<li><a href="#" data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
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
        <!-- Algorithms -->
        <div class="array" style="text-align:justify">
            <div class="header">
            
                <h2>Arrays</h2>
                
                 <hr>
                <p style="font-size :25px;	">In Array, each element can be uniquely identified by their index in the array (in a similar way as you could identify your friends by the step on which they were on in the above example).  
                <hr><p style="font-size :25px;	">Types of indexing in array:

<ul style="font-size :25px;	"><li>0 (zero-based indexing): The first element of the array is indexed by subscript of 0</li>
<li>1 (one-based indexing): The first element of the array is indexed by subscript of 1</li>
<li>n (n-based indexing): The base index of an array can be freely chosen. Usually programming languages allowing n-based indexing also allow negative index values and other scalar data types like enumerations, or characters may be used as an array index.</ul>
      <hr><p style="font-size :25px;	">Advantages of using arrays:</p>

<ul  style="font-size :25px;	" ><li>Arrays allow random access of elements. This makes accessing elements by position faster.</li>
<li>Arrays have better cache locality that can make a pretty big difference in performance.            </li></ul>
                <p style="font-size :25px;	">Usually, an array of characters is called a 'string', whereas an array of ints or floats is called simply an array.
  <hr><p style="font-size :25px;	">Basic Array Operations:</p>
    <ul style="font-size :25px;	"><li>Traverse - print all the array elements one by one.</li>

<li>Insertion - Adds an element at the given index.</li>

<li>Deletion - Deletes an element at the given index.</li>

<li>Search - Searches an element using the given index or by the value.</li>

<li>Update - Updates an element at the given index.</li></ul>
                  
                
                <p>
                
                </p>
            </div>
        </div>
       
        <!--Footer-->
        <div class="jumbotron footer row">
        	<div class = "col-sm-4"></div>
        	<div class="row footercopyright"><center><span class="col-sm-4">&copy; 2017 Algranth, All Rights Reserved.</span></center></div>
        	<div class = "col-sm-4"></div>
        	<span class="col-sm-6 footer-span">
        	<a href="index.html" class = "footer-text">Home</a>
        	<span> | </span>
        	<a href=# class = "footer-text">Contact Us</a>
        	<span> | </span>
 			<a href="aboutUs.html" class = "footer-text">About Us</a>  
        	<span> | </span>
        	<a href=# class = "footer-text">Terms Of Service</a>
        	</span>         
        </div>
                <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center><h4 class="modal-title">Sign in</h4></center>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">    	
                                <div class="col-sm-offset-3 col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input type="email" class="form-control" id="email" placeholder="Email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">  					
                                <div class="col-sm-offset-3 col-sm-6"> 
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input type="password" class="form-control" id="pwd" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group"> 
                                <div class="col-sm-offset-1 col-sm-10">
                                    <div class="checkbox">
                                      <center><label><input type="checkbox">Remember me</label></center>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group"> 
                                <div class="col-sm-offset-3 col-sm-6">
                                    <center><button type="submit" class="btn btn-primary btn-block">Sign in</button></center>
                                </div>
                                <hr class="signin-hr">
                                <div class="col-sm-offset-1 col-sm-5 loginbutt">
                                    <center><a class="btn btn-block btn-social btn-facebook"><span class="fa fa-facebook"></span>Sign in with Facebook</a>
                                    </center>
                                </div>
                                <div class="col-sm-5 loginbutt">
                                    <center><a class="btn btn-block btn-social btn-google"><span class="fa fa-google"></span>Sign in with Google</a>
                                    </center>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>     
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
                            <center><h4 class="modal-title">Searching Algorithms</h4></center>
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
        <!--Sorting Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_sorting" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Sorting Algorithms</h4></center>
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
        <!--Strings Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_strings" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">String Algorithms</h4></center>
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
        <!--Greedy Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_greedy" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Greedy Algorithms</h4></center>
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
        <!--Graph Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_graph" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Graph Algorithms</h4></center>
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
        <!--DP Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_dp" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Dynamic Programming Algorithms</h4></center>
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
        <!--Constructive Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_constructive" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Constructive Algorithms</h4></center>
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
        <!--BM Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_bm" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header"> 
                            <center><h4 class="modal-title">Bit Manipulation Algorithms</h4></center>
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
        <!--Recursion Modal-->
        <div class="sub-modal">
            <div class="modal fade" id="algo_modal_recursion" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Recursive Algorithms</h4></center>
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
                            <center><h4 class="modal-title">Arrays</h4></center>
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
        <!--Linked Lists Modal-->
        <div class="ds-modal">
            <div class="modal fade" id="ds_modal_ll" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Linked Lists</h4></center>
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
        <!--Stack Modal-->
        <div class="ds-modal">
            <div class="modal fade" id="ds_modal_stack" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Stack</h4></center>
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
        <!--Queue Modal-->
        <div class="ds-modal">
            <div class="modal fade" id="ds_modal_queue" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Queue</h4></center>
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
        <!--Trees Modal-->
        <div class="ds-modal">
            <div class="modal fade" id="ds_modal_trees" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Trees</h4></center>
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
        <!--Graph Modal-->
        <div class="ds-modal">
            <div class="modal fade" id="ds_modal_graphs" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <center><h4 class="modal-title">Graphs</h4></center>
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

    </body>
</html>