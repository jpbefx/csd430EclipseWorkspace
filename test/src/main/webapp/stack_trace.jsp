<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import= "java.util.*, java.io.*"%>
<%@page isErrorPage= "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Print stack trace</title>
</head>
<body>
	From exception.getStackTrace():<br/>
	<pre><%
		StackTraceElement[] trace = exception.getStackTrace();
		for (int k = 0; k < trace.length; k++) {
			out.println(trace[k]);
		}
	%></pre>
	Printed with exception.printStackTrace(new PrintWriter(out)):
	<pre><%
		exception.printStackTrace(new PrintWriter(out));
	%></pre>
</body>
</html>