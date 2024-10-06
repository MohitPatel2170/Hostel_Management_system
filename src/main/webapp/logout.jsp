<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% session.setAttribute("sic","");
session.setAttribute("username","");
session.setAttribute("fname","");
session.setAttribute("lname","");
response.sendRedirect("index.html");
%>
</body>
</html>