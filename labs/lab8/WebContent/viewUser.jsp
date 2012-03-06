<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="lab8.UserBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Using a Simple User Bean</title>
</head>
<body>

<h1>Who just got done lab8?</h1>

<jsp:useBean id="user" class="lab8.UserBean" scope="session"/>

<marquee>
<h1 style="font-size: 300%; color: blue;">
<%= user.getFullName() %>
</h1>
</marquee>
</body>
</html>