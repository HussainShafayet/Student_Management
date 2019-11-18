
<%@page import="java.sql.ResultSet"%>
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
             
                     String tran=request.getParameter("tran");
                     String stu_name =null;        
                     String stu_reg =null;
                     String stu_session =null;
                try{
        
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                    
                    ResultSet rsp=null;
                    Statement stp=con.createStatement();
                    
                    
                    String em=session.getAttribute("email").toString();
                    rsp=stp.executeQuery("select * from registration where email='"+em+"' ");
                    while(rsp.next()){
                     stu_name=rsp.getString("name");                     
                     stu_reg=rsp.getString("reg_no");
                     stu_session=rsp.getString("sess");
                    }
                    
                    
                    Statement st=con.createStatement();
                    st.execute("insert into tran (stu_name,stu_reg,stu_sess,stu_tran)values('"+stu_name+"','"+stu_reg+"','"+stu_session+"','"+tran+"')");
                    
                    response.sendRedirect("semester_fee.jsp");
                    out.print("Transaction Id received successfully");
                    
                }catch(Exception e)
                {
                    out.println(e);
                }
        %>
    </body>
</html>
