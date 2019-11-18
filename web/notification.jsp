
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
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
        ResultSet resultSet = null;
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notification</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
             
            .stud{
                margin-top: 10px;
                border-collapse: collapse;
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
            }
            td,th{
                 border: 1px solid #ddd;
                 padding: 8px;
                 border-color:cadetblue;
            }
            th{
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color:aqua;
                color: black;
            }
            .con{
                margin-top: 5px;
                float: right;
                margin-bottom: 10px;
                padding: 0;
                margin-right: 15px;
                
            }
            table
                {
                counter-reset: Serial;
                border-collapse: separate;
                }

                tr td:first-child:before
                {
                counter-increment: Serial;
                content: counter(Serial);
                }
                
        </style>
    </head>
    <body>
        <h1 style="text-align:center; color:lightseagreen">Message From Students</h1>
        <a href="adminIndex.jsp" style="margin-left:15px;margin-top: 7px" class="btn btn-info">Home</a> 
        <div class="con">
        <form class="form-inline" method="post">
            <input type="text" name="search" class="form-control" placeholder="Reg_no">
        <button style="margin-left:4px" type="submit" name="save" class="btn btn-primary"> <span class="glyphicon glyphicon-search"></span>Search</button>
        </form>
        </div>
        <table class="stud">
                <tr>
                <th>Serial no</th>
                <th>Student Name</th>
                <th>Reg no</th>
                <th>Session</th>
                <th>Transition Id</th>
                <th></th>
            </tr>
            <%
                String search=request.getParameter("search");
                 Statement st=null;
                 ResultSet rs=null;
                    try{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root",""); 
                    st=con.createStatement();
                    st=con.createStatement();
                    if(search==null){
                        rs=st.executeQuery("select *from tran ");
                    }
                    if(search!=null && search.length()>0){
                        rs=st.executeQuery("select *from tran where stu_reg like'"+search+"'");
                    }
                    else{
                        rs=st.executeQuery("select *from tran");
                    }
                    
                    int i=0;
                    while(rs.next()){
                       %>
                       <tr>
                           <td></td>
                            <td><%=rs.getString("stu_name")%></td>
                            <td><%=rs.getString("stu_reg")%></td>
                            <td><%=rs.getString("stu_sess")%></td>
                            <td ><%=rs.getString("stu_tran")%></td>
                            <td><a href ="notification_delete.jsp?rsId=<%=rs.getString("id")%>" onclick="return confirm('Are you sure want to delete?')" class="btn btn-danger">Delete</a></td>
                        </tr>
                       <%
                           i++;
                    }
                        connection.close();
                    }catch(Exception ex){
                        
                    }
            %>
           
        </table>
            
    </body>
</html>