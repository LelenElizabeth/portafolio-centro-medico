<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
<meta charset="ISO-8859-1">
<title>Crear Paciente</title>
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
	<c:set var="navItem" value="Crear" /> <!-- Menu activo -->
	<c:set var="navText" value="Paciente"/> <!-- Texto Crear -->
	<%@ include file='navbar.jsp'%>

	<main class="flex-shrink-0">
		<div class="align-items-center mt-4" >
		
			<!-- Formulario para crear un nuevo usuario -->
			<div class="card col-md-12">
			<span class="border border-info">
			<!-- Agregar la variable booleana  -->
			<c:set var="mostrarAlert" value="${mostrarAlert}" />
			<c:set var="mensaje" value="${mensaje}" />
						
				<div class="card-header text-info"> 
					<h2 class="card-title d-flex" > <i class="bi bi-clipboard-plus"></i>Modificar
						Paciente</h2>
						
				</div>
				<div class="card-body">
				</span>
					<form action="modificar-paciente" id="formulario" class="row" method="post">
						<div class="col-md-6 mb-3">
							<label for="rut" class="form-label">Rut</label> 
							<input  type="text"class="form-control" name="rut" required>
						</div>					
						<div class="col-md-12 mb-3">
							<label for="nombres" class="form-label">Nombres</label> <input
								type="text" class="form-control" name="nombres" required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="apellido1" class="form-label">Apellido Materno</label> <input
								type="text" class="form-control" name="apellido1" required>
						</div>			
						<div class="col-md-6 mb-3">
							<label for="apellido2" class="form-label">Apellido Paterno</label> <input
								type="text" class="form-control" name="apellido2" required>
						</div>		
						<div class="col-md-6 mb-3">
								<label for="fechaNacimiento" class="form-label">Fecha de nacimiento</label>
							<div class="input-group date" id="datetimepicker" data-target-input="nearest">
							         <input type="text" class="form-control datetimepicker-input" name="fechaNacimiento" data-target="#datetimepicker" />
							    <div class="input-group-append" data-target="#datetimepicker" data-toggle="datetimepicker">
							          <div class="input-group-text"><i class="bi bi-calendar"></i></div>
							    </div>
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="genero" class="form-label">Género</label> <select
								class="form-select" name="dia" required>
								<option value="" disabled selected>Seleccione</option>
								<option value="Masculino">Masculino</option>
								<option value="Femenino">Femenino</option>
							</select>
						</div>
						<div class="col-md-6 mb-3">
								<label for="telefono" class="form-label">Telefono</label> 
								<input  type="text" class="form-control" name="telefono" required>
						</div>
						<div class="col-md-6 mb-3">
								<label for="correo" class="form-label">Correo</label><input
										type="text" class="form-control" name="correo" required>
						</div>							
						<div class="col-md-6 mb-3">
								<label for="direccion" class="form-label">Dirección</label> 
								<input type="text" class="form-control" name="direccion" required>
						</div>
						<div class="col-md-6 mb-3">
								<label for="comuna" class="form-label">Comuna</label> 
								<input  type="text" class="form-control" name="comuna" required>
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