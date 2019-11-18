
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    session = request.getSession(false);
    if(session.getAttribute("email")!=null)
    {
        Connection con = null;
        PreparedStatement ps;
        ResultSet rs;
        String query;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        try
        {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
            query = "select * from registration where email=?";
            ps = con.prepareStatement(query);
            String emailFromSession = session.getAttribute("email").toString();
            ps.setString(1,emailFromSession);
            rs = ps.executeQuery();
            if(rs.next())
            {
                out.println("Welcome, "+rs.getString("name")+"!!!");
                out.println("<br><br> Session created for you...<br><br>");
                
                int indexOfatTheRate = emailFromSession.indexOf('@');
                
                boolean cookieCheck=false;
                Cookie ck[] = request.getCookies();
                for(int i=0;i<ck.length;i++)
                {
                    if(ck[i].getName().equals("CurrentCity"+emailFromSession.substring(0,indexOfatTheRate)))
                    {
                        //out.println("Your Current City is - "+ck[i].getValue()+"&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"changeCurrentCity.jsp\">Change City</a>");
                        cookieCheck = true;
                        break;
                    }
                }
                if(!cookieCheck)
                {
                    //out.println("<form action=\"\" method=\"post\">");
                    //out.println("<input type=\"text\" name=\"currentCity\" placeholder=\"Please, enter your Current City\" size=\"50\">"
                      //      + "&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"submit\" name=\"cookieSubmit\" value=\"Submit\">");
                    //out.println("</form>");
                    if("POST".equalsIgnoreCase(request.getMethod()))
                    {
                        if(request.getParameter("cookieSubmit")!=null)
                        {
                            if(request.getParameter("cookieSubmit").equals("Submit"))
                            {
                                Cookie cookie = new Cookie("CurrentCity"+emailFromSession.substring(0,indexOfatTheRate),request.getParameter("currentCity"));
                                cookie.setMaxAge(10000);
                                response.addCookie(cookie);
                                response.sendRedirect("index.jsp");
                            }
                        }
                    }
                    
                }
                
                //Creating Logout button...
                
                //out.println("<br><br>"
                //        + "<form action=\"logout.jsp\" method=\"post\">");
                //out.println("<input type=\"submit\" name=\"logout\" value=\"Logout\">");
                //out.println("</form>");
                
                //out.println("<br><br><a href=\"changePassword.jsp?uemail="+session.getAttribute("userEmail").toString()+"\"> Change Password </a>");
            }
            
                    
            
                    
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
               
    }
    
    if("POST".equalsIgnoreCase(request.getMethod()))
    {
        if(request.getParameter("submit")!=null)
        {
            if(request.getParameter("submit").equals("Submit"))
            {
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                
                Connection con = null;
                PreparedStatement ps;
                ResultSet rs;
                String query;
                
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                
                try
                {
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                    query = "Select * from registration where email=? and password=?";
                    ps = con.prepareStatement(query);
                    ps.setString(1,email);
                    ps.setString(2,password);
                    rs = ps.executeQuery();
                    
                    if(rs.next())
                    {
                        //Login successful!
                        //Creating Session...
                        session = request.getSession();
                        session.setAttribute("email", email);
                        response.sendRedirect("index.jsp");
                    }
                    else
                    {
                        out.println("Invalid Email id or Password!!! Please ");
                        out.println("<a href=\"studlogin.jsp\"> Try Again </a>");
                        
                    }
                    
                }
                catch(SQLException e)
                {
                    System.out.println(e);
                }
               
           }
        }
        else if (request.getParameter("registerLogin")!=null)
        {
            if(request.getParameter("registerLogin").equals("I'm New User"))
            {
                response.sendRedirect("stu_reg.jsp");
            }
        }
            
    }
    
%>

