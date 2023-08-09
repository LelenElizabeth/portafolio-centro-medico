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
		<div class="container mt-4">
			<!-- Fomulario de login -->
			<div id="login" class="row justify-content-center align-items-center">

				<div class="col-lg-8 col-md-8">
					<div class="card">
						<div class="card-body">
							<div id="login-column" class="col-md-6">
								<div id="login-box" class="col-md-12">
									<form id="login-form" class="form" action="" method="post">
										<h3 class="text-center text-info">Iniciar sesión</h3>
										<div class="form-group">
											<label for="usuario" class="text-info">Usuario:</label><br>
											<input type="text" name="usuario" id="usuario"
												class="form-control">
										</div>
										<div class="form-group">
											<label for="contrasena" class="text-info">Contraseña:</label><br>
											<input type="text" name="contrasena" id="contrasena"
												class="form-control">
										</div>
										<div class="form-group">
											<label for="remember-me" class="text-info"><span>Recuerdame
											</span> <span><input id="remember-me" name="remember-me"
													type="checkbox"></span></label><br> <input type="submit"
												name="submit" class="btn btn-info btn-md"
												value="IniciarSesion">
										</div>
									</form>
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