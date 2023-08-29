<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<!-- CSS del proyecto -->
<link rel="stylesheet" href="../css/estilos.css">
<!-- CSS Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Iniciar Sesión</title>
<!-- CSS del proyecto -->
<body>
	<!-- Incluyendo navbar -->
	<c:set var="navItem" value="Login" />
	<!-- Menu activo -->
	<%@ include file='navbar.jsp'%>

	<main class="flex-shrink-0">
	    <!-- Espacio para el navbar fijo -->
    <div style="padding-top: 120px;"></div>
		<div class="container mt-4">
			<!-- Fomulario de login -->
			<div id="login" class="row justify-content-center align-items-center">
				<div class="col-lg-12 col-md-8">
					<div class="card border border-info">
						<div class="card-body">
							<c:choose>
								<c:when test="${error}">
									<div class="alert alert-danger" style="text-align: center"
										role="alert">Error al iniciar sesión.</div>
								</c:when>
								<c:when test="${logoutt}">
									<div class="alert alert-warning" style="text-align: center"
										role="alert">Se cerró la sesión correctamente.</div>
								</c:when>
							</c:choose>
							<div class="row justify-content-start">
								<div id="login-column" class="col-md-6">
									<div id="login-box" class="col-md-12">

										<!-- Formulario login -->
										<form action="login" method="POST">
										<svg xmlns="http://www.w3.org/2000/svg" height="4em"
									viewBox="0 0 448 512"> 
									<style>									
									svg {
									fill: #36b4c4
										}
									</style>
									<path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z" /></svg>
											<h3 class="text-center text-info">Iniciar sesión</h3>
											<div class="mb-3">
												<label for="usuario" class="form-label text-info">Usuario:</label><br>
												<input type="text" name="usuario" id="usuario"
													class="form-control" required>
											</div>
											<div class="mb -3 form-group">
												<label for="password" class="form-label text-info">Contraseña:</label><br>
												<input type="password" name="password" id="password"
													class="form-control" required>
											</div>
											<div class="form-group">
												<label for="form-check" class="text-info"><span>Recuerdame
												</span> <span><input id="remember-me" name="remember-me"
														type="checkbox"></span></label><br>
											</div>
											<div>
												<button type="submit" class="btn btn-info w-75">Iniciar
													Sesión</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- Footer proyecto -->
	<%@ include file='footer.jsp'%>
	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>