<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 - lab4</title>
<style type="text/css">
.answer {
	border: 2px solid blue;
	padding: 2px;
}
.hint {
	color: grey;
}
</style>
</head>
<body>

<h1>Lab 4 - Filters, Listeners, Includes, Forwards</h1>

<p>Edit index.jsp putting your answers in the "answer" sections so they show up in the blue box.  <span class="hint">Hints appear in grey.</span></p>


<jsp:include page="WEB-INF/upperForm.html"></jsp:include>

<div class="wtf">
	<p>What happens when you submit "hello?" What happens when you submit "go away"?  What do you notice?  What do you wonder?  How/Why is this happening?
	<span class="hint">View the java files.  
	Search the project for the text you are looking for (in eclipse CTRL+H).  
	View the console in eclipse while you are submitting the form.</span></p>
	<div class="answer">
	
	
	</div>
</div>

<div class="listenerVsFilter">
	<p>What is the difference between a filter and a listener?  What would you use to keep track of sessions?  Why?</p>
	<div class="answer">
	
	
	</div>
</div>

<div class="include">
	<p>/WEB-INF/upperForm.html is the form responsible for posting to /UppercasingServlet included by both
	index.jsp (above) and UppercasingServlet.java.  Convince yourself of this by making an edit to 
	upperForm.html and viewing it in both places.  
	What is the code from UppercasingServlet.java that is responsible for this inclusion?</p>
	<div class="answer code">
	
	
	</div>
	
	<p>What is the difference between include() and forward()</p>
	<div class="answer includeVsForward">
	
	
	
	</div>
	
	<p>Why would we use include? <span class="hint">We're already seeing it in use</span></p>
	<div class="answer includeVsForward">
	
	
	
	</div>
</div>

<div class="forwardingVsRedirect">
	<p>This link goes to a <a href="ForwardServlet?stuff=hi_there">forwarding servlet</a>.  
	Where is it fowarding?  
	<span class="answer where">
	
	</span></p>
	
	<p>What is the code responsible for forwarding? <span class="hint">view ForwardServlet.java</span>
	<span class="answer code">
	
	</span></p>
	
	<p>We see that it is going to the UppercasingServlet, what is the URL? 
	<span class="answer url">
	
	</span>
	Why isn't it a different URL from the normal UppercasingServlet link?</p>
	<div class="answer whyURL">
	
	</div>
	
	<p>This link goes to a <a href="RedirectingServlet">redirecting servlet</a>.  View index.jsp, what is the URL for this link tag?
	<span class="answer link">
	
	</span>
	When you click on the link, what is the URL that you wind up at?
	<span class="answer link2">
	
	</span>
	
	Why are they different? 
	<span class="hint">View the code for RedirectServlet</span>
	</p>
	<div class="answer">
	
	
	</div>

</div>

</body>
</html>
