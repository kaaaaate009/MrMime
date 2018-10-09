<html>
<head>
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
</head>
<body style="background-color: #24292e;">
<%! String subject; 
	ResultSet rs=null;
	int score;
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
		
		
	}
%>
<div class="mcqs">
	<div class="box">
		<div class="question">Your score is  <%=score %></div>
	</div>
	<button type="submit" class="btn btn-primary btn-block" name="submit">Submit</button>
	<input type="reset" value="Clear Form">
</div>
</body>
</html>