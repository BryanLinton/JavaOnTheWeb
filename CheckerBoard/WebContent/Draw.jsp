<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>CheckerBoard</title>
	<link rel="stylesheet" href="./Style.css">
</head>
<body>
	<% 
		String h = request.getParameter("height")  != null ? request.getParameter("height") : "2";
	 	String w = request.getParameter("width")  != null ? request.getParameter("width") : "2";
	 	int height = Integer.parseInt(h);
	 	int width = Integer.parseInt(w);
	%>
	 
	<%!
	
	%>
	
	<%!
		
		public String GetColor(int x, int y) {
			if(x%2 == 0)
				return y%2 == 0 ? "black" : "red";
			return y%2 == 0 ? "red" : "black";
		}
	%>
	
	
	<div>
		<h1>Checker Board: <%= width %> x <%= height %></h1>
		<% for(int row = 0; row < height; row++){ %>
			<div class="row">
				<% for(int col = 0; col < width; col++){ %>
					<div data=<%= col %> class="square <%= GetColor(row, col) %>"></div>
				<% } %>
			</div>
		<% } %>
	</div>
</body>
</html>