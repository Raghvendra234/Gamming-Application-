<%@page import="dbconn.ConnectionProvider"%>
<%@page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    



    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
		{
		Connection connection=ConnectionProvider.getConnection();	
			
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		PreparedStatement psmt=connection.prepareStatement("Select Email from registration where email=? and password=? ");
		psmt.setString(1, email);
		psmt.setString(2, password);
		ResultSet rs=psmt.executeQuery();
		if(rs.next())
		{
			RequestDispatcher rd=request.getRequestDispatcher("successhome.jsp");
			rd.forward(request, response);
			
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			
			out.println("<font-color=red size 18>Login Fialed !!!");
			
		}
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
%>
</body>
</html>