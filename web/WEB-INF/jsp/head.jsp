<%-- 
    Document   : head
    Created on : Jan 9, 2017, 4:35:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Dees Desert</title>
       
    
        
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/formValidation.css"/> <%--used for validation--%>
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css"/> 
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/breadcrumbs.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-magnify.css">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/magnify.css">
        
         <script src="bootstrap-3.3.7-dist/js/jquery-3.1.1.js"></script>
         <script src="bootstrap-3.3.7-dist/js/jquery-1.12.0.js"></script>
         <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
         <script src="bootstrap-3.3.7-dist/js/moment.js"></script>
         <script src="bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
         <script src="bootstrap-3.3.7-dist/js/formValidation.js"></script> <%--used for validation--%>
         <script src="bootstrap-3.3.7-dist/js/bootstrap_1.js"></script>  <%--used for validation--%>
         <script src="bootstrap-3.3.7-dist/js/bootstrap-magnify.js"></script>

         
         
        
       <script>
                  
       
$(document).ready(function(){
   
        $.get("GetProductType",function(data, status){
       
        var res = data.split("-");
        
      
        for (var i in res) 
        {
                if(res[i]!='')
                {
                 
                    $("#u1").append("<li><a href='displayproducts.jsp?txtsearch="+res[i]+"'>"+res[i]+"</a></li>");
                   
                }
            
           
        }
        
    });
        
   
});

           $(document).ready(function() {
    $('#frmsearch').formValidation({
       
        framework: 'bootstrap',
         container: 'popover',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        live:'disabled',
        container:'popover',
        fields: {
             
            txtsearch: {
                validators: {
                    notEmpty:{
                         message: 'Enter some value'
                    }
                }
            }
            
        }
          
    });
});
           $(document).ready(function(){
                
                 
                  var m=window.location.pathname.substring(window.location.pathname.lastIndexOf("/")+1);
                 
                  if(m=='signup.jsp' || m=='Login' || m=='Signup')
                  {
                         
                      $("#d1").hide();
                   
                  }
                  
           });
         
                        
$(document).ready(function(){
    $("#login").click(function(){
        $("#modal_login").modal();
    });
});
</script>
<style>
    .row {
        height: 100px;
       
      }
    @media screen and (max-width: 1200px) {
      .row {
        height: auto;
     
      }
      
    }
