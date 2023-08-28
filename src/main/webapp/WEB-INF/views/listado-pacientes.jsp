<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
<meta charset="ISO-8859-1">
<title>Listado de Pacientes</title>
<!-- CSS del proyecto -->
<link rel="stylesheet" href="../css/estilos.css">
<!-- CSS Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
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
	<c:set var="navItem" value="Listar" />
	<!-- Menu activo -->
	<c:set var="navText" value="Pacientes" />
	<!-- Texto Listar -->
	<%@ include file='navbar.jsp'%>

	<main class="flex-shrink-0">
	<div style="padding-top: 120px;"></div>
		<!--  Vista que muestra el listado de pacientes -->
		<div class="container-fluid mt-4 overflow-auto">

			<section>
				<h1>Listado de Pacientes</h1>
				<c:choose>
					<c:when test="${empty pacientes}">
						<div class="alert alert-danger" style="text-align: center"
							role="alert">
							No hay registros de Pacientes. <a href=""
								class="alert-link">Ir a crear Paciente</a>
						</div>					
					</c:when>
					<c:otherwise>
						<table class="table table-striped table-bordered">
							<thead class="table-info">
								<tr>
									<th>Rut</th>
									<th>Nombres</th>
									<th>Apellido1</th>
									<th>Apellido2</th>
									<th>Fecha de nacimiento</th>
									<th>Genero</th>
									<th>Direccion</th>
									<th>Comuna</th>
									<th>Telefono</th>
									<th>Correo</th>
									<th><i class="bi bi-arrows-move"></i></th>
									<th><i class="bi bi-clipboard-plus"></i></th>
								</tr>
							</thead>
							<tbody>
								<!-- Ciclo forEach con JSTL para imprimir datos de la lista -->
								<c:forEach var="pac" items="${pacientes}">
									<tr>
										<td><c:out value="${pac.getRut()}"></c:out></td>
										<td><c:out value="${pac.getNombres()}"></c:out></td>
										<td><c:out value="${pac.getApellido1()}"></c:out></td>
										<td><c:out value="${pac.getApellido2()}"></c:out></td>
										<td><c:out value="${pac.getFecha_nacimiento()}"></c:out></td>
										<td><c:out value="${pac.getGenero()}"></c:out></td>
										<td><c:out value="${pac.getDireccion()}"></c:out></td>
										<td><c:out value="${pac.getComuna()}"></c:out></td>
										<td><c:out value="${pac.getTelefono()}"></c:out></td>
										<td><c:out value="${pac.getCorreo()}"></c:out></td>
										<td>											<!-- Enviar el ID del usuario al servlet EditarUsuario al hacer clic en el botón "Editar" -->
											<a class="btn btn-outline-info btn-sm" href="ModificarPaciente/${pac.getId()}">
													<i class="bi bi-pencil-square"></i> Editar
											</a>
										</td>
										<td>											<!-- Enviar el ID del usuario al servlet EditarUsuario al hacer clic en el botón "Editar" -->
											<input type="hidden" name="idRescatado"
													value="${pac.getId()}">
											<a class="btn btn-outline-info btn-sm" href="CrearFicha/${pac.getId()}">
													<i class="bi bi-pencil-square"></i> Abrir Ficha
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
				</c:choose>
			</section>
		</div>
	</main>
	<%@ include file='footer.jsp'%>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>