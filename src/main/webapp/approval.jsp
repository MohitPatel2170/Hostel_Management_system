<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%
      String sic=(String)session.getAttribute("sic");
       if(sic==null)
       {
    	   response.sendRedirect("index.html");
       }
    %>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,500&display=swap');
    </style>
    <link rel="stylesheet" href="dash.css">
    <title>Dash_board</title>
    <style>
    
#dash{
 color: black;
 background-color:white;
    
}
#approv{
background-color: #485271aa; 
    border-radius: 2px;
    color: white;
}
    </style>
    <style>
 body {
	margin-left: 2%;
	margin-right: 2%;
}

table {
	width: max-content;
	height: max-content;
	text-align: center;
	font-size: 25px;
	font: sans-serif;
}

h1 {
	text-align: center;
	color: rgba(179, 127, 58, 0.848);
} 
</style>

</head>
<body>
<% String fname = (String)session.getAttribute("fname");
   String lname = (String)session.getAttribute("lname");
%>
    <div class="profile">
        <!-- <span>silicon hostel</span> -->
        <img src ="Image\back_img\logo.png" class="logo1">

        <div class="icone">
            <img src ="Image\back_img\mesg.png" class="i1" onclick="r4()">
           <!--  <img src ="Image\back_img\bell_icon.jpg" class="i1"> -->
           <button type="button" class="btn btn-danger" onclick="logout()">LOGOUT</button></a>
        
        </div>
        <img src="Image/back_img/profil.png" alt="Avatar" class="avatar">
        <span class="tran_text">Hello!!</span>
        <span class="tran_text"> <%out.println(fname+" "+lname);%>
        </span>
        <div class="tran_btn">
            <a href="dashboard.jsp"><button id="dash" type="button" onclick="btnshift_l()">Dash Board</button></a>
            <a href="approval.jsp"><button id="approv" type="button" onclick="btnshift_r()">APPROVAL</button></a>
        </div>
    </div>
    <br><br>
    <table class="table table-success table-striped">
		<h1>your Leave Approval</h1>
		<thead>
			<th>Sic</th>
			<th>Name</th>
			<th>Status</th>
			<th>Done</th>
		</thead>
		<%
		int veri=0;
		String sicc = (String)session.getAttribute("sic");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
		String qry = "select * from student where leavres='Yes' and sic='"+sicc+"'";
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery(qry);

		while (rs.next()) {
			veri=1;
		%>

		<tr>
			<td><%=rs.getString("sic")%></td>
			<td><%=rs.getString("fname")%></td>
			<td><%out.println("Your leave has been Accepted");%></td>
			<td><a href="done.jsp?sic=<%=rs.getString("sic")%>">OK</a></td>
		
			
		</tr>
		
	


	<%
	}
		if(veri==0){
			out.println("No Approval");
		}
	%>
	</table>
     <footer>
            &copy Thank you;
        </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script src="Script.js"></script>
    <script>

    function logout()
    {
    	let p = confirm("PRESS YES TO CONMIRM :)")
    	if(p==true)
    		{
    		window.location.assign("logout.jsp");
    		}
    }
    
    </script>
    
</body>

</html>