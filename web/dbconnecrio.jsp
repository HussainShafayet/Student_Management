<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@page errorPage="error.jsp" %>
<%
Connection con = null;
//JDBC connection url
String url = "jdbc:mysql://localhost:8084/pcs_msit_db";
//loading JDBC driver at runtime
Class.forName("com.mysql.jdbc.Driver");
 
// creating connection object
con = DriverManager.getConnection(url, "root", ""); 
%>
