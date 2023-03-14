<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hello World!
	<%
	String userAgent = request.getHeader("user-agent");
	out.println("<br/>user-agent " + userAgent);
	%>
</body>
</html>