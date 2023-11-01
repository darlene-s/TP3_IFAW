<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<style>
.jumbotron {
	background-color: #b9bec4;
}
</style>
<body>
	<%@ include file="navbar.jsp"%>
	<%@ include file="header.jsp"%>
	<c:if test="${sessionScope.user != null }">
	<div class="jumbotron my-0 pb-1">
		<h2 class="display-3 text-center pt-5 ">My profile</h2>
		<hr class="my-5">
		<p class="text-center pb-4">User Information</p>
	</div>
	<div class="container-vehicles py-5 px-3">
		<div class="container-xxl">
			<div class="card mb-5">
				<h3 class="card-header">
					<i class='far fa-user-circle px-1'></i>
					<c:out value=" ${user.lastName}  ${user.firstName}" />
				</h3>
				<div class="card-body">
					<fieldset>
						<input class="form-control" id="disabledInput" type="text"
							placeholder="ID : ${user.id}"  disabled>
					</fieldset>
					<fieldset>
						<input class="form-control" id="disabledInput" type="text"
							placeholder="Last name : ${user.lastName}"  disabled>
					</fieldset>
					<fieldset class="my-2">
						<input class="form-control" id="disabledInput" type="text"
							placeholder="First name : ${user.firstName}"  disabled>
					</fieldset>
					<fieldset class="my-2">
						<input class="form-control" id="disabledInput" type="text"
							placeholder="Email : ${user.email}"  disabled>
					</fieldset>
					<fieldset class="my-2">
						<input class="form-control" id="disabledInput" type="text"
							placeholder="Gender : ${user.gender}"  disabled>
					</fieldset>
					<fieldset class="my-2">
						<input class="form-control" id="disabledInput" type="text"
							placeholder="Phone Number : ${user.phoneNumber}"  disabled>
					</fieldset>
				
					<fieldset class="my-2">
						<input class="form-control" id="disabledInput" type="text"
							placeholder="Can be contacted ? : <c:choose><c:when test="${user.contact == true}">Yes</c:when><c:when test="${user.contact == false}">No</c:when></c:choose>"  disabled>
					</fieldset>
				
					
				</div>
			</div>
		</div>
	</div>
	</c:if>
</body>
</html>