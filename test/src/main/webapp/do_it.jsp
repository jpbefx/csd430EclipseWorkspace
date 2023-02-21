<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conditional code ON</title>
</head>
<body>Conditional code
	<%
		application.setAttribute("do_it","");
		if (application.getAttribute("do_it") == null) out.print("not");
	%>
enabled</body>
</html>