<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Using a Simple User Bean</title>
</head>
<body>

<h1>Hi</h1>

<jsp:useBean id="user" class="lab8.UserBean">

<jsp:setProperty name="user" property="*"/>

<pre>
first name: <jsp:getProperty name="user" property="first"/>
	
last name:  <jsp:getProperty name="user" property="last"/>

full name:  <%= user.getFullName() %>
</pre>



</jsp:useBean>
</body>
</html>