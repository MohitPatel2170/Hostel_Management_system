<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complain</title>
<link rel="icon" type="image/x-icon" href="Image/hostel.png">
   <style>
 
    .complaincon{
background-color: rgba(0, 128, 0, 0.496);
margin-top: 10%;
font-size: 28px;
border: 2px solid purple;
border-radius: 15px;
box-shadow: 12% slateblue;
margin-left: 25%;
margin-right: 25%;

}
.complain{
	
   text-align: left;
   margin-left: 20px;
}
h1{
   text-align: center;
   text-decoration: underline;
   color: blueviolet;
}
.comp{
   width:50%;
   height:25px
}
input{
   width:250px;
   height:23px;

}
  .mybutton {
    margin-left:70%;
    width: 25%;
    padding: 10px 10px;
    font-size: 16px;
    background-color:rgba(124, 156, 59, 0.945);
    color:#fff;
    border-radius:12px;
    margin-bottom: 10px
  }
  .mybutton:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  }
  .mybutto:hover{
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  }
  .mybutto{
    width: 20%;
    padding: 10px 10px;
    font-size: 16px;
    background-color:rgba(124, 156, 59, 0.945);
    color:#fff;
    border-radius:12px;
    margin-bottom: 10px;
    margin:10px
  }
   </style>
</head>
<body>
 <%
     String sic=request.getParameter("sic");
     String fname=request.getParameter("fname");
     String allot=request.getParameter("roomallot");
   if(allot!=null){
	       
	        
	        Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
    		String qry = "update student set ROOMALLOT ='"+allot+"' where sic='"+sic+"' ";
    		Statement smt = con.createStatement();
    		int i = smt.executeUpdate(qry);
    		if(i>=0){
    			
    			response.sendRedirect("roomallot.jsp"); 
    		} 
    		else {
    			response.sendRedirect("admindashboard.jsp"); 
    		}}
   	
    	%>
<div class="complaincon">
<a href="admindashboard.jsp"><button class="mybutto">Go back</button></a>
        <h1>Room Allotment</h1>
        <div class="complain">
        <form action="roomno.jsp" method="post">
             <label>SIC No:</label>
            &nbsp;
            <input name="sic"value="<%out.println(sic);%>" >
            <br><br>
             <Label>First Name:</Label>
            &nbsp;
            <input type="text" name="fname" value="<%out.println(fname);%>">
            <br><br>
            <label>Enter Room Number: </label>
            &nbsp;
           <input type="number" name="roomallot" required="required">
            <br><br>
          <br><button type="submit" class="mybutton">Submit</button>
       </form>
       
    
    </div>
    </div>
</body>
</html>