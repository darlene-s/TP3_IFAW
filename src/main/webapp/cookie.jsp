<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="navbar.jsp"%>
<c:if test="${cookieCounter != null }">
	<div class="container pt-5">
		<c:if test="${user != null }">
		<h2>Hello <c:out value=" ${user.firstName}"/>. Your id is: <c:out value=" ${user.id}"/></h2>
		</c:if>
	    <h2>You have visited this page <c:out value=" ${cookieCounter}"/> times !</h2>
	</div>
</c:if>