<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="navbar.jsp"%>
	<div class="container py-5 px-3">
		<div class="container-xxl">
			<div class="card mb-5">
				<h3 class="card-header">
					<i class='far fa-user-circle px-1'></i>
					Connected users
				</h3>
				<c:if test="${not empty applicationScope.connectedUsers}">
				<div class="card-body">
					<c:forEach items="${applicationScope.connectedUsers}" var="item">
						<fieldset>
							<input class="form-control" id="disabledInput" type="text"
								placeholder="User ID: ${item.id}, First Name: ${item.firstName} "  disabled>
						</fieldset>
					</c:forEach>
				</div>
				</c:if>
			</div>
		</div>
	</div>