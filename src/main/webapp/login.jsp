<%@ include file="navbar.jsp"%>
<%@ include file="header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container pt-2 pb-5">
    <form class="container pt-2 pb-5" action="LoginServlet" method="post">
        <fieldset>
            <legend class="mt-4">
                <strong>Login</strong>
            </legend>
            <c:if test="${ not empty error}">
					<div class="alert alert-dismissible alert-danger">
						<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
						<strong><c:out value="${ error }"></c:out></strong>
					</div>
			</c:if>
            <div class="form-group">
                <label class="col-form-label mt-4" for="FirstName">First Name</label>
                <input type="text" name="firstName" class="form-control" placeholder="Enter your First name" id="FirstName" maxlength="10" required>
                <label for="Password" class="form-label mt-4">Password</label>
                <input type="password" name="password" class="form-control" id="Password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-success mt-4">Login</button>
            <input type="reset" class="btn btn-warning mt-4" value="Reset">
        </fieldset>
    </form>
</div>