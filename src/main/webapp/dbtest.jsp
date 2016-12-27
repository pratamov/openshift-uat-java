<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String hostname = System.getenv("MYSQL_SERVICE_HOST"); %>
	<% String username = System.getenv("MYSQL_USER"); %>
	<% String password = System.getenv("MYSQL_PASSWORD"); %>
	<% String database = System.getenv("MYSQL_DATABASE"); %>
	
	<h1>Project UAT - Java Application</h1>
	<% out.println("Hostname : " + hostname + "<br/>"); %>
	<% out.println("Username : " + username + "<br/>"); %>
	<% out.println("Password : " + password + "<br/>"); %>
	<% out.println("Database : " + database + "<br/>"); %>
	<%
	try {
        String connectionURL = "jdbc:mysql://"+ hostname + "/" + database;
        Connection connection = null; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection(connectionURL, username, password);
        if(!connection.isClosed())
             out.println("Connected successfully");
        connection.close();
    }catch(Exception ex){
        out.println("Connection failed : " + ex);
    }
	%>
	
</body>
</html>