<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	background: url(./images/Cimage.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}



<%--

*
{
margin:0;
padding:0;
}

body
{
    background: url(Cimage.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
.div1
{
background-color: gray;
width: 70%;
height: 657px;
margin-left: 150px;
margin-top: 200px;
border-radius: 30px;
padding-top: -130px;
}

.text
{

font-size: 23px;
padding-left: 30px;
}

.inputbox
{
border-radius:20px;
height: 27px;
width: 250px;
margin: 10px 10px 10px 10px;
}


h3
{
    text-align: center;
	width: 200px;
	box-shadow: 0 0 10px 0 #000;
	margin: -80px auto 30px;
	height: 40px;
    padding-top: 20px;
    border-radius: 30px;
    background-color: white;
    font-weight: 400;
}

--%>










  </style>


</head>
<body>

   
<div class="container-fluid bg-primary p-lg 2 ">
  <div class="row  bg-black text-white height:40px"   >
  
  <div class="col-lg-3 dbox" style="color:green" padding-left:>UploadEvents Page </div>
  
   <div class="col-lg-2 dbox"><a href="UploadEvents.jsp" class="head">UploadEvents</a></div>
 
 <div class="col-lg-2 dbox"><a href="./view_jsp/Events.jsp" class="head">Events</a></div>
  <!--
  <div class="col-lg-2 dbox"><a href="./view_jsp/Registration.jsp" class="head">Registration</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/login.jsp" class="head">Login</a></div>
  -->
  <div class="col-lg-2 dbox"><a href="./view_jsp/ContactUs.jsp" class="head">ContactUs</a></div>
  <div class="col-lg-2 dbox"><a href="./view_jsp/AboutUs.jsp" class="head">AboutUs</a></div>
  </div>
</div>
    
    
    <%-- 
    
    <div class="div1">
<form action="./servlets/UploadEventServ" method="post">
<h3>Upload Events</h3>
<table>

<tr class="tr1">
<td class="text">Enter your name </td>

<td >
<input type="text" name="name" placeholder="Enter your name" required class="inputbox">
</td>
</tr>

<tr class="tr3">
<td class="text">Enter your email id</td>
<td><input type="email" name="email" placeholder="abc@gmail.com" required class="inputbox">
</td>
</tr>

<tr class="tr5">
<td  class="text">Enter your number</td>
<td>
<input type="number" name="number" placeholder="+91**********" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Enter the Tournament name and place </td>
<td><input type="text" name="tname" placeholder="Tournament name & place" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry the fees of tournament </td>
<td><input type="text" name="fees" placeholder="Rs.00000" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Winner Team </td>
<td><input type="text" name="fwinner" placeholder="Prize for Winner Team" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Loser Team </td>
<td><input type="text" name="floser" placeholder="Prize for Loser Team" required class="inputbox">
</td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Starting Date</td>
<td><input type="date" name="Sdate" required class="inputbox"></td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Last Date</td>
<td><input type="date" name="Ldate" required class="inputbox"></td>
</tr>


<tr class="tr6">
<td class="text">Enter Size of Over</td>
<td><input type="text" name="over" required placeholder="" class="inputbox"></td>
</tr>



<tr>
<td>
<input type="Submit" value="Upload    "   id="submit">
<input type="reset" value="Cancel    " id="cancel">
</td>
</tr>









</table>
</form>
</div>
    
      </body>


--%>

</body>
</html>