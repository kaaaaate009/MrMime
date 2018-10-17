<!DOCTYPE HTML>
<html>
    <head>
        <title>Theory | ALGranth</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="tree.css">
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
        <div class="tree"style="text-align: justify">
            <div class="header">
            
                <h2>Trees</h2>
                
                 <hr>
                <p style="font-size :25px;	">A tree data structure can be defined recursively (locally) as a collection of nodes (starting at a root node), where each node is a data structure consisting of a value, together with a list of references to nodes (the "children"), with the constraints that no reference is duplicated, and none points to the root.</p>
                
                <hr>
                <p style="font-size :25px;	">Binary Tree is a special datastructure used for data storage purposes. A binary tree has a special condition that each node can have a maximum of two children. A binary tree has the benefits of both an ordered array and a linked list as search is as quick as in a sorted array and insertion or deletion operation are as fast as in linked list.</p>
				
				<hr>
				<p style="font-size :30px;	">Important Terms:</p>
				<p style="font-size :25px;	">Following are the important terms with respect to trees:</p>

<ul style="font-size :25px;	"><li>Path - Path refers to the sequence of nodes along the edges of a tree.
<li>Root - The node at the top of the tree is called root. There is only one root per tree and one path from the root node to any node.
<li>Parent - Any node except the root node has one edge upward to a node called parent.
<li>Child - The node below a given node connected by its edge downward is called its child node.</li>
<li>Leaf - The node which does not have any child node is called the leaf node.
<li>Subtree - Subtree represents the descendants of a node.
<li>Visiting - Visiting refers to checking the value of a node when control is on the node.
<li>Traversing - Traversing means passing through nodes in a specific order.
<li>Levels - Level of a node represents the generation of a node. If the root node is at level 0, then its next child node is at level 1, its grandchild is at level 2, and so on.
<li>keys - Key represents a value of a node based on which a search operation is to be carried out for a node.</ul>
      
      <hr>
      <p style="font-size :25px;	">Binary Search Tree:</p>
      <p style="font-size :25px;	">Binary Search tree exhibits a special behavior. A node's left child must have a value less than its parent's value and the node's right child must have a value greater than its parent value.</p>
      
      <hr>
      <p style="font-size :25px;	">BST Basic Operations:</p>
<ul  style="font-size :25px;	" >           <li> Insert - Inserts an element in a tree/create a tree.
<li>Search - Searches an element in a tree.
<li>Preorder Traversal - Traverses a tree in a pre-order manner.
<li>Inorder Traversal - Traverses a tree in an in-order manner.
<li>Postorder Traversal - Traverses a tree in a post-order manner.</ul>
          
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