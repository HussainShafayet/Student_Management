<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
                    String id=request.getParameter("rsId");
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                        Statement st=con.createStatement();
                        int i=st.executeUpdate("delete from tran where id="+id);
                        response.sendRedirect("notification.jsp");

                        }
                     catch(Exception e)
                     {
                     System.out.print(e);
                     e.printStackTrace();
                     }
    %>
