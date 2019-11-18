<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
            Statement st=con.createStatement();
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            ps =con.prepareStatement("update adminreg set password=? where email=?");
            ps.setString(2,email);
            ps.setString(1,password);
            int i=ps.executeUpdate();
            if(i>0){
            response.sendRedirect("ResetPassword.jsp");
            }
            else{
            response.sendRedirect("error.jsp");
            }
            }
            catch (Exception e){
            e.printStackTrace();
            }
        %>
    </body>
</html>
