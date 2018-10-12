<html>
<head>

<style>
body {
	background-color: #24292e;
	font-family: 'Varela Round', sans-serif;
	margin: 0%;
	padding: 0%;
}

.box {
	height: 400px;
	margin-top: 8%;
	background-color: white;
	border: 1px solid lightgray;
	border-radius: 10px;
	margin-bottom: 5%;
	margin-left: 10%;
	margin-right: 10%;
}

.result {
	border-radius: 10px;
	text-align: center;
	border: 1px solid lightgray;
	margin-top: 5%;
	margin-bottom: 3%;
	color: #24292e;
	font-size: 20px;
	margin-left: 5%;
	border-bottom: 1px solid lightgray;
	margin-right: 5%;
	padding-top: 3%;
	padding-bottom: 2%;
}

.nicebutton {
	margin-left: 40%;
	margin-right: 30%;
	margin-top: 10px;
	margin-bottom: 10px;
	background-color: #336699;
	height: 80px;
	width: 20%;
	border: 1px solid #24292e;
	border-radius: 5px;
	color: white;
}

.nicebutton:active {
	transform: translateY(3px);
	background-color: #24292e;
}

.nicebutton:hover {
	background-color: #4488bb;
}
</style>
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
</head>
<body style="background-color: #24292e;">
<%! String subject, userid; 
	ResultSet rs=null;
	int score,max;
%>
<%	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mcq", "root", "admin");

	String temp= request.getParameter("questionid");
	
	if (temp != null)
	{
		
		int queid = Integer.parseInt(temp);
		String subans = request.getParameter("answer");
		Statement st2 = con.createStatement();
		subject= request.getParameter("subject");
		String qr2 = "select count(*) as cnt from " + subject + " where qid =" + queid + " and ans = '" + subans +"'";

		rs = st2.executeQuery(qr2);
		rs.next();
		temp= rs.getString("cnt");
		score= Integer.parseInt(request.getParameter("score"));
		score+= Integer.parseInt(temp);
		PreparedStatement ps=null;
		String qr=null;
		int max=Integer.parseInt(request.getParameter("noq"));
		String userid = (String) session.getAttribute("userid");
		Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
		qr="insert into quizreport (userid,subject,attempted, score) values ( '"+userid+"','"+subject+"','"+max+"','"+score+"')";
		ps=con2.prepareStatement(qr);
		ps.executeUpdate();
	}
%>
<body style="background-color: #24292e;">

<div class="">
	
	<div class="box">
		<div class="result">
		You have scored <%=score %> in <%=subject %>.
		
		</div>
			
	
	<a href="problems.jsp" ><button class="nicebutton">Ready for another round!</button></a>
	<a href="profile.jsp"><button class="nicebutton"> Take me my to profile</button></a>
	</div>

</div>
</body>
</html>