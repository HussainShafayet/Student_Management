<jsp:include page="base.jsp" />
<div style="margin-top: 100px;position: absolute; ">
    

    <div>
        <h1 style="text-align: center">Semester Fee Payment process</h1>
        <img alt="pay" src="pay.jpg"/>
    </div>
 
    <div style="margin-bottom: 20px">
        <h1 style="text-align: center">Send Your Transaction Id: </h1>
        <form  style="font-size: 25px;text-align: center" name="form" method="post" class="reg" action="admission_fee_process.jsp" require/>
            <div>
                <label class="form-label">Transaction Id:&nbsp;</label>
                <input style="border-radius: 10px;height: 30px" type="text" id="tran" name="tran" placeholder="093hdjhsdj" text-align="right" value="" required="tran">

            <button style="font-size: 17px"onclick=" myFunction();" type="submit" name="submit"class="btn btn-info" >Submit</button>
         </div>
             </form>
      
    </div>     
            
    

</div>     
    
    </body>  
</html>
<script>
            function myFunction(){
                var tran=document.form.tran.value;
                if(tran==""){
                   alert ("Please fill out this field.");
                   return false;
                }
               else{
                   alert("Data inserted Successfully")
                   return true;
               } 
             
            }
</script>
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