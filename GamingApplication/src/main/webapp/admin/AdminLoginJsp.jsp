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

<jsp:useBean id="adminBean" class="com.adminbean.AdminBean"></jsp:useBean>

<jsp:setProperty property="*" name="adminBean"/>

<jsp:useBean id="adminDao" class="com.admindao.AdminDao"></jsp:useBean>

<%
   String  res=adminDao.adminLogin(adminBean);
   if(res.equalsIgnoreCase("success"))
   {
 %>
 <jsp:forward page="AdminHeader.jsp"></jsp:forward>
  <% 
   }
   else
   {
   out.println(res);
   }
%>


</body>
</html>