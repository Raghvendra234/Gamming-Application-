<%@ page import="com.admindao.SelectDetails" %>
<%@ page import="dto.UploadEventsBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateWithJsp</title>
</head>
<body>

 <jsp:useBean id="upbean" class="dto.UploadEventsBean"></jsp:useBean>

 <jsp:setProperty property="*" name="upbean"/>
 
 <jsp:useBean id="dao" class="com.admindao.UpdateDetails"></jsp:useBean>

<% 
   int i=dao.update(upbean);

  if(i>0)
  {
	  out.println("UpdateWithJsp");
	  response.sendRedirect("update.jsp");
  }else
  {
	  out.println(i);
	  out.println("Something wrong !!! ");
  }

%>


</body>
</html>