<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  .answer {
    border: 1px solid blue;
  }
  .grade {
    border: 1px solid red;
  }
</style>
<title>Lab 0</title>
</head>
<body>
<h1>Lab 0 - Survey</h1>

<h2>Fill in the tags</h2>

<p>For example, our course number is <span class="answer courseNumber">CT390</span></p>

<p>My name is <span class="answer name"></span>.</p>

<p>I'm taking this class because <span class="answer reason"></span>.</p>

<div>
<p>My technology wordbank looks like this:</p>
<ul class="wordbank answer">
  <li><span class="buzzword"></span></li>
  <li><span class="buzzword"></span></li>
  <!-- add as many as you want -->
</ul>
<p class="hint">List things like languages, technologies, certifications, buzzwords.</p>
</div>

<p>My GPA is <span class="gpa howimportant answer"></span> to me.  I need a <span class="targetGrade answer"></span>.</p>

<p>I <span class="answer certificationAspirations"></span> going for the SCWCD certification</p>

<p>Oh, I also wanted to tell you <span class="answer additionalNotes"></span></p>

<h2>All Done?</h2>
<p>Once you've filled all this in:
<ol>
	<li>save it</li>
	<li>run it</li>
	<li>export it</li>
	<li>submit it</li>
</ol>
</body>
</html>
