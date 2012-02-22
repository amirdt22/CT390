<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="prompt" required="true" %>
<%@ attribute name="heading" required="true" %>
<%@ attribute name="hint" required="true" %>
<%@ attribute name="answer" required="true" %>

<div class="section">
<h2><%= heading %></h2>

<p class="prompt"><%= prompt %></p>

<p class="hint"><%= hint %></p>

<div class="answer"><%= answer %></div>
</div>