</style>


    </head>
    
    <body>
        <%
        int count=0;
            session=request.getSession(false);
            java.util.Enumeration e=session.getAttributeNames();
            while(e.hasMoreElements())
            {
                String n=(String)e.nextElement();
                if(n.charAt(0)=='P')
                {
                    count++;
                }
            }    
        %>
       
             <div class="container-fluid">
                 <div class="row" style="background-color:#ffcccc;padding-top: 20px;height: 100%">
                <div class="col-md-3">
            <p style="font-size: 40px;font-weight: bolder;font-style: oblique;font-family:cursive;padding-left: 1%"><a href="home.jsp" style="text-decoration: none;color : #000">Dees Desert</a></p>
            <p style="font-size: 15px;font-family:monospace;margin-top: -10px;margin-left: 40px">World of Deserts </p>
           </div>
                
                <div class="col-md-3 col-md-offset-2">
            <p style="font-size: 20px;font-weight: normal"><i class="fa fa-phone-square"></i> 1800-156-624</p>
            <p style=";font-size: 20px;font-weight: normal"><i class="fa fa-envelope-square"></i> feedback@deesdesert.com</p>
                </div>
                
                
                
                     Session<%=session.getAttribute("pass")%>
             
              <%
                if(session.getAttribute("userId")!=null && ((String)session.getAttribute("userId")).equalsIgnoreCase("admin@deserts.com"))
                {
              %>
              
              <div class="col-md-2 col-md-offset-2" id="d2">
                  
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><p style="text-align: center;cursor: pointer;"><i class="fa fa-2x fa-user-secret "></i></p>
                <p style="text-align: center;font-size: 15px;font-weight: bolder;cursor: pointer">Hello,<%=session.getAttribute("userId") %> <i class="fa fa-angle-down"></i></p></a>
              <ul class="dropdown-menu dropdown-menu-right">
                  <li><a href="addproduct.jsp">Add Product</a></li>
                  <li><a href="viewproduct.jsp">View/Remove Product</a></li>
                  <li><a href="editproduct.jsp">Edit Product</a></li>
                  <li><a href="vieworders.jsp">View Orders</a></li>
                  <li><a href="viewcustomer.jsp">View Customers</a></li>
                  <li><a href="viewfeedback.jsp">View Feedback</a></li>
                  <li><a href="addtype.jsp">Add Product Type</a></li>
                  <li><hr></hr></li>
                  <li><a href="addcustomtype.jsp">Add Custom Cake Type</a></li>
                  <li><a href="viewcustomorders.jsp">View Custom orders</a></li>
                  <li><hr></hr></li>
                  <li><a href="ViewOrders_Report">View Orders Report</a></li>
                  <li><a href="ViewCustomer_Report">View Customers Report</a></li>
                  <li><a href="ViewProducts_Report">View Products Report</a></li>
                   <li><hr></hr></li>
                   <li><a href="changepassword.jsp" style="margin-top:-10px">Change Password</a></li>
                   <li><a href="editprofile.jsp">Edit Profile</a></li>
                   <li ><a href="signout.htm" >Sign out</a></li>
            </ul>  
              </div> 
              <%
                }
                else if(session.getAttribute("A1")!=null)
                {
                    
              %>
               <div class="col-md-2 col-md-offset-2" id="d2">
                  <form method="post" action="Cart" style="display:inline-block;">
                       <input type="hidden" name="cartval" value="cart"></input>
                <button type="submit" class="glyphicon glyphicon-shopping-cart" style="border:none;font-size:50px;cursor: pointer;background-color: #ffcccc"><span class="badge" style="margin-left:-30px;margin-top: -35px;background-color:whitesmoke;color:black ;font-size: 12px"><%= count %></span></button>
                   </form>
            <a class="dropdown-toggle" style="display:inline-block" data-toggle="dropdown" href="#"><p style="text-align: center;cursor: pointer;"><i class="fa fa-2x fa-user-circle-o"></i></p>
                <p style="text-align: center;font-size: 15px;font-weight: bolder;cursor: pointer">Hello,<%=session.getAttribute("A2") %> <i class="fa fa-angle-down"></i></p></a>
              <ul class="dropdown-menu dropdown-menu-right">
                  <li><a href="vieworders.jsp">View Orders</a></li>
                  <li><a href="viewfeedback.jsp">View Feedback</a></li>
                   <li><a href="customcake.jsp">Order Custom Cake</a></li>
                   <li><hr></hr></li>
                   <li><a href="changepassword.jsp" style="margin-top:-10px">Change Password</a></li>
                   <li><a href="editprofile.jsp">Edit Profile</a></li>
                   <li ><a href="signout.jsp" >Sign out</a></li>
            </ul>  
              </div> 
             <% 
                }
                else
                {    
               %>
               <div class="col-md-2 col-md-offset-2" id="d1">
                   <form method="post" action="Cart" style="display:inline-block;">
                       <input type="hidden" name="cartval" value="cart"></input>
                <button type="submit" class="glyphicon glyphicon-shopping-cart" style="border:none;font-size:50px;cursor: pointer;background-color: #ffcccc"><span class="badge" style="margin-left:-30px;margin-top: -35px;background-color:whitesmoke;color:black ;font-size: 12px"><%= count %></span></button>
                   </form>
                <a href="loginsignupdisplay.htm" style="display:inline-block"><p style="text-align: center;cursor: pointer;"><i class="fa fa-2x fa-user "></i></p>
            <p style="text-align: center;font-size: 15px;font-weight: bolder;cursor: pointer;margin-left: 10px">Login/Sign up</p></a>
                </div>
               <%
                             }
                %>
             </div>
                     
            </div>
</div>
        
        <nav class="navbar navbar-default" style="background-color:#ffcccc;" >
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li><a class="glyphicon glyphicon-home" href="home.jsp" style="color:black;font-weight: bold;font-size: 18px">    </a></li>
      <li><a href="aboutus.jsp" style="color:black">Company profile</a></li>
      <li><a href="contactus.jsp" style="color:black">Contact us</a></li>
      <li><a href="feedback.jsp" style="color:black">Suggestions/Feedback</a></li>  
      <li><a href="workwithus.jsp" style="color:black">Careers</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:black">Display All
        <span class="caret"></span></a>
        <ul class="dropdown-menu" id="u1">
         
        </ul>
      </li>
      
    </ul>
       <form class="navbar-form navbar-right" action="displayproducts.jsp" style="padding-right:40px" id="frmsearch">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="txtsearch">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>

        
      
    </body>
    
      
</html>
