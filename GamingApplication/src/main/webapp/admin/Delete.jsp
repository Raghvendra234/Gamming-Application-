<%@page import="dbconn.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
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
width: 3000px;
margin-right:  10px;

 
}

.text
{
    font-size: 20px;
    color: #151B54;
    width: 300px;
    text-align: center;
}

.output
{
font-size: 20px;
text-align: center;
text-decoration: none;
}

table
{
margin-top: 50px;
margin-left: 20px;
}

#id1
{
text-align: center;

}
table,td,tr{
      border: 1px solid black; 
      border-collapse: collapse ;  
    
}


</style>

</head>
<body>
<h2>Delete Here</h2>

<div class="div">
<form action="DeleteWithJsp.jsp" method="get"> 
<table border=2>
<%
try
{
Connection connection=ConnectionProvider.getConnection();	
	
Statement statement=connection.createStatement();

ResultSet rs=statement.executeQuery("Select * from uploadevents");


%>
<tr>
<th class="text">Id</t>
<th class="text">Name</t>
<th class="text">Email id</t>
<th class="text">Number</t>
<th class="text">League Name</t>
<th class="text">Entry Fees</t>
<th class="text">Prize for Winner Team</t>
<th class="text">Prize for Loser Team</t>
<th class="text">League Starting Date</t>
<th class="text">League Ending Date</t>
<th class="text">Size of Overs</t>
<th class="text">Delete Records </t>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="output" id="id1"><%=rs.getInt("id")%></td>
<td class="output" id="name1"><%=rs.getString(2)%></td>
<td class="output"><%=rs.getString(3)%></td>
<td class="output"><%=rs.getString(4)%></td>
<td class="output"><%=rs.getString(5)%></td>
<td class="output"><%=rs.getString(6)%></td>
<td class="output"><%=rs.getString(7)%></td>
<td class="output"><%=rs.getString(8)%></td>
<td class="output"><%=rs.getString(9)%></td>
<td class="output"><%=rs.getString(10)%></td>
<td class="output"><%=rs.getString(11)%></td>
<td class="output"><a href="DeleteWithJsp.jsp?id=<%=rs.getInt("id")%>">Delete</a></td>
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













