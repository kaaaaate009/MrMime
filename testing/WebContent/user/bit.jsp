<!DOCTYPE HTML>
<html>
    <head>
        <title>Theory | ALGranth</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="bit.css">
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
					<li class="active"><a href="algorithm.jsp">Algorithms</a></li>
					<li><a href="data_structures.jsp">Data Structures</a></li>
					<li><a href="problems.jsp">MCQs</a></li>
					<li><a href="forum.jsp">Forum</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right ">
					<li><a href="#" data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
				</ul>
			
			</div>
		</div>
	</nav>
        <!-- Algorithms -->
        <div class="bit" style="text-align: justify; margin-right: 5%">
            <div class="header">
                <h2>Bit Manipulation Algorithms</h2>
                <hr>
                <p style="font-size :25px;	">
Operations with bits are used in Data compression (data is compressed by converting it from one representation to another, to reduce the space) ,Exclusive-Or Encryption (an algorithm to encrypt the data for safety issues). In order to encode, decode or compress files we have to extract the data at bit level. Bitwise Operations are faster and closer to the system and sometimes optimize the program to a good level.</p>
<hr>
<p style="font-size :25px;	">Bitwise Operators:

There are different bitwise operations used in the bit manipulation. These bit operations operate on the individual bits of the bit patterns. Bit operations are fast and can be used in optimizing time complexity. Some common bit operators are:</p>

<p style="font-size :25px;	">NOT ( ~ ): Bitwise NOT is an unary operator that flips the bits of the number 
<p style="font-size :25px;	">AND ( & ): Bitwise AND is a binary operator that operates on two equal-length bit patterns. 
<p style="font-size :25px;	">OR ( | ): Bitwise OR is also a binary operator that operates on two equal-length bit patterns
<p style="font-size :25px;	">XOR ( ^ ): Bitwise XOR also takes two equal-length bit patterns. If both bits in the compared position of the bit patterns are 0 or 1, the bit in the resulting bit pattern is 0, otherwise 1.

<p style="font-size :25px;	">Left Shift ( << ): Left shift operator is a binary operator which shift the some number of bits, in the given bit pattern, to the left and append 0 at the end. Left shift is equivalent to multiplying the bit pattern with 2k ( if we are shifting k bits ).


<p style="font-size :25px;	">Right Shift ( >> ): Right shift operator is a binary operator which shift the some number of bits, in the given bit pattern, to the right and append 1 at the end. Right shift is equivalent to dividing the bit pattern with 2k ( if we are shifting k bits ).

<hr>
<p style="font-size :25px;	">Examples:
<p style="font-size :25px;	">1.Detect if two integers have opposite signs
<p style="font-size :25px;	">2.Add 1 to a given number
<p style="font-size :25px;	">3.Multiply a given Integer with 3.5
<p style="font-size :25px;	">4.Turn off the rightmost set bit
<p style="font-size :25px;	">5.Find whether a given number is a power of 4 or not
<p style="font-size :25px;	">6.Compute modulus division by a power-of-2-number
<p style="font-size :25px;	">7.Rotate bits of a number
<p style="font-size :25px;	">8.Find the Number Occurring Odd Number of Times
<p style="font-size :25px;	">9.Check for Integer Overflow
<p style="font-size :25px;	">10.Count set bits in an integer
<p style="font-size :25px;	">11.Count number of bits to be flipped to convert A to B
<p style="font-size :25px;	">12.Efficient way to multiply with 7
<p style="font-size :25px;	">13.Program to find whether a no is power of two
<p style="font-size :25px;	">14.Find XOR of two number without using XOR operator </p>
                
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
                                
                            </div>
                        </form>
                    </div>
                </div>     
            </div>
        </div>
        
     

    </body>
</html>