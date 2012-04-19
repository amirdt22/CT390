<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 - lab8</title>
</head>
<body>
<h1>lab8 - JavaBeans</h1>

<h2>Simple Bean</h2>
<p>Here is a link to a simple <a href="simple.jsp?first=leo&last=marvin">jsp page that uses a bean</a>.  
View it and the corresponding bean.  Make sure you understand how they work together.</p>

<div class="answer whyNull">
</div>

<h2>Enhanced Bean</h2>
<p>
Here is a link to <a href="enhanced.jsp?first=leo&last=marvin&username=doc">a (broken) jsp page</a>.  
It uses the same bean but calls on properties that don't exist yet.
Add the username property.  Add a convenience method (not a property) 
called getInitials() which returns the user's initials (based on their first and last name)
</p>

<h2>Missing Bean</h2> 
<p>
<a href="missing.jsp?city=philadelphia&state=pa">This jsp page</a> refers to a bean that doesn't exist.  
Without modifying missing.jsp make it work.  
<span class="hint">create the bean with the correct name (AND package) and properties.  
Once you have created the bean, the link above should print "philadelphia, pa"</span>
</p>

<h2>Servlets + JSPs</h2>
<p>
<a href="SharedServlet">Write a servlet called "SharedServlet"</a> that initializes the UserBean 
with your first and last name (hardcoded, no need to get it from parameters unless you want to)
and passes control on to viewUser.jsp for display.  You should not modify viewUser.jsp.

<span class="hint">Take note of the scope and name the bean is using in viewUser.jsp  
You will probably use the RequestDispatcher we saw in previous labs.</span>
</p>

</body>
</html>
