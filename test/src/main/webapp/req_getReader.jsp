<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*, java.io.*"%>
<!DOCTYPE html>
<%
	int len = request.getContentLength();
	String s = "";
	if (len > 0) {
		char[] cbuf = new char[len];
		int n = request.getReader().read(cbuf, 0, len);
		s = new String(cbuf);
	}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test request.getReader</title>
</head>
<body>
	<form action="" method="post">
		<input type="hidden" name="oneTwoThree" value="123"/>
		<input type="hidden" name="fourFiveSix" value="456"/>
		<input type="submit"/>
	</form>
	<table border="1">
		<tr><td>getCOntentType()</td><td><%=request.getContentType()%></td></tr>
		<tr><td>getContentLength()</td><td><%=len%></td></tr>
		<tr><td>getReader(): <%=s.length()%></td><td><pre><%=s%></pre></td></tr>
	</table>
</body>
</html>