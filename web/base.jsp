
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>  
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <title>Student Management System</title>
         <style>
             body{
                 color: black;
                 background-attachment:fixed;
                 background-size:cover; 
                 font-family:arial;
             }
             h1{
                 color:darkcyan;
                 
             }
             ul{
                 margin: 0px;
                 padding: 0px;
                 list-style: none;
                 position: absolute;
             }
             ul li{
                 float: left;
                 width: 200px;
                 height: 40px;
                 background-color: black;
                 opacity: .8;
                 line-height: 40px;
                 text-align: center;
                 font-size: 20px;
                 margin-top: 6px;
                 margin-right: 2px;
                 margin-bottom: 2px;
                 border-radius: 10px;
                 
             }
             ul li a{
                 text-decoration: none;
                 color: white;
                 display: block;
                 border-radius: 10px;
             }
             ul li a:hover{
                 background-color: green;
             }
             ul li ul li{
                display:none;
             }
             ul li:hover ul li{
                 display: block;
                 margin-bottom: 2px;
             }
             #profile
             {
                 position: absolute;
                 margin-top: 30px;
                 margin-left: 33px;
                 color:black;
                 font-size: 23px;
                 cursor: pointer;
             }
             #profile:hover
             {
                 color:yellow;
             }
             #profull
             {
                 display: none;
                 right:0;
                 top:150px;
                 position: absolute;
                 padding: 30px;
                 background-color:activecaption;
             }
         </style>
    </head>  
    <body background="admin.jpg">  
        <div style="top:10px;">
            <ul>
               <li><span class="home"><a href = "index.jsp"> Home</a></span></li>
               <li><span class="about"><a href = "about.jsp"> About</a></span></li>
               <li><span class="contact"><a href = "contact.jsp"> Contact</a></span></li>
               <li  id="login"><span class="login"><a href = "#"> Login</a></span>
                   <ul>
                <li><span class="admin"><a href = "adminlogin.jsp">Admin</a></span></li>
                <li> <span class="student"><a href = "studlogin.jsp">Student</a></span></li>
                </ul>
                   
                   
        <%
            session = request.getSession();
            if(session.getAttribute("email")!=null)
             {
            String driver = "com.mysql.jdbc.Driver";
            try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

                     Statement st=null;
                     ResultSet rs=null;

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                        st=con.createStatement();
                        String em=session.getAttribute("email").toString();
                        rs=st.executeQuery("select * from registration where email='"+em+"' ");
                   
                    
        %>
                        
                <li><span class="reg"><a href = "stuInfo.jsp">My Information</a></span></li>
               <li><span class="payment"><a href = "">Payment</a></span>
               <ul>
                   <li><span class="Admission"><a href = "semester_fee.jsp">Semester fee</a></span></li>
                   <li><span class="semester"><a href = "exam_fee.jsp">Exam fee</a></span></li>
                   <li><span class="hall"><a href = "hall-fee.jsp">Hall fee</a></span></li>
               </ul>
                   </li>
                            <script>
                                
                                log=document.querySelector('#login');
                                log.style="display:none";
                                
                            </script>
            </ul>
            
        </div>
        <div style="border-radius: 50%; background-color:burlywood; width: 150px; height: 150px;
                        position: absolute; top:0; right: 0;color:white;">
                           <%while(rs.next()){
                       %>
                       <a id="profile"> <%= rs.getString("name")%> </a>
                       
                       <div id="profull">
                           <p><strong style="color:black">Father Name: </strong><%=rs.getString("faname")%></p>
                           <p><strong style="color:black">Mother Name: </strong><%=rs.getString("moname")%></p>
                           <p><strong style="color: black">Reg. No: </strong><%=rs.getString("reg_no")%></p>
                           <p><strong style="color: black">Email: </strong><%=rs.getString("email")%></p>
                           <a href="stuForgotPassword.jsp?em="+session.getAttribute("email").toString()+"">Change Password</a><br><br>
                            <a href="stulogout_process.jsp">Logout</a>
                       </div>
                       
                           <% }}
                           %>        
                    </div>
