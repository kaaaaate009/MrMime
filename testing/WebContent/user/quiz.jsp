<html>
<head>
<link rel="stylesheet" href="quiz.css">
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Random" %>
<%!
	ResultSet rs = null;
	int max,score,i,quid,total;
	List <Integer> que=new ArrayList <Integer>();
	String subject,redirect;
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
	max = Integer.parseInt(request.getParameter("noq"));
	if(session.getAttribute("qlist")==null)
	{
		PreparedStatement ps;
		subject=request.getParameter("sub");
		String qr="select count(*) as cnt from questions where subject = '"+subject+"'";
		ps=con.prepareStatement(qr);
		rs=ps.executeQuery();
		rs.next();
		total=rs.getInt("cnt");
		qr="select qid from questions where subject = '" + subject + "'";
		ps=con.prepareStatement(qr);
		rs=ps.executeQuery();
		while(rs.next())
		{
			que.add(rs.getInt("qid"));
		}
		Random random = new Random();
		while(que.size() > max){
			que.remove(random.nextInt(que.size()));
		}
		session.setAttribute("qlist", que);
		rs=con.prepareStatement("select * from questions where qid= "+ que.get(i++)).executeQuery();
		rs.next();
	}
	else
	{
		que=(List<Integer>)session.getAttribute("qlist");
		rs=con.prepareStatement("select * from questions where qid= "+ que.get(i++)).executeQuery();
		rs.next();
	}
%>
<%
	String temp = request.getParameter("questionid");
	if (temp != null)
	{
		ResultSet rs2;
		int queid = Integer.parseInt(temp);
		String subans = request.getParameter("answer");
		String qr2="select count(*) as score from questions where qid="+temp+" and answer ='"+subans+"'";
		PreparedStatement ps2=con.prepareStatement(qr2);
		rs2=ps2.executeQuery();
		rs2.next();
		int temp2=rs2.getInt("score");
		score += (temp2);
	}
%>
<title>MCQ Quiz on <%=subject%></title>
</head>
<body style="background-color: #24292e;">
	<div class="mcqs">
		<form method="post"
			action="<%if (i == max) {
				redirect = "score.jsp";
				i = 0;
			} else
				redirect = "quiz.jsp?sub=" + subject;

			out.println(redirect);%>">
			<div class="box">
				<div class="question">
					<%=rs.getString("question")%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='A'>
					<%=rs.getString("option1")%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='B'>
					<%=rs.getString("option2")%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='C'>
					<%=rs.getString("option3")%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='D'>
					<%=rs.getString("option4")%>
				</div>
				<input type="hidden" name="questionid" value="<%=rs.getString("qid")%>">
				<input type="hidden" name="score" value="<%=score%>">
				<input type="hidden" name="subject" value="<%=subject%>">
				<input type="hidden" name="noq" value="<%=max%>">

				<button type="submit" style="margin-left: 13px;" class="nicebutton"
					name="submit">Submit</button>
				<input type="reset" class="nicebutton" value="Clear Form">
			</div>
		</form>
	</div>
</body>
</html>
