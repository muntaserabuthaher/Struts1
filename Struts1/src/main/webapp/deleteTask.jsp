<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Task</title>
</head>
<body>

<%@page import='info.java.tips.DataBase'%>
<jsp:useBean id="s" class="info.java.tips.form.Task"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  

<%  
DataBase.deleteTask(s);  
response.sendRedirect("ViewTask.jsp");  
%> 

</body>
</html>