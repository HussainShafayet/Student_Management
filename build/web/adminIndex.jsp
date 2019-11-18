
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <title>Admin Index</title>
         
         <style>
             
         body{
                 color: white;
                 background-attachment:fixed;
                 background-size:cover; 
                 font-family:arial;
             }
             h1{
                 color:darkcyan;
                 font-size: 450%;
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
                 display:initial;
                 margin-bottom: 2px;
                 
             }
             
         </style>
    </head>
    <body background="admin.jpg">
        <div>
            <ul>
               <li><span class="home"><a href = "adminIndex.jsp"> Home</a></span></li>
               <li><span class="info"><a href = "">Student Information</a></span>
               <ul>
                   <li><span class="cse"><a href = "cse_stuInfo.jsp">CSE</a></span></li>
                   <li><span class="eee"><a href = "eee_stuInfo.jsp">EEE</a></span></li>
                   <li><span class="ce"><a href = "ce_stuInfo.jsp">CE</a></span></li>
               </ul>
               </li>
               <li><span class="notification"><a href = "notification.jsp">Notification</a></span></li>
               <li><span class="logout"><a href = "index.jsp">Logout</a></span>
            </ul> 
        </div>
          
    </body>
</html>
