<%@page import="user.login"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="database.db"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="../css/bootstrap.min.css">
<script
	src="../css/jquery.min.js"></script>
<script
	src="../css/bootstrap.min.js"></script>

<link href="../css/bootstrap1.css"	rel="stylesheet">
<style>
html, body {
  height: 100%;
}
.nicebutton
{
	background-color: #336699;
	height: 40px;
	width: 80px;
	border: 1px solid #24292e;
	border-radius : 5px;
	color: white;
}
.nicebutton:active
{
	transform: translateY(3px);
	background-color: #24292e;
}
.nicebutton:hover
{
	background-color: #4488bb;
}
.userinfo
{
	border: 1px solid lightgray;
	border-radius: 20px;
	background-color: white;
	text-size: 23px;
	height: 100%;
	margin: 30px;
}
.usertext
{
	!text-align: right;
	padding-top: 10px;
	padding-right: 10px;
	font-size: 23px;
}
img
{
	width: 100px;
	height: 100px;
	float: left;
	object-fit: cover;
}

</style>
<title>Insert title here</title>
<%!ResultSet rs = null;
	int i;
	static String newusername,newpassword,submittedpassword,useremail,username,useroldpass;
	String qr1,qr2;
	PreparedStatement ps1,ps2;%>
</head>
<body style="background-color: #24292e;">
	<%
		if (request.getParameter("cred") != null) {
	%>
	<script type="text/javascript">
   			 var msg = "<%=request.getParameter("cred")%>";
		alert(msg);
	</script>
	<%
		}
	%>

	<jsp:useBean id="db" class="database.db" scope="request">
		<jsp:setProperty name="db" property="*" />
		<%
			try {
					db.connect();
					Class.forName("com.mysql.jdbc.Driver");

					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");
					System.out.println("-----CONNECTED TO DATABASE-----");
					String userid = (String) session.getAttribute("userid");
					qr1="select * from user_details where email_id='" + userid + "'";
					ps1=con.prepareStatement(qr1);
					rs=ps1.executeQuery();
					while (rs.next()) {
						username = rs.getString("username");
						useroldpass = rs.getString("pwd");
						useremail = rs.getString("email_id");
					}
					
					newusername=request.getParameter("username");
					newpassword=request.getParameter("newpassword");
					submittedpassword=request.getParameter("oldpassword");
					System.out.println(newusername);
					System.out.println(newpassword);
					System.out.println(submittedpassword);
					System.out.println(useroldpass);
					db.close();
					if(newpassword!=null)
					{
						
						if(useroldpass.equals(submittedpassword))
						{
							Class.forName("com.mysql.jdbc.Driver");

							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algranth", "root", "admin");

							Statement st1 = con.createStatement();

							System.out.println("Tried changing password");
							qr2="update user_details set username= '"+ newusername + "', pwd= '"+newpassword+"' where email_id = '"+ userid + "'" ;
							ps2=con.prepareStatement(qr2);
							i=ps2.executeUpdate();
							response.sendRedirect("profile.jsp?cred=Password+changed+successfully");
						}
						else
						{	
							response.sendRedirect("profile.jsp?cred=Password+change+unsuccessful");
						}
						
					}
				} catch (Exception ex) {
					out.println("Unable to connect to database " + ex);
				}
		
		%>
	
	</jsp:useBean>
