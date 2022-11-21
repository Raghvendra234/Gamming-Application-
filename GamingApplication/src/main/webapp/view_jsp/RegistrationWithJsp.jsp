<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="rebean" class="dto.RegisterBean"></jsp:useBean>

<jsp:setProperty property="*" name="rebean"/>

<jsp:useBean id="redao" class="dao.RegisterDao"></jsp:useBean>

<%  int i=redao.insertUser(rebean); 

if(i>0)
{
	out.println("Success");
	
}else
{
	out.println("Something wrong");
}

%>




</body>
</html>