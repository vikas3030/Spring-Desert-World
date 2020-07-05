<%-- 
    Document   : signup1
    Created on : Jan 9, 2017, 5:22:15 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="head.jsp" %>
        <script>
            $(document).ready(function() {
    $('#frmsignup1').formValidation({
       
        framework: 'bootstrap',
         container: 'tooltip',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        live:'disabled',
        fields: {
             
            txtotp1: {
                validators: {
                    notEmpty:{
                         message: 'Please enter OTP value'
                    }
                   
                }
            }
            
        }
          
    });
});
        </script>
    </head>
    <body>
       
        <div class="row" style="padding-top:100px" >
         <div class="col-md-4 col-md-offset-4" >
           ${msg}
             <legend style="border-bottom:2px solid">Enter OTP value</legend>
                  <form role="form" name="frmsignup1" id="frmsignup1" action="signupotp.htm" modelAttribute="newuser" method="post"  >
                    <div class="form-group">
                        <input type="text" class="form-control" name="enteredotp" placeholder="Input OTP here" ${autofocus} ${disabled} >
                    </div>
                           <input type="hidden"  name="fname" value="${fname}">  
                            <input type="hidden"  name="lname" value="${lname}">
                             <input type="hidden"  name="mobile" value="${mobile}">
                              <input type="hidden"  name="emailid" value="${emailid}">
                              <input type="hidden"  name="secretquestion" value="${secretquestion}">
                              <input type="hidden"  name="answer" value="${answer}">
                               <input type="hidden"  name="otp" value="${otp}" >
                               <input type="hidden"  name="password" value="${password}" >
                    <div class="form-group ">
                        <button type="submit"  class="btn btn-danger"  ${disabled}  >Submit</button>
                    </div>
              </form>                            
            </div>
    </div>
      
    </body>
</html>
