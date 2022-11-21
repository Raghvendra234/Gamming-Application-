<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="upbean" class="dto.UploadEventsBean"></jsp:useBean>

<jsp:setProperty property="*" name="upbean"/>

<jsp:useBean id="updao" class="dao.UploadEventDao"></jsp:useBean>

<%  int i=updao.insertEvent(upbean); 

if(i>0)
{
	out.println("Success");
	
}else
{
	out.println("Something wrong");
}

%>>