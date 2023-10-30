
<!-- Version classique sans utilisation de la lib JSTL -->
<%-- <%@ include file="navbar.jsp"%> --%>
<!-- <div class="container pt-2 pb-5"> -->
<!-- 	<form class="container pt-2 pb-5" action="FactorialServlet" -->
<!-- 		method="post"> -->
<!-- 		<fieldset> -->
<!-- 			<legend class="mt-4"> -->
<!-- 				<strong>Enter a value for which you want to calculate the -->
<!-- 					factorial</strong> -->
<!-- 			</legend> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label class="col-form-label mt-4" for="factorial">Choose a -->
<!-- 					value :</label> <input type="number" name="factorial" class="form-control" -->
<!-- 					placeholder="Enter a numerical value" id="factorial" required> -->
<!-- 			</div> -->
<!-- 		</fieldset> -->
<!-- 		<button type="submit" class="btn btn-success mt-4">Calculate</button> -->
<!-- 	</form> -->
<!-- 	<div class="container pt-2 pb-5"> -->
<%-- 		<% if (request.getAttribute("result") != null) { %> --%>
<!-- 		<div class="result-container"> -->
<!-- 			<h3>Result</h3> -->
<%-- 			<p><%= request.getAttribute("result") %></p> --%>
<!-- 		</div> -->
<%-- 		<% } else if (request.getAttribute("error") != null) { %> --%>
<!-- 		<div class="result-container"> -->
<%-- 			<p><%= request.getAttribute("error") %></p> --%>
<!-- 		</div> -->
<%-- 		<% } %> --%>
<!-- 	</div> -->
<!-- </div> -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="navbar.jsp"%>
<div class="container pt-2 pb-5">
	<form class="container pt-2 pb-5" action="FactorialServlet"
		method="post">
		<fieldset>
			<legend class="mt-4">
				<strong>Enter a value for which you want to calculate the
					factorial</strong>
			</legend>
			<div class="form-group">
				<label class="col-form-label mt-4" for="factorial">Choose a
					value :</label> <input type="number" name="factorial" class="form-control"
					placeholder="Enter a numerical value" id="factorial" required>
			</div>
		</fieldset>
		<button type="submit" class="btn btn-success mt-4">Calculate</button>
	</form>

	<div class="container pt-2 pb-5">
		<c:if test="${not empty requestScope.result}">
			<div class="result-container">
				<h3>Result</h3>
				<p>${requestScope.result}</p>
			</div>
		</c:if>
		<c:if test="${not empty requestScope.error}">
			<div class="result-container">
				<p>${requestScope.error}</p>
			</div>
		</c:if>
	</div>
</div>
