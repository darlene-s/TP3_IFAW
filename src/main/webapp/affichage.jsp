<%@ include file="navbar.jsp"%>
<%@ include file="header.jsp"%>
<%@ page import="java.util.Date" %>
<div class="container pt-2 pb-5">
<h2>Session log</h2>
<%

if (session != null) {

    out.println("Session ID: " + session.getId() + "<br>");
    out.println("Max Inactive Interval: " + session.getMaxInactiveInterval() + " seconds<br>");
    out.println("Creation Time: " + new Date(session.getCreationTime()) + "<br>");
    out.println("Last Accessed Time: " + new Date(session.getLastAccessedTime()) + "<br>");
} 
%>
</div>