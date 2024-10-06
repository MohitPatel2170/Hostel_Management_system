<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accepting request</title>
</head>
<body>
<% 
String sic=request.getParameter("sic");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
String qry ="update student set leavres='' where sic='"+sic+"'";
Statement smt = con.createStatement();
int i=smt.executeUpdate(qry);
if(i>=0){
	response.sendRedirect("approval.jsp"); 
}
else{
	response.sendRedirect("dashboard.jsp"); 
}
%>
</body>
</html>