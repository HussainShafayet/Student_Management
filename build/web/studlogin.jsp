<jsp:include page="base.jsp" />
<div style="margin-top: 10px;position: absolute; margin-left: 35%;font-size:22px;">
        <style>
            
            .box h1{
               color: coral;
               
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
                font-size:18px;
            }
            .box input[type="submit"]{
               border-radius: 20px;
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
        <br><br><br><br><br><br>
        
        <form method="POST" class="box"  action="stulogin_process.jsp" >
            <h1 style="font-size:35px;"> &nbsp;&nbsp;&nbsp;&nbsp;Student Login</h1>
            <input type="email" id="email" name="email" placeholder="Email" required="email">
            <input type="password" id="password" name="password" placeholder="Password" required="password">
            <input type="submit" id="submit" name="submit" value="Submit">
            <a href="stuForgotPassword.jsp"> Forgot Password?</a>
            <p style="margin-top: 10px;">Don't have an account?<a href="register.jsp" style="margin-left: 1px;">Sign up</a></p>
         </form>
        
</div>
    </body>
</html>