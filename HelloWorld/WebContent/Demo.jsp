<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo JSP</title>
</head>
<body>
	<h1>Hello World from the presentation layer</h1>
	<%!
	public int add(int a, int b){
		return a + b;
	}
	%>
	
	<%
	int i = 2;
	int j = 4;
	%>
	
	<h3><%=add(i, j) %></h3>
	<%for(int index = 0; index < 5; index++){%>
		<h1><%= index %></h1>
		<% } %>
		
	<p>The time is: <%= new Date() %></p>
</body>
</html>