<%@ include file="navbar.jsp"%>
<%@ include file="header.jsp"%>

<%
    session.setAttribute("lastName", request.getParameter("lastName"));
    session.setAttribute("middleName", request.getParameter("middleName"));
    session.setAttribute("firstName", request.getParameter("firstName"));
    session.setAttribute("gender", request.getParameter("gender"));
    session.setAttribute("email", request.getParameter("email"));
    session.setAttribute("phone", request.getParameter("phone"));
    session.setAttribute("contact", request.getParameter("contact"));
%>

<div class="container pt-2 pb-5">
    <div class="container my-5 py-3 rounded" id="contactInfo">
        <h1>Contact information</h1>
    </div>
    
    <table class="table table-striped">
        <tr>
            <th>Last Name</th>
            <td><%= session.getAttribute("lastName") %></td>
        </tr>
        <tr>
            <th>Middle Name</th>
            <td><%= session.getAttribute("middleName") %></td>
        </tr>
        <tr>
            <th>First Name</th>
            <td><%= session.getAttribute("firstName") %></td>
        </tr>
        <tr>
            <th>Gender</th>
            <td><%= session.getAttribute("gender") %></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><%= session.getAttribute("email") %></td>
        </tr>
        <tr>
            <th>Phone Number</th>
            <td><%= session.getAttribute("phone") %></td>
        </tr>
        <tr>
            <th>Contact</th>
            <td><%= session.getAttribute("contact") %></td>
        </tr>
    </table>
</div>