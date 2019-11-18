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
        <div style="margin-top:100px; position: absolute">
            <h1 style="font-size:50px">Student Management System</h1>
        <p class="pera">Student management system is an environment where all the process of the student in the institution is managed. It is done through the automated computerized method. Conventionally this system is done using papers, file and binders.This system saves the time of the student and of the administrator. It includes process like registration of the student’s details, assigning the department based on their course and maintenance of the record.This system reduces the cost and workforce required for this job.<br><br>
            As the system is online the information is globally present to everyone. This makes the system easy to handle and feasible for finding the omission with updating at the same time.As for the existing system, they use to maintain their record manually which makes it vulnerable to security. If filed a query to search or update in a manual system, it will take a lot of time to process the query and make a report which is a tedious job.As the system used in the institute is outdated as it requires paper, files and the binders, which will require the human workforce to maintain them.<br><br>To get registered in the institute, a student in this system one should come to the university.Get the forms from the counter while standing in the queue which consumes a lot of the student’s time as well as of management team. As the number of the student increases in the institute manually managing the strength becomes a hectic job for the administrator.This computerized system store all the data in the database which makes it easy to fetch and update whenever needed.</p>
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