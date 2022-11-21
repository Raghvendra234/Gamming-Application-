<%@ page import="com.admindao.SelectDetails" %>
<%@ page import="dto.UploadEventsBean" %>
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


<% int id=Integer.parseInt(request.getParameter("id"));

    out.println(id);
 UploadEventsBean u=SelectDetails.getDetailsbyId(id);
%>







<marquee>  UploadEvents  </marquee>

<div class="div1">
<form action="UpdateWithJsp.jsp" method="post">
<h3>Update Events</h3>
<table>

<tr class="tr1">
<td class="text"> </td>
<td >
<input type="hidden" name="id"  required class="inputbox" value="<%=u.getId() %>">
</td>
</tr>


<tr class="tr1">
<td class="text">Enter your name </td>
<td >
<input type="text" name="name"  required class="inputbox" value="<%=u.getName() %>">
</td>
</tr>

<tr class="tr3">
<td class="text">Enter your email id</td>
<td><input type="email" name="email" required class="inputbox" value="<%=u.getEmail() %>">
</td>
</tr>

<tr class="tr5">
<td  class="text">Enter your number</td>
<td>
<input type="number" name="number"  required class="inputbox" value="<%=u.getNumber() %>">
</td>
</tr>

<tr class="tr2">
<td class="text">Enter the League name and place </td>
<td><input type="textarea" name="tname"  required class="inputbox" value="<%=u.getTname() %>">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry the fees of tournament </td>
<td><input type="text" name="fees" required class="inputbox" value="<%=u.getFees() %>">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Winner Team </td>
<td><input type="text" name="pwinner" required class="inputbox" value="<%=u.getPwinner() %>">
</td>
</tr>

<tr class="tr2">
<td class="text">Entry The Prize for Loser Team </td>
<td><input type="text" name="ploser" required class="inputbox" value="<%=u.getPloser() %>">
</td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Starting Date</td>
<td><input type="date" name="sdate" required class="inputbox" value="<%=u.getSdate() %>"></td>
</tr>

<tr class="tr6">
<td class="text">Enter the tournament Last Date</td>
<td><input type="date" name="ldate" required class="inputbox"  value="<%=u.getLdate() %>"></td>
</tr>


<tr class="tr6">
<td class="text">Enter Size of Over</td>
<td><input type="text" name="overs" required placeholder="" class="inputbox" value="<%=u.getOvers() %>"></td>
</tr>



<tr>
<td>
<input type="Submit" value="Update    "   id="submit">
<input type="reset" value="Cancel    " id="cancel">
</td>
</tr>


</table>
</form>
</div>
</body>
</html>