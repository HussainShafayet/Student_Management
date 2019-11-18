<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="base.jsp" />
        <style>
            .pera{
                text-align: left;
                font-size: 20px;
                margin-top: 40px;
                padding: 20px;
            }
            h1{
                margin-top: 10px;
                text-align: center;
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
                 display: block;
                 margin-bottom: 2px;
             }
            }
        </style>
        <div style="margin-top:100px; position: absolute;">
            <h1 >Contact</h1>
            <address style="font-size: 40px;margin-left: 100px">
                Email:xyz@gmail.com<br>
                Phone:123456<br>
                Mobile:01********<br>
                Address:Administration Building,Sylhet Engineering College
            </address>
        </div>
        </body>
</html>
<script>
                         
                         pro=document.querySelector('#profile');
                         profull=document.querySelector('#profull');
                         var i=0;
                         pro.addEventListener('click', function(){
                             i=i+1;
                             if(i%2==1)
                             {
                                 profull.style="display: block;"
                                 pro.style="color: yellow;"
                             }
                             else
                             {
                                 profull.style="display: hidden;"
                                 pro.style="color: white;"
                             }
                             console.log(i)
                             
                         });
                         
                     </script>