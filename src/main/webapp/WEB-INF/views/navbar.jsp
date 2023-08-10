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
<nav class="navbar navbar-expand" style="background-color: #17a2b8;">
  <!-- Navbar content -->
  		<div class="container-fluid">
			<!-- Logo y nombre del sitio -->
			<a class="navbar-brand" href="#"> <i class="bi bi-fan"></i> <span
				class="text-ligth">Centro médico</span>
			</a>
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
						class="nav-link ${navItem == 'Inicio' ? 'active' : ''}"
						href="Inicio"> <i class="bi bi-house"></i> Inicio
					</a></li>
					 
					<sec:authorize access="hasAuthority('Sistemas','Administrativo', 'Medico')">
					    <!-- Menú para Administrativo -->
					    <li class="nav-item dropdown ms-2">
					        <a class="nav-link dropdown-toggle ${navItem == 'Paciente' ? 'active' : ''}"
					           id="navbarDropdown" role="button" data-bs-toggle="dropdown" href="#">
					            <i class="bi bi-plus-circle"></i> Paciente
					        </a>
					        <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="CrearPaciente"> <i class="bi bi-file-plus"></i> Crear Paciente</a></li>
					            <li><a class="dropdown-item" href="ModificarPaciente"> <i class="bi bi-file-plus"></i> Modificar Paciente</a></li>
					        </ul>
					    </li>
					</sec:authorize>
					<!-- Menu Listar del Administrativo -->
					<sec:authorize access="hasAnyAuthority('Sistemas','Administrativo', 'Medico')">
					    <li class="nav-item dropdown ms-2">
					        <a class="nav-link dropdown-toggle ${navItem == 'Listar' ? 'active' : ''}"
					           id="navbarDropdown" role="button" data-bs-toggle="dropdown" href="#">
					           <i class="bi bi-card-list"></i> Listar
					        </a>
					        <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="ListaPacientes"> <i class="bi bi-file-plus"></i> Listado de Pacientes</a></li>
					        </ul>					        
					    </li>
					</sec:authorize>
					<sec:authorize access="hasAuthority('Sistemas', 'Medico')">
					    <!-- Menú para Administrativo -->
					    <li class="nav-item dropdown ms-2">
					        <a class="nav-link dropdown-toggle ${navItem == 'Ficha Médica' ? 'active' : ''}"
					           id="navbarDropdown" role="button" data-bs-toggle="dropdown" href="#">
					            <i class="bi bi-plus-circle"></i> Ficha Médica
					        </a>
					        <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="FichaPaciente"> <i class="bi bi-file-plus"></i> Ficha Paciente</a></li>
					        </ul>
					            
					    </li>
					</sec:authorize>					
					<!-- Login si no ha iniciado sesión -->
					<sec:authorize access="!isAuthenticated()">
							<li class="nav-item flex-row flex-wrap text-light">
						    	<a class="nav-link" href="login">
							<i class="bi bi-box-arrow-in-left ms-2"></i> Login</a>
						</li>
					</sec:authorize">
				</ul>
				<sec:authorize access="isAuthenticated()">
					<ul class="navbar-nav flex-row flex-wrap text-light">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle"
							id="navbarDropdown" role="button" data-bs-toggle="dropdown"  href="#">
								<i class="bi bi-person-circle"></i>   <sec:authentication property="principal.username" />
							</a>
						    <ul class="dropdown-menu dropdown-menu-end">
						    	<li>
						    		<a class="btn btn-outline-info"  role="button" data-bs-toggle="modal" data-bs-target="#logoutModal" href="#">
						    		<i class="bi bi-box-arrow-right"></i> Cerrar Sesión</a>
						    	</li>
						    </ul>
						</li>
				    </ul>
			    </sec:authorize>
			</div>
		</div>
  
</nav>
</header>
<!-- Modal de Cerrar Sesión -->
<div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">Confirmar Cierre de Sesión <i class="bi bi-box-arrow-right"></i></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estás seguro de que deseas cerrar sesión?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-info" data-bs-dismiss="modal">Cancelar</button>
                <a href="logout" class="btn btn-info">Cerrar Sesión</a>
            </div>
        </div>
    </div>
</div>
