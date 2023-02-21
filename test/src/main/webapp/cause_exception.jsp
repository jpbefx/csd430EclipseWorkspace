<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage ="stack_trace.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cause null pointer exception</title>
</head>
<body>
	<%
		String a = request.getParameter("notThere");
		int len = a.length(); // causes a null pointer exception
	%>
</body>
</html>