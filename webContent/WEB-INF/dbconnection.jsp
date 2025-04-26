<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/ignou_mca";
    String username = "root";  
    String password = "";
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        out.println("✅ Connection Successful!");
    } catch(Exception e) {
        out.println("Database connection error: " + e.getMessage());
    }
%>
