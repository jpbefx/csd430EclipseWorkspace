<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
	int k = 0;
	Object syncK = new Object();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Concurrency</title>
</head>
<body>
	<%
		synchronized(syncK) {
			out.print(k);
			int j = k + 1;
			Thread.sleep(5000);
			k = j;
			out.println(" -> " + k);
		}
	%>
</body>
</html>