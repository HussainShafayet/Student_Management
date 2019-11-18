
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
        Statement st=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        st= con.createStatement();
        ps=con.prepareStatement("select * from adminreg where email=? and password=?");
        ps.setString(1,email);
        ps.setString(2,password);
        rs=ps.executeQuery();
        if(rs.next())
        {
        response.sendRedirect("adminIndex.jsp");
        
        }
        else{
       response.sendRedirect("error2.jsp");
        }
        }
        catch (Exception e) {
        out.println("Error");
        }
        %>
