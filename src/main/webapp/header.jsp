<div class="container pt-5">
    <p>Hello <%= session.getAttribute("lastName") %>, <%= session.getAttribute("firstName") %></p>
    <p>Current Date: <%= new java.util.Date() %></p>
</div>