<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
        <br>
         <form method="POST" action="welcomeStudent.jsp">

             <br><br><br><center><h1 style="color:blue"><b>Login</b></h1></center>
  <center><div class="container">
    <label><b>Username </b></label>
    <input type="email"  name="email" placeholder="Email Address" required>
  </div>

  <div class="container">
    <label><b>Password </b></label>
    <input type="password" name="password" placeholder="Password" required>
	 </div>
 <div class="container">
    <button type="submit">Submit</button>
    <a href="register.jsp"><button type="submit">Register</button>

    </div>
  <div class="container">
    <a href="forgotPassword.jsp">Forgot Password?</a>
  </div></center>
         </form>
    </body>
</html>