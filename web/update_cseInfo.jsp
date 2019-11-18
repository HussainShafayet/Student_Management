<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/stureg";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
                    String id=request.getParameter("id");
                    String name=request.getParameter("name");
                    String faname=request.getParameter("faname");
                    String moname=request.getParameter("moname");
                    String dob=request.getParameter("dob");
                    String email=request.getParameter("email");
                    String mobile=request.getParameter("mobile");
                    String dept=request.getParameter("dept");
                    String reg_no=request.getParameter("regno");
                    String sess=request.getParameter("session");
                    String payment=request.getParameter("payment");
                    String payment2=request.getParameter("payment2");
                    String amount=request.getParameter("amount");
                    
                    if(id != null)
                    {
                    Connection con = null;
                    PreparedStatement ps = null;
                    int personID = Integer.parseInt(id);
                    try
                    {
                            Class.forName(driverName);
                            con = DriverManager.getConnection(url,user,psw);
                            String sql="update registration set id=?,name=?,faname=?,moname=?,dob=?,email=?,mobile=?,dept=?,reg_no=?,sess=?,payment=?,payment2=?,amount=? where id="+id;
                            ps = con.prepareStatement(sql);
                            ps.setString(1, id);
                            ps.setString(2, name);
                            ps.setString(3, faname);
                            ps.setString(4, moname);
                            ps.setString(5, dob);
                            ps.setString(6, email);
                            ps.setString(7, mobile);
                            ps.setString(8, dept);
                            ps.setString(9, reg_no);
                            ps.setString(10, sess);
                            ps.setString(11, payment);
                            ps.setString(12, payment2);
                            ps.setString(13, amount);
                            int i = ps.executeUpdate();
                            out.print(i);
                            if(i > 0)
                            {
                                response.sendRedirect("cse_stuInfo.jsp");
                            }
                            else
                            {
                            out.print("There is a problem in updating Record.");
                            }
                            }
                            catch(SQLException sql)
                            {
                            request.setAttribute("error", sql);
                            out.println(sql);
                            out.println("error");
                            }
                            }
%> 