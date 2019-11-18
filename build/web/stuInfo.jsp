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
<jsp:include page="base.jsp" />
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
        <div style="margin-top:100px;position:absolute;">
            <%
                
                
                Statement st=null;
                ResultSet rs=null;
               
                
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                    st=con.createStatement();
                    String em=session.getAttribute("email").toString();
                    String sql="select *from registration where email='"+em+"' ";
                    rs=st.executeQuery(sql);
                    while(rs.next()){
                       %>
                       <h1 style="font-size: 40px;margin-left: 120px;margin-top: 10px">Information of <%=rs.getString("name")%></h1>
                       <div style="margin-left:350px;margin-top: 50px;font-size: 20px">
                           <strong>Name:- </strong><%=rs.getString("name")%><br>
                            <strong>Father's Name:- </strong><%=rs.getString("faname")%><br>
                            <strong >Mother's Name:- </strong><%=rs.getString("moname")%><br>
                            <strong >Date of Birth:- </strong><%=rs.getString("dob")%><br>
                            <strong >Email:- </strong><%=rs.getString("email")%><br>
                            <strong>Mobile No:- </strong><%=rs.getString("mobile")%><br>
                            <strong >Department:- </strong><%=rs.getString("dept")%><br>
                            <strong>Registration No:- </strong><%=rs.getString("reg_no")%><br>
                            <strong>Session:- </strong><%=rs.getString("sess")%><br>
                            <strong>Payment Type:- </strong><%=rs.getString("payment")%><br>
                            <strong>Payment Option:- </strong><%=rs.getString("payment2")%><br>
                            <strong>Amount:- </strong><%=rs.getString("amount")%>
                        
                       </div>
                        
                       <%
                    }
                        connection.close();
                    }catch(Exception ex){
                        
                    }
            %>
           
        </table>
        
        
    </div>
    </body>
</html>
<script>
                         
                         pro=document.querySelector('#profile');
                         profull=document.querySelector('#profull');
                         var i=0;
                         pro.addEventListener('click', function(){
                             i=i+1;
                             if(i%2==1)
                             {
                                 profull.style="display: block;"
                                 pro.style="color: yellow;"
                             }
                             else
                             {
                                 profull.style="display: hidden;"
                                 pro.style="color: white;"
                             }
                             console.log(i)
                             
                         });
                         
                     </script>