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
 body{
	background-color:#ECF0F1 ;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
.col1
{
  background-image: url("../adminimages/update.jpg");
  background-repeat: no-repeat;


  height: 150px;
  width: 350px;
  background-color: #8E44AD;
  margin-right:80px;
  margin-top: 70px;
  border-radius: 10px;
  margin-left: 70px;
  font-size: 30px;
  }
.col2
{
  height: 150px;
  width: 350px;
  background-color: #000080;
  margin-left:20px;
  margin-top: 70px;
  border-radius: 10px;
  font-size: 30px;
}
.col3
{
   height: 150px;
   width: 350px;
   background-color: #800000;
   margin-right:80px;
   margin-left: 70px;
   margin-top: 70px;
   border-radius: 10px;
   font-size: 30px;
  
}
.col4
{
   height: 150px;
   width: 350px;
   background-color: red;
   margin-left:20px;
   margin-top: 70px;
   border-radius: 10px;
   font-size: 30px;
}
h2
{
padding-top: 60px; 
color: red;
padding-left: 280px;
}


  </style>
  </head>
  <body>
    
      
<div class="container-fluid bg-primary p-lg 2 ">
  <div class="row  bg-black text-white height:40px"   >
  
  <div class="col-lg-2 dbox">Admin Page</div>
  <div class="col-lg-2 dbox"><a href="../view_jsp/Events.jsp" class="head">ShowEvents</a></div>
  <div class="col-lg-2 dbox"><a href="../view_jsp/UploadEvents.jsp" class="head">UploadEvents</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/Registration.jsp" class="head">UpdateEvents</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/login.jsp" class="head">DeleteEvents</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/AboutUs.jsp" class="head">Something !!!</a></div>
  
  
  </div>
</div>
<h2> Welcome To Admin Page !!!  </h2>
  
  
    <div class="container text-center">
     <div class="row row-cols-2">
    <div class="col1" ><a href="../view_jsp/Events.jsp" class="head">ShowEvents</a></div>
    <div class="col2"><a href="../view_jsp/UploadEvents.jsp" class="head">UploadEvents</a></div>
    <div class="col3"><a href="Update.jsp">Update Events</a></div>
    <div class="col4"><a href="Delete.jsp">Delete Events </a></div>
  </div>
</div>
    <footer style="background-color: black, bottom:0px">
    <h2></h2>
    
    </footer>
      </body>
</html>