<html>
<head>
<link rel="stylesheet" href="quiz.css">
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>
<%!ResultSet rs = null;
	String subject;
	static int i = 0, max;
	static int score = 0;
	
	String qr;
	String redirect;
	static int doneque[];
	String ques, op1, op2, op3, op4, quid;%>
<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mcq", "root", "admin");

	Statement st = con.createStatement();
	PreparedStatement ps;

	double ran;
	max = Integer.parseInt(request.getParameter("noq"));
	doneque=new int[max];
	subject = request.getParameter("sub");
	qr = "select count(*) as cnt from " + subject;
	ps = con.prepareStatement(qr);
	rs = ps.executeQuery();
	rs.next();
	int total = rs.getInt("cnt");
	System.out.println("total: "+total);
	while (true) {
		ran = (int) (Math.random() * ((total - 1) + 1)) + 1;
		System.out.println("Ran: "+ran);
		int flag = 0;
		System.out.println("i: "+i);
		for (int j = 0; j < i; j++) {
			if (ran == doneque[j]) {
				flag = 1;
				break;
			}

		}

		if (flag == 0 || i == 0)
			break;
	}
	System.out.println("i: "+i);
	
	doneque[i++] = (int) ran;
	subject = request.getParameter("sub");

	qr = "select * from " + subject + " where qid=" + ran;
	ps = con.prepareStatement(qr);
	rs = ps.executeQuery();
	rs.next();
	quid = rs.getString("qid");
	ques = rs.getString("que");
	op1 = rs.getString("option1");
	op2 = rs.getString("option2");
	op3 = rs.getString("option3");
	op4 = rs.getString("option4");
%>
<%
		String temp = request.getParameter("questionid");
		if (temp != null) {

			int queid = Integer.parseInt(temp);
			String subans = request.getParameter("answer");
			Statement st2 = con.createStatement();
			subject = request.getParameter("sub");
			
			String qr2 = "select count(*) as cnt from " + subject + " where qid =" + queid + " and ans = '" + subans
					+ "'";
			ps = con.prepareStatement(qr2);
			rs = ps.executeQuery();
			rs.next();
			temp = rs.getString("cnt");
			score += Integer.parseInt(temp);

		}
	%>
<title>MCQ Quiz on <%=subject %></title>
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
					<%
						out.println(ques);
					%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='A'>
					<%
						out.println(op1);
					%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='B'>
					<%
						out.println(op2);
					%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='C'>
					<%
						out.println(op3);
					%>
				</div>
				<div class="option">
					<input type="radio" name="answer" value='D'>
					<%
						out.println(op4);
					%>
				</div>
				<input type="hidden" name="questionid" value="<%=quid%>"> <input
					type="hidden" name="score" value="<%=score%>"> <input
					type="hidden" name="subject" value="<%=subject%>"> <input
					type="hidden" name="noq" value="<%=max%>">

				<button type="submit" style="margin-left: 13px;" class="nicebutton"
					name="submit">Submit</button>
				<input type="reset" class="nicebutton" value="Clear Form">
			</div>
		</form>
	</div>
</body>
</html>
