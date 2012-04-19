<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 Lab 6</title>
<style type="text/css">
.answer {
	border: 2px solid blue;
	padding: 2px;
}
.hint {
	color: grey;
}
.grade {
  border: 1px solid red;
}
</style>
</head>
<body>

<h1>Lab 6 - Advanced JSP</h1>

<p>In this lab you will be writing your own JSPs</p>

<h2>Create a JSP</h2>
<a href="first.jsp">This link</a> is broken, it points to "first.jsp" which doesn't exist yet.  Create it.  
<span class="hint">In eclipse right click your project - New jsp file.  Name it "first.jsp".  
It should appear at the same level as index.jsp</span>

<h2>Customize Your JSP</h2>

<p>Edit first.jsp so that the link above says "hello world"<span class="hint">You will need to do this inside the "body" 
tags so it shows on the page.  Compare to index.jsp if needed.</span>

<h2>Take some parameters</h2>
<p>Edit first.jsp so that it greets a visitor.  <a href="first.jsp?visitor=fay">This link should say "hello fay"</a>.  And <a href="first.jsp?visitor=sigmund">This link should say "hello sigmund"</a>  The link above should still greet "world".  
<span class="hint">The parameter name is visitor.  
You should use at least one scriptlet and one jsp expression.</span></p>

<h2>GET vs POST</h2>
<p>Your JSP is currently handling GET.  How would it handle POST?  
Think about that for a little then click the submit button below</p>

<form action="first.jsp" method="POST">
	<input type="text" value="lily" name="visitor"/>
	<input type="submit"/>
</form>

<p>What happens and why?</p>
<div class="answer">

</div>

<h2>Sessions</h2>
<p>Store the visitor's name in a session attribute named "visitor".</p>

<p>Here is a <a href="session.jsp">broken jsp page</a>.  
It should print the name of the session attribute last stored but there is an error. 
Fix it then visit it, it should print out the value you stored in the session.</p>
<span class="hint">Look at the directives on that page.</span>
<p>How did you fix it?</p>
<div class="answer">

</div>

<p>At what point in the JSPs life cycle did this error happen?</p>
<div class="answer">

</div>

<h2>Another error</h2>
<p>Here is <a href="oops.jsp">another jsp error</a>.  You don't need to fix this one.  
At what point in the JSP lifecycle is this error happening?</p>

<p class="hint">this isn't a compiler error.  look at the stacktrace</p>

<div class="answer">

</div>

</body>
</html>
