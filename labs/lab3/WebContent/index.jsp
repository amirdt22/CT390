<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 - lab3</title>
<style type="text/css">
.answer {
	border: 2px solid blue;
	margin: 2px;
}
</style>
</head>
<body>
<h1>lab3 - structure and deployment</h1>

<p>In this lab you will explore the structure of the war files you have been creating.</p>

<ol>
	<li>export this project as a war file</li>
	<li>extract the war file (see note below)</li>
	<li>browse the contents of the extracted war file</li>
	<li>edit index.jsp to show the structure of lab3.war.</li>
</ol>

<div class="answer">
<p>structure of lab3.war</p>
<ul>
	<li>/index.jsp</li>
	<li>/META-INF
		<ul>
			<li>/????</li>
		</ul>
	</li>
	<li>/WEB-INF
		<ul>
			<li>/????</li>
			<li>/????
				<ul>
					<li>/????</li>
				</ul>
			</li>
			<li>/????
				<ul>
					<li>/????</li>
				</ul>
			</li>
		</ul>
	</li>
	
</ul>
</div>

<h2>Troubleshooting</h2>

<p>A war file is just an archive, like a zip, tar, jar.  You can use standard extraction tools, like winrar on windows.  Or "jar xvf lab3.war" in the terminal on linux.</p>

<p>Eclipse can also display the contents of a war/jar file.  If you right click the project -- build path -- configure build path -- add external jar -- navigate and select the war file.  It now will show up under the project in the "Project Explorer" -- Java Resources -- Libraries -- lab3.war.  Expand it. </p>

</body>
</html>