<%@page import="dbconn.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
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

 
}

.text
{
    font-size: 20px;
    color: #151B54;
    width: 300px;
    text-align: center;
    height: 55px;
    
}

.output
{
font-size: 20px;
text-align: center;
}
tr
{
height: 30px;
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
<h2>Update Here</h2>

<div class="div">
<form actiot="*" method="post"> 
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
<th class="text">Update Records </t>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="output" id="id1"><%=rs.getInt(1)%></td>
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
<td class="output"><a href="updateform.jsp?id=<%=rs.getInt(1)%>">Edit</a></td>
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













