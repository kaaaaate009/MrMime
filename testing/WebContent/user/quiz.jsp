<html>
<head>
<link rel="stylesheet" href="quiz.css">
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
<%!ResultSet rs = null;
	String subject;
	static int i=0,max=5;
	static int score=0;
	static int doneque[]=new int[max];
	String qr;
	String redirect;
	String ques,op1,op2,op3,op4,quid; %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mcq", "root", "admin");
	
	Statement st = con.createStatement();
	double ran;
		while(true)
		{
			ran=(int)(Math.random()*((5-1)+1))+1;
			System.out.println(ran);
			int flag=0;
			for(int j=0;j<i;j++)
			{
				if(ran==doneque[j]){flag=1;break;}
				
			}
			
			if(flag==0||i==0)
				break;
		}
		
			
		doneque[i++]=(int)ran;
		subject= request.getParameter("sub");
		qr="select * from " + subject + " where qid=" +ran;
		rs=st.executeQuery(qr);
		rs.next();
		quid=rs.getString("qid");
		ques=rs.getString("que");
		op1=rs.getString("option1");
		op2=rs.getString("option2");
		op3=rs.getString("option3");
		op4=rs.getString("option4");
%>


<title>
<%	String temp= request.getParameter("questionid");
	if (temp != null)
	{
		
		int queid = Integer.parseInt(temp);
		String subans = request.getParameter("answer");
		Statement st2 = con.createStatement();
		subject= request.getParameter("sub");
		String qr2 = "select count(*) as cnt from " + subject + " where qid =" + queid + " and ans = '" + subans +"'";

		rs = st2.executeQuery(qr2);
		rs.next();
		temp= rs.getString("cnt");
		score+= Integer.parseInt(temp);
	
		
	}
%>
<%=score %></title>
</head>
<body style="background-color: #24292e;">

<div class="mcqs">
	<form method="post" action="<%if(i==max)
		{
				redirect="score.jsp";
				i=0;
				
				
		}
		else redirect="quiz.jsp?sub="+subject;
			
	out.println(redirect);%>" >
	<div class="box">
		<div class="question"><% out.println(ques); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'A'><% out.println(op1); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'B'><% out.println(op2); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'C'><% out.println(op3); %></div>
			<div class= "option"><input type="radio" name="answer" value = 'D'><% out.println(op4); %></div>
			<input type="hidden" name= "questionid" value="<%=quid %>">
			<input type="hidden" name="score" value="<%=score %>">
			<input type="hidden" name="subject" value="<%=subject %>">
	
	<button type="submit" style="margin-left: 13px;" class="nicebutton" name="submit">Submit</button>
	<input type="reset" class="nicebutton" value="Clear Form">
	</div>
	</form>
</div>
</body>
</html>
