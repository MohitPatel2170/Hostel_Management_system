<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%! int rev=0;%>
<form method="post" action=fact.jsp>

<h1>Enter the number to check palindrome</h1>
<br>
<input type="text" name="num">
<br>
<input type="submit">
</form>
result:<%out.println(rev);%>
 <%
String k= request.getParameter("num");
if(k!=null){
int a= Integer.parseInt(request.getParameter("num"));
int b=a;
int i,rev=0,re; int sumi=1;
while(a>0)
{
	re=a%10;
	rev= rev*10+re;
	a=a/10;
	
}
System.out.println(rev);
if(rev==b)
out.println("Number is palindrome");
else
	
{
	out.println("Number is not palindrome");
}
}
%>
</body>
</html>