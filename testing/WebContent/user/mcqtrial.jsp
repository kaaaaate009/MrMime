<html>
<head>
<title>multiple-choice quiz form</title>

<style>

.mcqs
{
	background-color: #24292e;
	font-family: 'Varela Round', sans-serif;
	margin: 0%;
	padding: 0%;
}

.box
{
			margin-top: 8%;
			background-color: white;
    	border: 1px solid lightgray;
    	border-radius: 10px;
			margin-bottom: 5%;
			margin-left: 10%;
			margin-right: 12%;
}
.question
{
			padding-top: 10%;
			color: #24292e;
			font-size: 20px;
			margin-left: 5%;
			border-bottom: 1px solid lightgray;
			margin-right: 10%;
			padding-top: 3%;
			padding-bottom: 2%;
}

.option{
	margin: 1%;
	padding: 5px;
	border: 1px solid lightgray;
}
</style>
</head>
<body style="background-color: #24292e;">

<div class="mcqs">
	<form method="post" action="mailto:raizen@mail.utexas.edu?subject=Vocabulary Quiz 1" enctype="text/plain">
	<div class="box">
		<div class="question">1. The word which means "house" is:</div>
			<div class= "option"><input type="radio" name="1.The word which means house is" value="maison">maison<BR></div>
			<div class= "option"><input type="radio" name="1.The word which means house is" value="maison">maison<BR></div>
			<div class= "option"><input type="radio" name="1.The word which means house is" value="maison">maison<BR></div>
			<div class= "option"><input type="radio" name="1.The word which means house is" value="maison">maison<BR></div>
	</div>
	<button type="submit" class="btn btn-primary btn-block"
									name="submit">Submit</button>
	<input type="reset" value="Clear Form">
	</form>
</div>
</body>
</html>
