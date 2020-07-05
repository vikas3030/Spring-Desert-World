<%-- 
    Document   : home
    Created on : Jan 1, 2017, 12:19:18 AM
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Dees Desert</title>
        

          <%@include file="head.jsp" %>
          
         
              
        <script>
           
        ${msg1}           
             
 

            

$(document).ready(function() {
   $('#frmlogin').formValidation({
       
       framework: 'bootstrap',
       container:'tooltip',
       icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        live:'disabled',
        fields: {
            
            txt_username: {
                validators: {
                    notEmpty:{
                         message: 'Userid is required'
                    },
                    emailAddress: {
                        message:'Invalid format'
                    }
                }
            },
            txt_password: {
                validators: {
                    notEmpty:{
                         message: 'Password is required'
                    }
                    
                }
            }
        }
       
        });
    });
    
        </script>
        
    </head>
    <body>
        <%
        
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        
       
        %>
        <%
           session=request.getSession(true);
          
         %>
        <div class="row" >
             <div class="col-md-12">
                 <div class="container-fluid">
                     <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                                                
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                          <li data-target="#myCarousel" data-slide-to="1"></li>
                          <li data-target="#myCarousel" data-slide-to="2"></li>
                          <li data-target="#myCarousel" data-slide-to="3"></li>
                          <li data-target="#myCarousel" data-slide-to="4"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active"  >
                            <img src="images/image1.jpg" alt="Chania" style="height:600px;width:100%">
                          </div>

                          <div class="item" >
                              <img src="images/image2.jpg" alt="Chania" style="height:600px;width:100%"> 
                          </div>

                          <div class="item">
                              <img src="images/image3.jpg" alt="Flower" style="height:600px;width:100%">
                          </div>
                          
                          <div class="item">
                              <img src="images/image4.jpg" alt="Flower" style="height:600px;width:100%">
                          </div>
                            
                          <div class="item">
                              <img src="images/image5.jpg" alt="Flower"  style="height:600px;width:100%">
                          </div>
                        </div>
    
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"  ></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right " aria-hidden="true"  ></span>
                        <span class="sr-only">Next</span>
                      </a>
                </div>
            </div>
             </div>
</div>
        
        
        

    </body>
</html>
