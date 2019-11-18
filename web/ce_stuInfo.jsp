
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
        <title>CE Student Information</title>
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
        <h1 style="text-align:center; color:lightseagreen">Information of CE student</h1>
        <a href="adminIndex.jsp" style="margin-left:15px;margin-top: 7px" class="btn btn-info">Home</a> 
        <div class="con">
        <form class="form-inline" method="post">
            <input type="text" name="search" class="form-control" placeholder="Reg_no Or Session">
        <button style="margin-left:4px" type="submit" name="save" class="btn btn-primary"> <span class="glyphicon glyphicon-search"></span>Search</button>
        </form>
        </div>
        <table class="stud">
                <tr>
                <th>Serial no</th>
                <th>Name</th>
                <th>Father's name</th>
                <th>Mother's name</th>
                <th>Date of birth</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Department</th>
                <th>Reg no</th>
                <th>Session</th>
                <th colspan="3">Payment</th>
                <th></th>
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
                    if(search==null){
                        rs=st.executeQuery("select *from registration where dept='ce' order by sess ASC,reg_no ASC ");
                    }
                    if(search!=null && search.length()>0){
                        rs=st.executeQuery("select *from registration where dept='ce' and (reg_no like'"+search+"' or sess like'"+search+"' ) order by sess ASC,reg_no ASC");
                    }
                    else{
                        rs=st.executeQuery("select *from registration where dept='ce' order by sess ASC,reg_no ASC");
                    }
                    int i=0;
                    while(rs.next()){
                       %>
                       <tr>
                           <td></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("faname")%></td>
                           <td><%=rs.getString("moname")%></td>
                            <td><%=rs.getString("dob")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("mobile")%></td>
                            <td><%=rs.getString("dept")%></td>
                            <td><%=rs.getString("reg_no")%></td>
                            <td><%=rs.getString("sess")%></td>
                            <td ><%=rs.getString("payment")%></td>
                            <td><%=rs.getString("payment2")%></td>
                            <td><%=rs.getString("amount")%></td>
                            <td><a href ="edit_ce.jsp?rsId=<%=rs.getString("id")%>" class="btn btn-warning">Edit</a></td>
                            <td><a href ="delete.jsp?rsId=<%=rs.getString("id")%>" onclick="return confirm('Are you sure want to delete?')" class="btn btn-danger">Delete</a></td>
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