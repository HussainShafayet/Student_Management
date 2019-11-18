
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data insert</title>
    </head>
    <body>
        <%
                     String name=request.getParameter("name");
                     String faname=request.getParameter("faname");
                     String moname=request.getParameter("moname");
                     String dob=request.getParameter("dob");
                     String email=request.getParameter("email");
                     String mobileNo=request.getParameter("mobileNo");
                     String dept=request.getParameter("dept");
                     String regno=request.getParameter("regno");
                     String sess=request.getParameter("session");
                     String password=request.getParameter("password");
                try{
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                    Statement st=con.createStatement();
                    st.execute("insert into registration(name,faname,moname,dob,email,mobile,dept,reg_no,sess,password)values('"+name+"','"+faname+"','"+moname+"','"+dob+"','"+email+"','"+mobileNo+"','"+dept+"','"+regno+"','"+sess+"','"+password+"')");
                    
                    response.sendRedirect("stu_reg_process2.jsp");
                    
                }catch(Exception e)
                {
                    out.println(e);
                }
        %>
    </body>
</html>
