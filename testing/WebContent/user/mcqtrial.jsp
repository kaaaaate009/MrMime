<html>
<head>

<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
<%!ResultSet rs = null;
	int i;
	static int score=0;
	String qr;
	String ques,op1,op2,op3,op4,quid; %>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");

Statement st = con.createStatement();
			double ran=Math.round(Math.random())%3;
			ran+=1;
				
				qr="select * from questions where qid="+ran;
				rs=st.executeQuery(qr);
				rs.next();
				quid=rs.getString("qid");
				ques=rs.getString("que");
				op1=rs.getString("option1");
				op2=rs.getString("option2");
				op3=rs.getString("option3");
				op4=rs.getString("option4");
			%>

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
<title>
<%	String temp= request.getParameter("questionid");
	if (temp != null)
	{
		System.out.println(temp);
		int queid = Integer.parseInt(temp);
		String subans = request.getParameter("answer");
		Statement st2 = con.createStatement();
		String subject= "questions";
		String qr2 = "select count(*) as cnt from " + subject + " where qid =" + queid + " and ans = '" + subans +"'";

		rs = st2.executeQuery(qr2);
		rs.next();
		temp= rs.getString("cnt");
		System.out.println(score + " " + temp);
		score = Integer.parseInt(temp);
		System.out.println(" "+ score);
	}
%>
<%=score %></title>
</head>
<body style="background-color: #24292e;">

<div class="mcqs">
	<form method="post" action="mcqtrial.jsp" method="post">
	<div class="box">
		<div class="question"><% out.println(ques); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'A'><% out.println(op1); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'B'><% out.println(op2); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'C'><% out.println(op3); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'D'><% out.println(op4); %></div>
			<input type="text" name= "questionid" value="<%=quid %>">
	</div>
	<button type="submit" class="btn btn-primary btn-block"
									name="submit">Submit</button>
	<input type="reset" value="Clear Form">
	</form>
</div>
</body>
</html>