<div class="userinfo">
<hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>User Profile</h1></div>
    	<!--  >div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src=""></a></div-->
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              
          <ul class="list-group">
            <li class="list-group-item text-muted">Profile</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Name</strong></span><%=username %></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Email</strong></span><%=useremail %></li>
            
            
          </ul> 
          <ul class="list-group">
              <li class="list-group-item text-right"><span class="pull-left"><strong>Allergie</strong></span> <button>edit</button><div class="expandable form-group text-center" style="margin-top:30px; width:100%" data-count="1">
        <div class="row">
    	    <input name="name[]" type="text" id="name[]"  placeholder="Allergia">
		    <button class="btn add-more" id="add-more" type="button">+</button>
	    </div>
    </div></li>
           
            
          </ul> 
               
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
          
          <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#home" data-toggle="tab">Test results</a></li>
            <li><a href="#messages" data-toggle="tab">Unused tab</a></li>
            <li><a href="#settings" data-toggle="tab">Reset Password</a></li>
          </ul>
              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
              <div class="table-responsive">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>Subject</th>
                      <th>Marks scored</th>
                      <th>Questions attempted</th>
                      <th>%Accuracy</th>
                    </tr>
                  </thead>
                  <tbody id="items">
                    <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle ">
                      <td>Marks here</td>
                      <td>Score here</td>
                      <td>Attempted</td>
                      <td>Accuracy</td>
                      <!-- >td><button type="button" data-toggle="modal" data-target="#edit" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></button></td-->
                      <!-- >td><button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-eye-open"></span></button></td-->
                    </tr>
                    
                    <tr>
            <td colspan="12" class="hiddenRow"><div class="accordian-body collapse" id="demo1"> 
              <table class="table table-striped">
                  <h1>Dettagli trattamento</h1>
                      
                     <tbody>
					<tr id='addr0'>
						<td>
						
						</td>
						<td>
						<input type="text" name='name0'  placeholder='Name' class="form-control"/>
						</td>
						<td>
						<input type="text" name='mail0' placeholder='Mail' class="form-control"/>
						</td>
						<td>
						<input type="text" name='mobile0' placeholder='Mobile' class="form-control"/>
						</td>
					</tr>
                    <tr id='addr1'></tr>
				</tbody>
				
               	</table>
               	<a id="add_row" class="btn btn-default pull-left">Aggiungi riga</a><a id='delete_row' class="pull-right btn btn-default">Elimina riga</a>
              
              </div> </td>
        </tr>
                    
                    
                    
                      </tbody>
                  
                </table>
                <hr>
               <div class="row">
                  <div class="col-md-6 col-md-offset-4 text-center">
                  	<ul class="pagination" id="myPager"></ul>
                  </div>
                </div>
              </div><!--/table-resp-->
              
              <div id="edit" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h4 class="modal-title">Modifica dati per (servizio)</h4>
      </div>
      <div class="modal-body">
           <input id="fn" type="text" class="form-control" name="fname" placeholder="Prodotti utilizzati">
           <input id="ln" type="text" class="form-control" name="fname" placeholder="Colori Utilizzati">
           <input id="mn" type="text" class="form-control" name="fname" placeholder="Note">
      </div>
      <div class="modal-footer">
        <button type="button" id="up" class="nicebutton" data-dismiss="modal">Aggiorna</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Chiudi</button>
      </div>
    </div>
  </div>
</div>
              
              <hr>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
              <div class="table-responsive">
                <!-- table class="table table-hover">
                  <thead>
                    <tr>
                      <th>Data</th>
                      <th>Servizio</th>
                      <th>Modifica</th>
                    </tr>
                  </thead>
                  <tbody id="items">
                    <tr>
                      <td>10.05.2017</td>
                      <td>MASSAGGIO schiena</td>
                     
                      <td><button type="button" data-toggle="modal" data-target="#edit" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></button></td>
                      
                      
                    </tr>
                  </tbody>
                </table-->
                </div>
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="settings">
            		
               	
                  <hr>
                  <form class="form" action="profile.jsp" method="get" id="changepasswordform">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="username"><h4>Username</h4></label>
                              <input type="text" class="form-control" name="username" id="username" placeholder="Enter username" >
                          </div>
                      </div>
          
                      
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="oldpassword"><h4>Old password</h4></label>
                              <input type="text" class="form-control" name="oldpassword" id="oldpassword" placeholder="Enter old password" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="newpassword"><h4>New passwprd</h4></label>
                              <input type="text" class="form-control" name="newpassword" id="newpassword" placeholder="Enter new password">
                          </div>
                      </div>
                      
                      
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="nicebutton" type="submit">Submit</button>
                               	<button class="btn btn-lg" type="reset">Clear</button>
                            </div>
                      </div>
              	</form>
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</hr>
	
</div>
</body>
</html>