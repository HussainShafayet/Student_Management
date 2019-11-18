<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            form{
                text-align: center;
                margin-top: 100px;
            }
        </style>
        <script> 
            function checkPassword(form) { 
                password=form.password.value;
                cpassword=form.cpassword.value;
                   
                if (password != cpassword) { 
                    alert ("Password did not match: Please try again...") 
                    return false; 
                } 
            } 
        </script>
    </head>
    <body>
    <center>
        <form class="form" onSubmit="return checkPassword(this)" action="forgot-process.jsp" method="post"><br><br>
            <h1 style="margin-bottom:20px;">Reset Password</h1>
            Enter Email ID: <input type="text" name="email" placeholder="Email" required="email"><br><br>
            New Password: <input type="password" name="password" placeholder="" required="password"><br><br>
            Confirm Password: <input type="password" name="cpassword" placeholder="" required="password"><br><br>
        <button type="submit" name="submit"class="btn btn-info" >Submit</button>
        </form>
    </center>
        
    </body>
</html>