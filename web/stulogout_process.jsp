<%-- 
    Document   : stulogout_process.jsp
    Created on : Oct 14, 2019, 4:22:44 PM
    Author     : SHAFAYET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    session.invalidate();
    session = request.getSession();
    response.sendRedirect("index.jsp");
    
    %>
