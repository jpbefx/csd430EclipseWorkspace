<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bailey Module 3 Assignment: declaring array</title>
</head>
<body>
	<% int[] baileyArray = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}; %>

	<H1> baileyArray - EVEN : ODD </H1>

	<table border="1">

	<%
		for(int i = 0; i < baileyArray.length; ++i){
			
			out.println("<tr>" + "<td>");

	%>

	<%
	
	if(baileyArray[i] % 2 == 0)
		out.println(baileyArray[i] + " Is Even");
	else
		out.println(baileyArray[i] + " Is Odd");
	
	%>

	<%
			out.println("</td>");
			
		out.println("</tr>");
		}
	
	%>
	
	</table>

</body>
</html>