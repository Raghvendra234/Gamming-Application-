<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="/style.StyleRegistration.css">


<style>

*{
margin:0;
padding:0;
}
body
{
    background: url(../images/ipl.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
.div1
{

background-color: white;
width: 70%;
height: 657px;
margin-left: 150px;
margin-top: 100px;
padding-top: -130px;
border-radius: 30px;

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

form
{
padding-top: 60px;
}


input
{
padding-left: 15px;
}

.checkbox
{
margin: 10px 10px 10px 10px;
font-size: 30px;

}
h3
{
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


</style>
</head>

<body>


<div class="div1">
<form action="RegistrationWithJsp.jsp" method="post">
<h3>Registration Here</h3>
<table>

<tr class="tr1">
<td class="text">Enter your name </td>

<td >
<input type="text" name="name" placeholder="Enter your name" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Enter your lastname</td>
<td><input type="text" name="lastname" placeholder="Enter your lastname" required class="inputbox">
</td>
</tr>

<tr class="tr3">
<td class="text">Enter your email id</td>
<td><input type="email" name="email" placeholder="abc@gmail.com" required class="inputbox">
</td>
</tr>

<tr class="tr4">
<td class="text">Enter your password</td>
<td>
<input type="password" name="password" placeholder="*********" required class="inputbox">
</td>
</tr>

<tr class="tr5">
<td  class="text">Enter your number</td>
<td>
<input type="number" name="number" placeholder="+91**********" required class="inputbox">
</td>
</tr>

<tr class="tr6">
<td class="text">Date of birth</td>
<td><input type="date" name="dob" required class="inputbox"></td>
</tr>

<tr>
<td class="text">Gender</td>
<td class"td"><input type="radio" name="gender" value="Male" class="checkbox">Male
              <input type="radio" name="gender" value="Female">Female
</td>
</tr>

<tr>
<td class="text">Are you wicketkeeper</td>
<td><input type="radio" name="wictetkeeper" value="Yes" class="checkbox">Yes
    <input type="radio" name="wictetkeeper" value="No">No
</td>
</tr>

<tr>
<td class="text">Are you Left/Right</td>
<td><input type="radio" name="handed" value="Lefthanded"class="checkbox">Lefthanded
    <input type="radio" name="handed" value="Righthanded">Righthanded
</td>
</tr>

<tr>
<td class="text">Are you ( Player Category )</td>
<td>
    <input type="checkbox" name="pc" value="Batsman" class="checkbox">Batsman
    <input type="checkbox" name="pc" value="Bowler">Bowler
    <input type="checkbox" name="pc" value="Allrounder">Allrounder
</td>
</tr>

<tr>
<td>
<input type="Submit" value="Submit    "   id="submit">
<input type="reset" value="Cancel    " id="cancel">
</td>
</tr>

</table>
</form>
</div>




</body>
</html>






















