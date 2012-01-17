<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab 2 - Servlets</title>
</head>
<body>
<h1>Lab 2 - Servlets</h1>

<p>In this lab you'll write some servlet code!  I'll be giving points for good coding style as well as functionality.</p>

<h2>Hello World</h2>
<ol>
	<li>Create a servlet called HelloName</li>
	<li>write the doGet method to print out "hello world"</li>
	<li>save everything, run the lab2 project as usual</li>
	<li>if you got it all right <a href="HelloName">this link</a> should say "hello world"</li>
</ol>

<h2>Hello [Name] via link</h2>
<ol>
	<li>Modify your HelloName servlet</li>
	<li>change the doGet method to greet someone if there is a parameter named "name", otherwise it should just say "hello world" as above</li>
	<li>save and run, if you got it all right <a href="HelloName?name=bob">this link should greet "bob"</a> and <a href="HelloName?name=leo">this link should greet leo</a></li>
	<li>the first link still work and just say "hello world"</li>
</ol>

<div class='form'>
<h2>Hello [Name] via form</h2>
<ol>
	<li>Modify your HelloName servlet</li>
	<li>write the doPost method to greet someone, the parameter name is "name"</li>
	<li>save and run, if you got it all right when you submit the form below you will get a greeting for whatever name you send in</li>
	<li>try to keep your code <a href="http://en.wikipedia.org/wiki/Don't_repeat_yourself">DRY</a>, so if you have a bunch of duplication between your doGet and doPost method, try to factor it out</li>
	<li>make sure you didn't break the links above, all links and forms on this page should keep working</li>
</ol>

<form action="HelloName" method="POST">
	<input type="text" name="name">
	<input type="submit"/>
</form>
</div>


<h2>Hello [Name] via session</h2>
<ol>
	<li>Modify your HelloName servlet again</li>
	<li>when it gets a name have it store the name in the session (as an attribute named "name")</li>
	<li>save and run, if you got it all right, when you visit <a href="testName.jsp">this page</a> it should greet whatever name was last sent to the HelloName servlet</li>
</ol>

<h2>Hello [Name] cookie counter</h2>
<ol>
	<li>Modify your HelloName once more</li>
	<li>check to see how many cookies are in the request</li>
	<li>add a header in the response named "Cookie-Count" with the value "Hi NAME you have COUNT cookies" 
	replacing NAME and COUNT with the name of the user from the session attribute we set above and the number of cookies you found in the request</li>
	<li>save it a run it.  you will only be able to see the headers with some special tools (chrome's inspect element which is built in or 
	<a href="https://addons.mozilla.org/en-US/firefox/addon/live-http-headers/">firefox's live http headers</a>)</li>
</ol>

<h2>All Done</h2>
<ol>
	<li>Save and run through all the links above again (to make sure you don't have any regressions)</li>
	<li>if it all looks good, export it an upload it</li>
	<li>post any gotchas on the discussion board</li>
</ol>

<div class="troubleshooting">
	<h2>Troubleshooting</h2>
	<dl>
		<dt>HTTP Status 404 - /lab2/HelloWorld</dt>
		<dd>This means the servlet container (tomcat) isn't finding whatever it needs at the URL above.  Maybe you didn't create the servlet, or you created it with a different name?</dd>
	</dl>
</div>


<% session.setAttribute("message", "servlet's are easy"); %>

</body>
</html>
