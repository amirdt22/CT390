<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Example</title>
</head>
<body>

<%-- this is a JSP comment --%>
<% //this also works as a comment, it's a JAVA comment though %>
<!-- this is an HTML comment -->

<%! int visitorCounter = 0; %>

<% visitorCounter++; %>

<h1>Welcome</h1>

<p>You are visitor number <%= visitorCounter %></p>

<% if(visitorCounter > 4) { %>
Wow, this site is getting popular!
<% } %>

<% int altCounter = 0; %>
<% altCounter++; %>


<p>Here is another counter: <%= altCounter %></p>


<% //doesn't this look familiar?  request.getParameter can be called from a JSP too!
String statement = request.getParameter("say");
if (statement == null) {
	statement = "";
}
%>
<strong><%= statement %></strong>

<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

</body>
</html>