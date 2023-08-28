<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" class="h-100 translated-ltr">
<head>
<meta charset="ISO-8859-1">
<title>Ficha Paciente</title>
<!-- CSS del proyecto -->
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
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
</head>
<body class="d-flex flex-column h-100">

<!-- Incluyendo navbar menu -->
	<c:set var="navItem" value="Ficha" /> <!-- Menu activo -->
	<c:set var="navText" value="Paciente"/> <!-- Texto Crear -->
	<%@ include file='navbar.jsp'%>

	<main class="flex-shrink-0">
	<div style="padding-top: 120px;"></div>
		<div class="align-items-center mt-4 container" >
		
			<!-- Formulario para mostrar los datos del paciente -->
			<div class="card col-md-12 container">
			<span class="border border-info">
			<!-- Agregar la variable booleana  -->
			<c:set var="mostrarAlert" value="${mostrarAlert}" />
			<c:set var="mensaje" value="${mensaje}" />
						
				<div class="card-header text-info"> 
					<h2 class="card-title d-flex" > <i class="bi bi-clipboard-plus"></i>Información del
						Paciente</h2>
				</div>
				<div class="card-body">
				</span>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="rut" class="form-label">Rut: </label> 
							<span th:text="${pac.Rut()}"></span>
							<label for="nombres" class="form-label">Nombres: </label>
							<span>${pac.Nombres}</span>
							<label for="apellido1" class="form-label">Primer Apellido: </label>
							<span>${pac.Apellido1}</span>
							<label for="apellido2" class="form-label">Segundo Apellido: </label>
							<span>${pac.Apellido2}</span>
							<label for="fechaNacimiento" class="form-label">Fecha de nacimiento: </label>
							<span>${pac.Fecha_nacimiento}</span>
							<label for="genero" class="form-label">Género: </label>
							<span>${pac.Genero}</span>
							<label for="telefono" class="form-label">Telefono: </label>
							<span>${pac.Telefono}</span>
							<label for="correo" class="form-label">Correo: </label>
							<span>${pac.Correo}</span>
							<label for="direccion" class="form-label">Dirección: </label>
							<span>${pac.Direccion}</span>
							<label for="comuna" class="form-label">Comuna</label>
							<span>${pac.Comuna}</span>
						</div>					
					</div>
				</div>
			</div>
			<div class="align-items-center mt-4" >
		
			<!-- Formulario para crear un nuevo usuario -->
			<div class="card col-md-12">
			<span class="border border-info">
			<!-- Agregar la variable booleana  -->
			<c:set var="mostrarAlert" value="${mostrarAlert}" />
			<c:set var="mensaje" value="${mensaje}" />
						
				<div class="card-header text-info"> 
					<h2 class="card-title d-flex" > <i class="bi bi-clipboard-plus"></i>Ficha
						Médica</h2>
						
				</div>
				<div class="card-body">
				</span>
					<form action="ficha-paciente" id="formulario" class="row" method="post">
						<div class="col-md-12 m3-2">
							<label for="anamnesis" class="form-label">Anamnesis</label>
							<textarea class="form-control" id="anamnesis" name="anamnesis"
								rows="5" required></textarea>
						</div>						
						
						<div class="col-md-12 m3-2">
							<label for="indicaciones" class="form-label">Indicaciones generales</label>
							<textarea class="form-control" id="indicaciones" name="indicaciones"
								rows="5" required></textarea>
						</div>								
						<div class="col-md-12 m3-2">
							<label for="receta" class="form-label">Receta Médica</label>
							<textarea class="form-control" id="receta" name="receta"
								rows="5" required></textarea>
						</div>				
						<div class="col-md-6 mb-3">
							<label for="diagnostico" class="form-label">Diagnóstico</label> <select
								class="form-select" name="diagnostico" required>
								<option value="" disabled selected>Catalogo</option>
								<option value="">Infecciones respiratorias agudas.</option>
								<option value="">Otitis media.</option>
								<option value="">Gastroenteritis.</option>
								<option value="">Asma.</option>
								<option value="">Dermatitis atópica.</option>
								<option value="">Trastornos del crecimiento.</option>
								<option value="">Trastornos del desarrollo, como el trastorno del espectro autista.</option>
							</select>
						</div>								
						<div class="col-md-12 d-flex justify-content-end">
							<button type="submit" class="btn btn-info mt-4 btn-lg"> Grabar <i class="bi bi-clipboard-plus"></i></button>
						</div>
					</form>
				</div>
			</div>
	</main>
	<%@ include file='footer.jsp'%>
	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

	<!-- Dependencas de Bootstrap para el DateTimePicker -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.1.2/js/tempusdominus-bootstrap-4.min.js"></script>
	
</body>
</html>