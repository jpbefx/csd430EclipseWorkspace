<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>bailey Module 3 Assignment : loop iteration and selection</title>
</head>
<body>
<%-- String[] baileyArray = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"}; --%>

	<H1> baileyArray - Strings </H1>

	<table border="1">

	<%
		for(int i = 0; i < 5; ++i){
			
			out.println("<tr>");
			
			for(int j = 0; j < 5; ++j){
				
				out.println("<td>");
	%>
	test
	<%--
	  for(int k = 0; k < baileyArray.length; k++){
		 out.print(baileyArray[k]); 
	  }
	  
	--%>
	<%
			out.println("</td>");
			}
		out.println("</tr>");
		}
	
	%>
	
	</table>

</body>
</html>