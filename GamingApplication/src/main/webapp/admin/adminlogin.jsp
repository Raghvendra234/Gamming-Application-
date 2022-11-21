<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>login form</title>
	<link rel="stylesheet" type="text/css" href="./style/stylelogin.css">
<style>

*{
   margin: 0;
   padding: 0; 
	
}
body{
	background: url(../images/ipl.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
.form-box
{
	width: 300px;
	box-shadow: 0px 0 0px 0 white;
	margin: 100px auto;
	background: white;
	padding: 50px 25px;
	border-radius: 20px;
	height: 320px;
}
input
{
	width:  92%;
	height: 20px;
	border-radius: 30px;
	outline: none;
	border: 1px solid #999;
	padding: 10px;
}

.input_group
{
	margin:  30px auto;
	position: relative;
}
label
{
	position: absolute;
	top: -10px;
	left: 10px;
	background-color: white;
	padding: 0 7px;
}

button
{
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	background-color: red;
	color: white;
	font-size: 18px;
	cursor: pointer;

}
button:hover
{
background: black;	
transition: 0.5;

}
h2{
	text-align: center;
	width: 200px;
	box-shadow: 0 0 10px 0 #000;
	margin: -80px auto 30px;
	height: 40px;
   padding-top: 15px;
   border-radius: 30px;
   background-color: white;
   font-weight: 400;

}
p{
	text-align: center;
	margin: 30px auto;
}
.social img
{
width: 32px;
margin: 0 10px;
cursor: pointer;


}
.social
{
	text-align: center;
}



</style>

</head>
<body>








	
   <div class="form-box">
     <h2>Admin Login</h2>
   
     <form action="AdminLoginJsp.jsp" method="post">
   
     	<div class="input_group">
     	<label>Email id</label>
     	<input type="Email" name="email" placeholder="Enter email id">
        </div>
 
        <div class="input_group">
       <label>Password</label>
     	<input type="Password"  name="password" placeholder="Enter password">
        </div>
   
        <button type="submit">Loign &#10132</button>
     
   
     <p><a href="Registration.jsp"></a>
     <p>Login with social media account</p>
   
     <div class="social">
      
      <img src="../images/google.png">
      <img src="../images/facebook.png">
      <img src="../images/twitter.png">
    </form>
	</div>

</body>
</html>