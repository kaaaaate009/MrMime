<!DOCTYPE HTML>
<html>
    <head>
        <title>Theory | ALGranth</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="queue.css">
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
					<li><a href="admin_index.jsp">Admin Portal</a></li>

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
        <div class="queue" style="text-align: justify">
            <div class="header">
            
                <h2>Queue</h2>
                
                 <hr>
                <p style="font-size :25px;	">A Queue is a linear structure which follows a particular order in which the operations are performed. The order is First In First Out (FIFO). A good example of a queue is any queue of consumers for a resource where the consumer that came first is served first. The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.
                
                <hr>
                <p style="font-size :25px;	">The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.
                
                <hr>
                <p style="font-size :25px;	">Operations on Queue:</p>
				<p style="font-size :25px;	">Mainly the following four basic operations are performed on queue:
				<p style="font-size :25px;	">Enqueue: Adds an item to the queue. If the queue is full, then it is said to be an Overflow condition.
				<p style="font-size :25px;	">Dequeue: Removes an item from the queue. The items are popped in the same order in which they are pushed. If the queue is empty, then it is said to be an Underflow condition.</p>
				<p style="font-size :25px;	">Front: Get the front item from queue.
				<p style="font-size :25px;	">Rear: Get the last item from queue.
		
		        <hr>
		        <p style="font-size :25px;	">Applications of Queue:
		        <p style="font-size :25px;	">Queue is used when things don’t have to be processed immediatly, but have to be processed in First InFirst Out order like Breadth First Search. This property of Queue makes it also useful in following kind of scenarios.
                <p style="font-size :25px;	">1) When a resource is shared among multiple consumers. Examples include CPU scheduling, Disk Scheduling.
                <p style="font-size :25px;	">2) When data is transferred asynchronously (data not necessarily received at same rate as sent) between two processes. Examples include IO Buffers, pipes, file IO, etc.

                <hr>
                <p style="font-size :25px;	">Array implementation Of Queue:
				<p style="font-size :25px;	">For implementing queue, we need to keep track of two indices, front and rear. We enqueue an item at the rear and dequeue an item from front. If we simply increment front and rear indices, then there may be problems, front may reach end of the array. The solution to this problem is to increase front and rear in circular manner.

		
                
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