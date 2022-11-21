<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UploadEvents</title>
<style>

*
{
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
padding-top: 75px;
background-color: #ECF0F1 ;
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



</style>





</head>
<body>

<marquee>  UploadEvents  </marquee>

<div class="div1">
<form action="UploadEventsWithJsp.jsp" enctype="multipart/form-data" method="post">
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
<td class="text">Enter the League name and place </td>
<td><input type="textarea" name="tname" placeholder=" League name & place" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry the fees of tournament </td>
<td><input type="text" name="fees" placeholder="Rs.00000" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Winner Team </td>
<td><input type="text" name="pwinner" placeholder="Prize for Winner Team" required class="inputbox">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Loser Team </td>
<td><input type="text" name="ploser" placeholder="Prize for Loser Team" required class="inputbox">
</td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Starting Date</td>
<td><input type="date" name="sdate" required class="inputbox"></td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Last Date</td>
<td><input type="date" name="ldate" required class="inputbox"></td>
</tr>


<tr class="tr6">
<td class="text">Enter Size of Over</td>
<td><input type="text" name="overs" required placeholder="" class="inputbox"></td>
</tr>


<tr class="tr6">
<td class="text">Upload your image</td>
<td><input type="file" name="images" required placeholder="" class="inputbox"></td>
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
</html>