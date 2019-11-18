<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Registration</title>
        <style>
            body{
               background-size:cover;
                background-attachment:fixed;
                padding: 0px;
                margin: 0px;
            }
            .reg{
                margin: 0px 0px 0px 430px;
                font-size: 18px;
                width: 500px;
                padding: 20px;
                border-radius: 30px;
                color: black;
                
            }
        </style>
    </head>
    <body background="admin.jpg">
        <h1 style="text-align:center;color: coral">Registration Form</h1>
        <form name="form" method="post" class="reg" action="stu_reg_process.jsp" required>
            <div>
                <label class="form-label">Name:</label><br>
                <input type="text" id="name" name="name" placeholder="Name" text-align="right" value="" required="name">
            </div>
        <div>
                <label class="form-label">Registration Number:</label><br>
                <input type="text" id="regno" name="regno" placeholder="Registration Number" text-align="right" value="" required="number">
            </div>
            <div >
                        <label class="form-label">Email Address:</label><br>
                        <input type="email" id="email" name="email" placeholder="Email Address" text-align="right" value="" required="email">
            </div>
            <div>
                        <label class="form-label">Password:</label><br>
                            <input type="text" id="password" name="password" placeholder="Password" text-align="right" value="" required="number">
            </div>
        <div style="text-align: center;margin-top: 20px; margin-right: 230px">
            <button onclick=" myFunction();" type="submit" name="submit"class="btn btn-info" >Submit</button>
        </div>
        <p style="margin-top: 10px;">Already have an account?<a href="studlogin.jsp" style="margin-left: 1px;">Login</a></p>
        </form>
        
    </body>
</html>
<script>
            function myFunction(){
                var name=document.form.name.value;
                if(name==""){
                   alert ("Please fill out all fields.");
                   return false;
                }
                var regno=document.form.regno.value;
                if(regno==""){
                   alert ("Please fill out all fields.");
                   return false;
                }
                var email=document.form.email.value;
                if(email==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                 var password=document.form.password.value;
                if(password==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
               else{
                   alert("Data inserted Successfully")
                   return true;
               } 
             
            }
            </script>