<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>bailey_08</title>
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
            
    // Create the database table
    String sql = "CREATE TABLE IF NOT EXISTS records (id INT AUTO_INCREMENT PRIMARY KEY, field1 VARCHAR(255), field2 VARCHAR(255), field3 VARCHAR(255))";
    try {
        stmt.executeUpdate(sql);
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    // Populate the database table with data
    PreparedStatement ps = null;
    sql = "INSERT INTO records (field1, field2, field3) VALUES (?, ?, ?)";
    try {
        ps = con.prepareStatement(sql);
        ps.setString(1, "Value 1");
        ps.setString(2, "Value 2");
        ps.setString(3, "Value 3");
        ps.executeUpdate();
        } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    // Close the database connection
    if (con != null) {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<h1>bailey_08</h1>
    <p>The database table has been created and populated with data.</p>

</body>
</html>