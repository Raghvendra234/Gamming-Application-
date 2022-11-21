<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="deletedao" class="com.admindao.DeleteEventsDao"></jsp:useBean>

<%="Delete with Jsp" %>

<% String sid=request.getParameter("id");
    int id=Integer.parseInt(sid);

out.println(id);
int i=deletedao.delete(id);
if(i>0)
{
	response.sendRedirect("Delete.jsp");
}else
{
	out.println("Something wrong !!!");
}


%>
</body>
</html>