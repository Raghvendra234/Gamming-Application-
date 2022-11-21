<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <style>
  .head
  {
  color:white;
  text-decoration:none;
  }
  .dbox
  {
  padding-top:10px;
  height:50px;
  font-size: 20px;
  }
 img
 {
 padding: 0;
 margin: 0;
 padding-right: 120px;
 width: 1213px;
 height: ;
 background-repeat: no-repeat;
 background-size: cover;
 
 }
  </style>
  </head>
  <body>
  
           <!---   Container---------->
  
   <!--   <div class="container-sm bg-secondary text-white">100% wide until small breakpoint</div>
    <div class="container-md bg-seccess text-white">100% wide until medium breakpoint</div>
    <div class="container-lg bg-danger text-white">100% wide until large breakpoint</div>
    <div class="container-xl bg-warning text-white">100% wide until extra large breakpoint</div>
    <div class="container-xxl bg-dark text-white">100% wide until extra extra large breakpoint</div>
    -->
    
    <!--  column -->
    
    
    
<div class="container-fluid bg-primary p-lg 2 ">
  <div class="row  bg-black text-white height:40px"   >
  
  <div class="col-lg- dbox">Here Logo</div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/Events.jsp" class="head">Events</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/login.jsp" class="head">UploadEvents</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/Registration.jsp" class="head">Registration</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/login.jsp" class="head">Login</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/AboutUS.jsp" class="head">AboutUs</a></div>
  <div class="col-lg-2 dbox"><a href="./admin/adminlogin.jsp" class="head">Admin</a></div>
  
  </div>
      <div class="div2">
  
  <img src="./images/ipl.jpg">
  
  
  </div>
  
  
</div>
    
    <footer style="background-color: black, bottom:0px">
    <h2></h2>
    
    </footer>
      </body>
</html>