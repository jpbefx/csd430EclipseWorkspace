<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	String[] baileyArray = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"}; %>

	<H1> baileyArray - Strings </H1>

	<table border="1">

	<%
		for(int i = 0; i < baileyArray.length; ++i){
			
			out.println("<tr>" + "<td>");

	%>
	
	<%
	  	 out.print(baileyArray[i]); 
	%>
	<%
			out.println("</td>");
			
		out.println("</tr>");
		}
	
	%>
	
	</table>

</body>
</html>