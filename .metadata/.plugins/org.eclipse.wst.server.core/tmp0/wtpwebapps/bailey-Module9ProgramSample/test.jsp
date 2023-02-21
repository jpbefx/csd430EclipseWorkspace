
<!-- James Bailey CSD-430 Module 9 Assignment Sample Program
		Source of sample: https://www.w3schools.blog/jstl-cout-core-tag
 -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- The taglib is the import of the tag class I am using, 
		Here I am importing the Core Tag Class along with all of the Core functions
 -->    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
  <head>
	<title>c:out JSTL core tag example</title>
  </head>
  <body>
  <c:out value="This is a c:out JSTL core tag example."/><br/>
    Sum of 10 and 20 = <c:out value="${10+20}"/><br/><br/>
 
 	<!--  used to send content to the browser  -->
    <c:out value="${'<h6>This is a <c:out> escape XML test </h6>'}"/>
    				<!--  this is a function in JSTL syntax  --> 
    <!-- 
    	The escaped HTML tags are caused by a hidden attribute within Core class EscapeXml="true"
    		Source: https://www.youtube.com/watch?v=1UXqpu99Jcs&list=PLbszr8hMIWCFKOpqlA7foaTBNqOscnWlT&index=3
     -->

  </body>
</html>