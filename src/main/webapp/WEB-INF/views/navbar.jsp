<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<head>
<!-- Iconos Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<header>

	<!-- Navbar del sitio -->
	<nav class="navbar navbar-expand-md fixed-top"
		style="background-color: #17a2b8;">
		<!-- Navbar content -->
		<div class="container-fluid">
			<!-- Logo y nombre del sitio -->
			<a class="navbar-brand" href="#"> <i
				class="bi bi-hospital text-white"></i> <span class="text-white">Centro
					M�dico</span>
			</a>
			<!-- Espacio para el navbar fijo -->
			<div style="padding-top: 70px;"></div>
			<!-- boton del menu  -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#menu"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- elementos del menu colapsable -->
			<div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav me-auto">
					<li class="nav-item ms-2"><a
						class="nav-link text-white ${navItem == 'Inicio' ? 'active' : ''}"
						href="Inicio"> <i class="bi bi-house"></i> Inicio
					</a></li>

					<li class="nav-item dropdown ms-2"><a
						class="nav-link dropdown-toggle text-white ${navItem == 'Paciente' ? 'active' : ''}"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						href="#"> <i class="bi bi-person-fill-add"></i> Paciente
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="CrearPaciente"> <i
									class="bi bi-person-fill-add"></i></i> Crear Paciente
							</a></li>
<!-- 							<li><a class="dropdown-item" href="ModificarPaciente"> <i -->
<!-- 									class="bi bi-person-check-fill"></i> Modificar Paciente -->
<!-- 							</a></li> -->
						</ul></li>
					<li class="nav-item dropdown ms-2"><a
						class="nav-link dropdown-toggle text-white ${navItem == 'Listar' ? 'active' : ''}"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						href="#"> <i class="bi bi-card-list"></i> Listar
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="ListarPacientes"> <i
									class="bi bi-card-list"></i> Listado de Pacientes
							</a></li>
						</ul></li>
					<!-- Men� para Administrativo -->
					<li class="nav-item dropdown ms-2"><a
						class="nav-link dropdown-toggle text-white ${navItem == 'Ficha M�dica' ? 'active' : ''}"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						href="#"> <i class="bi bi-clipboard-plus"></i> Ficha M�dica
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="FichaPaciente"> <i
									class="bi bi-clipboard-plus"></i> Ficha Paciente
							</a></li>
						</ul></li>
					<li class="nav-item flex-row flex-wrap text-white"><a
						class="nav-link text-white" href="login"> <i
							class="bi bi-box-arrow-in-left ms-2"></i> Login
					</a></li>
				</ul>
				<ul class="navbar-nav flex-row flex-wrap text-light">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" href="#"> </a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li><a class="btn btn-outline-info" role="button"
								data-bs-toggle="modal" data-bs-target="#logoutModal" href="#">
									<i class="bi bi-box-arrow-right"></i> Cerrar Sesi�n
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>

	</nav>
</header>
<!-- Modal de Cerrar Sesi�n -->
<div class="modal fade" id="logoutModal" tabindex="-1"
	aria-labelledby="logoutModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="logoutModalLabel">
					Confirmar Cierre de Sesi�n <i class="bi bi-box-arrow-right"></i>
				</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">�Est�s seguro de que deseas cerrar
				sesi�n?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
				<a href="logout" class="btn btn-info"> Cerrar Sesi�n</a>
			</div>
		</div>
	</div>
</div>

