<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isThreadSafe="false"%>
<%! int k = 0;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Concurrency</title>
</head>
<body>
	<%
		out.print(k);
	int j = k + 1;
	Thread.sleep(5000);
	k = j;
	out.println(" -> " + k);
	%>
</body>
</html>