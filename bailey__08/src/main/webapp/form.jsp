<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*, java.util.*, bailey__08.RecordBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    // Connect to the database server
     java.sql.Connection con = null;
     java.sql.Statement stmt = null;
     try{                
         Class.forName("com.mysql.cj.jdbc.Driver");
         String url = "jdbc:mysql://localhost:3306/baseball_01?";
         
         con = java.sql.DriverManager.getConnection(url + "user=student1&password=pass");                
         stmt = con.createStatement();
     }
     catch(Exception e){
         out.println("<h1>Error connection to database.</h1>");
     }
    
    // Create a new RecordBean
    RecordBean record = new RecordBean();
    
    // Handle form submission
    if (request.getMethod().equalsIgnoreCase("post")) {
        // Retrieve form data
        String field1 = request.getParameter("field1");
        String field2 = request.getParameter("field2");
        String field3 = request.getParameter("field3");
        
        // Set the RecordBean properties
        record.setField1(field1);
        record.setField2(field2);
        record.setField3(field3);
        
        // Insert the new record into the database
        String sql = "INSERT INTO records (field1, field2, field3) VALUES (?, ?, ?)";
    } 
    try{
        stmt.close();
        con.close();
        out.println("<b>Database connections closed</b><br />");
    }
    catch(java.sql.SQLException e){
        out.println("<b>Connection close failed</b><br />");

        }
%>
</body>
</html>