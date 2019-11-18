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
                 background-attachment:fixed;
                 background-size:cover; 
                 font-family:arial;
             }
            .reg{
                margin: 0px 0px 0px 430px;
                font-size: 18px;
                width: 500px;
                padding: 20px;
                color: black;  
            }
        </style>
    </head>
    <body background="admin.jpg">
        <h1 style="text-align:center;color: coral;margin-top: 20px">Registration Form</h1>
        
        <table style="margin:0 auto;color: black;font-size: 18px;margin-top: 40px" required>
        <form name="form" method="post" class="reg" action="process.jsp" require/>
        <tr required>
            <td>
                <label class="form-label">Name&nbsp;</label>
            </td>
            <td>
                <input style="border-radius:10px" type="text" id="name" name="name" placeholder="Name" text-align="right" value="" required="name">
            </td>
        </tr>
        <tr>
            <td >
                        <label class="form-label">Father's Name &nbsp;</label>
            </td>
            <td>
                        <input style="border-radius:10px" type="text" id="faname" name="faname" placeholder="Father's Name" text-align="right" value="" required="name">
            </td>
        </tr>
        <tr> 
               <td>
                        <label class="form-label">Mother's Name &nbsp;</label>
               </td>
               <td>
                        <input style="border-radius:10px" type="text" id="moname" name="moname" placeholder="Mother's Name" text-align="right" value="" required="name">
               </td>
        </tr>
        <tr>
            <td>
                <label class="form-label">Date of Birth &nbsp;</label>
            </td>
            <td>
                <input style="border-radius:10px" type="date" id="dob" name="dob" placeholder="Date of Birth" text-align="right" value="" required="date">
            </td>                 
        </tr>
        <tr>
            <td>
                 <label class="form-label">Email Address &nbsp;</label>
            </td>
            <td>
                <input style="border-radius:10px" type="email" id="email" name="email" placeholder="Email Address" text-align="right" value="" required="email">
            </td>              
        </tr>
        <tr>
            <td>
              <label class="form-label">Mobile No &nbsp;</label>  
            </td>
            <td>
              <input style="border-radius:10px" type="phone" id="phone" name="mobileNo" placeholder="Mobile no" text-align="right" value="" required="number">  
            </td>
        </tr>
        <tr>
            <td>
               <label class="form-label">Department &nbsp;</label> 
            </td>
            <td>
               <select style="border-radius:10px" id="dept" name="dept" value="" required="">
                                <option value="" selected disabled hidden>Choose here</option>
                                <option >CSE</option>
                                <option >EEE</option>
                                <option >CE</option>
                            </select> 
            </td>             
        </tr>
        <tr>
            <td>
               <label class="form-label">Registration No &nbsp;</label> 
            </td>
            <td>
               <input style="border-radius:10px" type="text" id="regno" name="regno" placeholder="Registration No" text-align="right" value="" required="number"> 
            </td>
                        
                            
        </tr>
        <tr>
            <td>
               <label class="form-label">Session &nbsp;</label> 
            </td>
            <td>
                <select style="border-radius:10px" id="session" name="session" value="" required="">
                                <option value="" selected disabled hidden>Choose here</option>
                                <option >2013-2014</option>
                                <option >2014-2015</option>
                                <option >2015-2016</option>
                                <option >2016-2017</option>
                                <option >2017-2018</option>
                                <option >2018-2019</option>
                                <option >2019-2020</option>
                                <option >2020-2021</option>
                                <option >2021-2022</option>
                                <option >2022-2023</option>
                         </select>
            </td>
        </tr>
        <tr>
            <td>
                 <label class="form-label">Password &nbsp;</label>
            </td>
            <td>
                <input style="border-radius:10px" type="text" id="password" name="password" placeholder="Password" text-align="right" value="" required="number"> 
            </td>                
        </tr>   
        
        <tr>  
        <td>
            
        </td>
        <td>
            <button  style="margin-top:10px" onclick=" myFunction();" type="submit" name="submit"class="btn btn-info" >Submit</button>
        </td>
        </tr>   
        </form>    
        </table>
        <p style="margin-top: 10px; text-align: center;font-size: 20px">Already have an account?<a href="studlogin.jsp" style="margin-left: 1px;">Login</a></p>
        </body>
</html>
<script>
            function myFunction(){
                var name=document.form.name.value;
                if(name==""){
                   alert ("Please fill out all fields.");
                   return false;
                }
                var faname=document.form.faname.value;
                if(faname==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                 var moname=document.form.moname.value;
                if(moname==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                var dob=document.form.dob.required;
                if(dob==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                var email=document.form.email.value;
                if(email==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                 var mobileNo=document.form.mobileNo.value;
                if(mobileNo==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                var dept=document.form.dept.value;
                if(dept==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                var regno=document.form.regno.value;
                if(regno==""){
                   alert ("Please fill out all fields."); 
                   return false;
                }
                var sess=document.form.session.value;
                if(sess=="" ){
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