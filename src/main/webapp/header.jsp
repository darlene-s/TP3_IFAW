<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${sessionScope.user != null }">
	<div class="container pt-5">
	    <p>Hello <c:out value=" ${user.lastName}" />, 
	    <c:out value=" ${user.firstName}" /> </p>
	    <p>Current Date: <%= new java.util.Date() %></p>
	</div>
</c:if>