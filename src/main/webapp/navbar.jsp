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
						href="<%=request.getContextPath() + "/contact.jsp#howToContainer"%>">Contact
							Form</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath() + "/factorial.jsp"%>">Calculate
							factorial</a></li>

				</ul>
			</div>
			<a class="btn btn-secondary  my-sm-3" type="submit" href="login.jsp"
				role="button">Login</a>
		</div>

	</nav>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>