<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t1" uri="/WEB-INF/tlds/SubstrDescriptor.tld"%> 
<%@taglib prefix="t2" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 - Lab 7</title>
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

<h1>Lab 7 - Tags</h1>

<p>In this lab you will experiment with and write custom tags</p>

<p class="hint">Hint's show up like this</p>

<t2:prompt prompt="Why do we use tags?" answer="
YOUR ANSWER GOES HERE
" heading="" 
hint="Hint: DRY.  This lab uses tags for the prompt and answer.  
Put your inside the tag attribute called 'answer'.  
Don't use double quotes in your answer.  But it can span multiple lines."/>

<t2:prompt prompt="How many tag libraries are we declaring in index.jsp?" answer="" heading="Tag Libraries" hint="look at the top of the file"></t2:prompt>

<t2:prompt prompt="What files provide for (are needed in order to use) the 'substring' tag?  See the substring tag in use below" answer="" heading="Java Tags" hint="look at the top of this file for the uri attribute, then look in that file for the tagclass."></t2:prompt>

<t1:substring input="GOODMORNING" start="1" end="6"/> 

<t2:prompt prompt="What is the substring tag doing?" answer="" heading="Substring Tags" hint="play around with it and it's parameters, read the code."></t2:prompt>

<t2:prompt prompt="What files provide for the 'prompt' tag?" answer="" heading="JSP Tags" hint="look at the top of this file for the tagdir attribute."></t2:prompt>

<t2:prompt prompt="What files provide for the 'c' tag? (see below)" answer="" heading="JAR Tags" hint="libraries"></t2:prompt>

<c:out value="The 'core' library has a lot of useful functions, like conditionals and looping"></c:out>

<% boolean learning = true; %>

<c:if test="${pageContext.request.method=='GET'}">
Here is an example of a conditional.
</c:if>

Here is an example of looping:
<c:forEach var="i" begin="1" end="20" step="1" varStatus ="status">
<c:out value="${status.index}"/>
</c:forEach>


<h2>Write a tag</h2>

<p>Uncomment the code below and write a JSP tag (greeter.tag) that says "hello world" or "hello Anna" (or whatever name attribute is passed in).</p>

<p class="hint">Use prompt.tag as an example</p>

<%--
<t2:greeter name="Anna" color="blue"/>

<t2:greeter color="blue"/>
 --%>



</body>
</html>
