<html>
<head>
<link rel="stylesheet" href="QuizUpdate.css">
<%@page import="java.sql.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
	
	Statement st = con.createStatement();
	ResultSet rs;
	String subject=request.getParameter("subject");
	String question=request.getParameter("question");
	String optionA=request.getParameter("option1"),optionB=request.getParameter("option2");
	String optionC=request.getParameter("option3"),optionD=request.getParameter("option4");
	String answer=request.getParameter("answer");
	if(question!=null)
	{
		String q1 = String.format("INSERT INTO questions (question, option1,option2,option3,option4,answer,subject) VALUES (?,?,?,?,?,?,?)");
		PreparedStatement statement = con.prepareStatement(q1);
		statement.setString(1, question);
		statement.setString(2, optionA);
		statement.setString(3, optionB);
		statement.setString(4, optionC);
		statement.setString(5, optionD);
		statement.setString(6, answer);                               
		statement.setString(7, subject);
		int i=statement.executeUpdate();
	}




%>

<title>Insert quiz data</title>
</head>
<body style="background-color: #24292e;">

<div class="quiztype">
	<form method="post" action="QuizUpdate.jsp" method="post">
	<div class="box">
		<div class="form-text">
		<select id="subject" name="subject" style="margin-left: 5%; width: 60px;">
			<option value="em1"> EM-I  </option>
			<option value="em2"> EM-II  </option>
			<option value="em3"> EM-III  </option>
			<option value="phy"> Physics  </option>
			<option value="chem"> Chemistry  </option>
			<option value="bcee"> BCEE  </option>
			<option value="bme"> BME  </option>
			<option value="bee"> BEE  </option>
			<option value="bxe"> BXE  </option>
			<option value="fpl1"> FPL-I  </option>
			<option value="fpl2"> FPL-II  </option>
			<option value="mech"> Mechanics  </option>
			<option value="fds"> FDS  </option>
			<option value="coa"> COA  </option>
			<option value="deld"> DELD  </option>
			<option value="fccn"> FCCN  </option>
			<option value="oop"> OOP  </option>
			<option value="pai"> PAI  </option>
			<option value="dsf"> DSF  </option>
			<option value="cg"> CG  </option>
			<option value="dm"> Discrete Maths  </option>
		</select> 
		<h3>Enter the question and the options and choose correct answer and submit</h3>
			<textarea id="question" style="margin-left:33px;" placeholder="Enter your question here.." name="question"></textarea>
		</div>
		<div class="form-text">
			<input type="radio" name="answer" value = 'A'><textarea id="option1" placeholder="Enter option A" name="option1"></textarea>
		</div>
		<div class="form-text">
			<input type="radio" name="answer" value = 'B'><textarea id="option2"placeholder="Enter option B"  name="option2"></textarea>
		</div>
		<div class="form-text">
			<input type="radio" name="answer" value = 'C'><textarea id="option3" placeholder="Enter option C" name="option3"></textarea>
		</div>
		<div class="form-text">
			<input type="radio" name="answer" value = 'D'><textarea id="option4" placeholder="Enter option D" name="option4"></textarea>
		</div>
		
		
	
	<button type="submit" style="margin-left: 40px ;" class="nicebutton" name="submit">Submit</button>
	<input type="reset" class="nicebutton" value="Clear Form">
	</div>
	</form></div>
	
</body>
</html>
