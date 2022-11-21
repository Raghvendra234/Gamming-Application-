<%@page import="dbconn.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event</title>
<style>
*
{
margin:0;
padding:0;
}



{
background-color: #abb8c3;;
}
.div
{
width:90%;
height: 789px;
background-color: #ECF0F1;
background-colo 
}

.text
{
font-size: 20px;
    color: #151B54;
}

.output
{
font-size: 20px;


}

</style>

</head>
<body>
<h2>Events Here</h2>

<div class="div">
<form actiot="*" method="post"> 
<table>
<%
try
{
Connection connection=ConnectionProvider.getConnection();	
	
Statement statement=connection.createStatement();

ResultSet rs=statement.executeQuery("Select * from uploadevents");

while(rs.next())
{
	%>
	  <tr>
<td class="text">League Name</t>
<td class="output"><%="Cricket League"%></td>
</tr>
	
	
	


<tr>
<td class="text">Name</t>
<td class="output"><%=rs.getString(2)%></td>
</tr>

<tr>
<td class="text">Email</t>
<td class="output"><%=rs.getString(3)%></td>
</tr>	

<tr>
<td class="text">Number</t>
<td class="output"><%=rs.getString(4)%></td>
</tr>

<tr>
<td class="text">League Name</t>
<td class="output"><%=rs.getString(5)%></td>
</tr>

<tr>
<td class="text">Entry Fees</t>
<td class="output"><%=rs.getString(6)%></td>
</tr>

<tr>
<td class="text">Prize for Winner Team</t>
<td class="output"><%=rs.getString(7)%></td>
</tr>

<tr>
<td class="text">Prize for Loser Team</t>
<td class="output"><%=rs.getString(8)%></td>
</tr>

<tr>
<td class="text">League Starting Date</t>
<td class="output"><%=rs.getString(9)%></td>
</tr>

<tr>
<td class="text">League End Date</t>
<td class="output"><%=rs.getString(10)%></td>
</tr>

<tr>
<td class="text">Size of Over</t>
<td class="output"><%=rs.getString(11)%></td>

</tr>


<tr>
<td class="text">Next </t>
<td class="output"><%="Next League Name" %></td>
<br>
</tr>




<% 
 }
}catch(Exception e)
{
e.printStackTrace();
}
%>
</table>
</form>
</div>
</body>
</html>













