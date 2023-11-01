<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://bootswatch.com/5/zephyr/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="icon" type="image/png" href="https://urlz.fr/odAc" />
<title>Dauphine Contact Form</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="script.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<!-- URL MinimisÃ© pour optimisation-->
			<a href="https://dauphine.psl.eu" target="_blank"> <img
				src="https://urlz.fr/odAc" width="90"
				class="d-inline-block align-middle mr-2"
				alt="Description de l'image">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor02"
				aria-controls="navbarColor02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor02">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link"
						href="https://my.dauphine.fr">MyDauphine</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/RegisterServlet"%>">Contact
							Form</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/FactorialServlet"%>">Calculate
							factorial</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/CookieServlet"%>">Cookie</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/connectedUsers.jsp"%>">Connected Users</a></li>
					<c:if test="${!empty user}">
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/AfficherContactServlet"%>">Mon profil</a></li>
					</c:if>
				</ul>
			</div>
			
			<a class="btn btn-secondary  my-sm-3" type="submit"
			href="<%=request.getContextPath() + "/LoginServlet"%>" role="button">Log
			In</a>
		
			
			<c:if test="${!empty user}">
			<a class="btn btn-secondary  my-sm-3" type="submit"
			href="<%=request.getContextPath() + "/LogoutServlet"%>" role="button">Log
			out</a>
			</c:if>
			
		</div>

	</nav>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>