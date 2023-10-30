<%@ include file="navbar.jsp"%>
<%@ include file="header.jsp"%>


<div class="container pt-2 pb-5">
    <form class="container pt-2 pb-5" action="affichage.jsp" method="post">
        <fieldset>
            <legend class="mt-4">
                <strong>Login</strong>
            </legend>
            <div class="form-group">
                <label class="col-form-label mt-4" for="FirstName">First Name</label>
                <input type="text" name="firstName" class="form-control" placeholder="Enter your First name" id="FirstName" maxlength="10" required>
                <label for="Password" class="form-label mt-4">Password</label>
                <input type="password" name="password" class="form-control" id="Password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-success mt-4">Login</button>
            <input type="reset" class="btn btn-warning mt-4" value="Reset">
        </fieldset>
        
        <%
            // Validate credentials
            String enteredFirstName = request.getParameter("firstName");
            String enteredPassword = request.getParameter("password");
            
            if (session != null && session.getAttribute("firstName") != null) {
                // Session already exists, redirect
                response.sendRedirect("affichage.jsp");
            } else {
                // Validate entered credentials
                String storedFirstName = "example"; // Replace with your actual stored value
                String storedPassword = "password"; // Replace with your actual stored value
                
                if (enteredFirstName != null && enteredFirstName.equals(storedFirstName) &&
                    enteredPassword != null && enteredPassword.equals(storedPassword)) {
                    // Credentials match, create session and redirect
                    session = request.getSession(true);
                    session.setAttribute("firstName", enteredFirstName);
                    response.sendRedirect("affichage.jsp");
                } else {
                    // Credentials don't match, display error message
                    out.println("Invalid credentials. Please try again.");
                }
            }
        %>
    </form>
</div>