
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_login</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
           body{
                background-size:cover;
                background-attachment:fixed;
                padding: 0px;
                margin: 0px;
                
            }
            .box{
                width: 300px;
                padding: 40px;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                text-align: center;
            }
            .box h1{
               color: coral;
               font-weight: 500;
            }
            .box input[type="email"],.box input[type="password"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid#3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: black;
            border-radius: 24px;
            transition: .25s;
            
            }
            .box input[type="email"]:focus,.box input[type="password"]:focus{
                width: 280px;
                border-color: #2ecc71;
            }
            .box input[type="submit"]{
                border-radius: 24px;
               background: #2ecc71;
               border: 0;
               font-size:22px;
               cursor: pointer;
            }
             .box input[type="submit"]:hover{
                color:white;
                transition: 0.7s;
            }
        </style>
    </head>
    <body background="admin.jpg">
        
        <br><br><br><br><br><br><form method="POST" class="box"  action="adminlogin_process.jsp" >
            <h1 style="font-size:35px;">Admin Login</h1>
            <input type="email" id="email" name="email" placeholder="Email" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <input type="submit" name="submit" value="Submit">
    <a href="adminForgotPassword.jsp">Forgot Password?</a>
         </form>
    </body>
</html>