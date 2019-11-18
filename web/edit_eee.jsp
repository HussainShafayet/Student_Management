<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
        String id=request.getParameter("rsId");
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "stureg";
        String userid = "root";
        String password = "";
        try {
        Class.forName(driver);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet rs= null;
        %>
<!DOCTYPE html>
<html>              
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Update EEE Student</title>
        <style>
            body{
               background-size:cover;
                background-attachment:fixed;
                padding: 0px;
                margin: 0px;
            }
            .reg{
                margin: 0px 0px 0px 430px;
                font-size: 18px;
                width: 500px;
                padding: 20px;
                border-radius: 30px;
                color: black;
                
            }
        </style>
    </head>
    <body background="admin.jpg">
         <h1 style="text-align:center;color: coral">EEE Student Update Form</h1>
        <form name="form" method="post" class="reg" action="update_process_eee.jsp">
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from registration where id="+id;
        rs = statement.executeQuery(sql);
        while(rs.next()){
        %>
        <table style="margin:0 auto">
        <div>
                <input type="hidden" id="id" name="id" value="<%=rs.getString("id")%>">
            </div>
            <tr>
                <td>
                    <label class="form-label">Name:&nbsp;</label>
                </td>
                <td>
                    <input style="border-radius:10px" type="text" id="name" name="name" value="<%=rs.getString("name")%>">
                </td> 
            </tr>
            <tr>
                <td>
                    <label class="form-label">Father's Name:&nbsp;</label>
                </td>
                <td>
                    <input style="border-radius:10px" style="border-radius:10px" type="text" id="faname" name="faname" value="<%=rs.getString("faname")%>">
                </td>         
            </tr>
            <tr>
                <td>
                    <label class="form-label">Mother's Name:&nbsp;</label>
                </td>
                <td>
                   <input style="border-radius:10px" type="text" id="moname" name="moname" value="<%=rs.getString("moname")%>">
                </td>           
            </tr>
            <tr>
                <td>
                    <label class="form-label">Date of Birth:&nbsp;</label>
                </td>
                <td>
                    <input style="border-radius:10px" type="date" id="dob" name="dob" value="<%=rs.getString("dob")%>">
                </td>          
            </tr>
            <tr>
                <td>
                    <label class="form-label">Email Address:&nbsp;</label>
                </td>
                <td>
                   <input style="border-radius:10px" type="email" id="email" name="email" value="<%=rs.getString("email")%>"> 
                </td>             
            </tr>
            <tr>
                <td>
                   <label class>Mobile No:&nbsp;</label>
                </td>
                <td>
                    <input style="border-radius:10px" type="tel" id="phone" name="mobile" value="<%=rs.getString("mobile")%>">
                </td>          
            </tr>
            <tr>
                <td>
                   <label class="form-label">Department:&nbsp;</label>
                </td>
                <td>
                    <select style="border-radius:10px" id="dept" name="dept" value="" required="">
                                <option >EEE</option>
                                <option >CSE</option>
                                <option >CE</option>
                            </select>
                </td>            
            </tr>
            <tr>
                <td>
                   <label class="form-label">Registration No:&nbsp;</label> 
                </td>
                <td>
                   <input style="border-radius:10px" type="text" id="regno" name="regno" value="<%=rs.getString("reg_no")%>"> 
                </td>           
            </tr>
            <tr>
                <td>
                   <label class="form-label">Session:&nbsp;</label> 
                </td>
                <td>
                   <input style="border-radius:10px" type="text" id="session" name="session" value="<%=rs.getString("sess")%>"> 
                </td>            
            </tr>
            <tr>
                <td>
                   <label class="form-label">Payment Type:&nbsp;</label>
                </td>
                <td>
                    <select style="border-radius:10px" id="payment" name="payment" value="" required="">
                                <option >Admission</option>
                                <option >Semester</option>
                                <option >Hall</option>
                            </select>
                </td>             
            </tr>
            <tr>
                <td>
                     <label class="form-label">Payment Status:&nbsp;</label>
                </td>
                <td>
                   <select style="border-radius:10px" id="payment2" name="payment2" value="" required="">
                                <option >Paid</option>
                                <option >Due</option>
                                <option>None</option>
                            </select>
                </td>             
            </tr>
            <tr>
                <td>
                    <label class="form-label">Amount:&nbsp;</label>
                </td>
                <td>
                   <input style="border-radius:10px" type="number" id="amount" name="amount" value="<%=rs.getString("amount")%>"> 
                </td>           
            </tr>
        </table>
            <%
        }
        connection.close();
        } catch (Exception e) {
        }
        %>
        <div style="text-align:center">
            <br><button class="btn btn-info" type="submit" name="submit" >Update</button>
            <a href="eee_stuInfo.jsp" class="btn btn-light">Back</a>
        </div>
        </form>
    </body>
   
</html>