<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,500&display=swap');
    </style>
    <link rel="stylesheet" href="dash.css">
    <style></style>
    <title>Dash_board</title>
<title>Insert title here</title>
</head>
<body>
<%
      String username=(String)session.getAttribute("username");
       if(username==null)
       {
    	   response.sendRedirect("index.html");
       }
    %>
    <div class="profile">
        <!-- <span>silicon hostel</span> -->
        <img src ="Image\back_img\logo.png" class="logo1">

        <div class="icone">
         
           <button type="button" class="btn btn-danger" onclick="logout()">LOGOUT</button></a>
        
        </div>
        <img src="Image/back_img/profil.png" alt="Avatar" class="avatar">
        <span class="tran_text">Hello!!</span>
        <span class="tran_text"> <%out.println(username+" ");%>
        </span>
        <div class="tran_btn">
            <button id="dash" type="button" onclick="btnshift_l()">Dash Board</button>
        </div>
    </div>
    <br><br>
    <div class="dash_container" id="dash_container">
        <div class="card_series">
        <div class="card">
             <img src="Image/back_img/hostelallot.jpeg" class="card-img-top" alt="..." onclick="r5()">
            </div>
            <div class="card">
               <a href="regstudent.jsp"><img src="Image\back_img\profile.jpg" class="card-img-top" alt="..."></a>
                <h3>Registered Student</h3>
            </div>
            <div class="card">
              <img src="Image\back_img\complaint-pic.webp" class="card-img-top" alt="..." onclick="r2()">
            </div>
            <br>
            <br>
             <div class="card">
                <img src="Image\back_img\leave.jpeg" onclick="r4()">
            </div>
            <div class="card">
                <img src="Image/back_img/message.jpeg" onclick="r1()">
            </div>
     
            <div class="card" id="terimination">
                <img src="Image\back_img\termination.jpg" class="card-img-top" alt="..." onclick="r3()">
                
            </div>
        </div>
    </div>
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
    function r1() {
    	window.location.assign("message.jsp");
		
	}
    function r2() {
    	window.location.assign("studcomp.jsp");
		
	}
    function r3() {
    	window.location.assign("termi.jsp");
		
	}
    function r4() {
    	window.location.assign("leaveres.jsp");
		
	}
    function r5() {
    	window.location.assign("roomallot.jsp");
		
	}
    </script>
    
</body>

</html>