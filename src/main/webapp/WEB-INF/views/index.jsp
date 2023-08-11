<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Inicio - Prevent</title>
    <!-- Incluyendo estilos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
    <style>
        /* Estilos personalizados */
        body {
            background-color: #f8f9fa;
        }
        .container {
            padding-top: 20px;
        }
        h1 {
            color: #343a40;
        }
        h2 {
            color: #343a40;
            margin-top: 20px;
        }
        p {
            color: #6c757d;
            line-height: 1.6;
        }
    </style>
</head>
<body>
<img src="res/img/centro-medico.jpg" alt="Imagen representativa del centro médico" class="mw-100" >
    <%@include file="navbar.jsp"%>
    <!-- Incluyendo navbar menu -->
    <c:set var="navItem" value="Inicio" />
    <!-- Menu activo -->
    <header>
        <h1>Bienvenido al Centro Médico</h1>
        <p>¡Cuidando de tu salud y bienestar!</p>
        
    </header>
    <main class="flex-shrink-0">
        <!-- Pagina de inicio -->
        <div class="container">
            <section class="mt-5">
                <section id="mision">
        <h2>Nuestra Misión</h2>
        <p>En el Centro Médico [Nombre del Centro], nos comprometemos a brindar atención médica de la más alta calidad a nuestra comunidad. Nuestra misión es proporcionar servicios médicos compasivos, accesibles y personalizados para mejorar la salud y la calidad de vida de nuestros pacientes.</p>
    </section>
    
    <section">
        <h2>Nuestros Servicios</h2>
        <ul>
            <li>Consultas médicas en diversas especialidades.</li>
            <li>Exámenes de diagnóstico y pruebas de laboratorio.</li>
            <li>Atención preventiva y programas de bienestar.</li>
            <li>Servicios de salud para todas las edades, desde niños hasta adultos mayores.</li>
        </ul>
    </section>
    
    <section>
        <h2>Nuestro Equipo Médico</h2>
        <p>Contamos con un equipo altamente calificado de médicos, especialistas y profesionales de la salud que se dedican a proporcionar la mejor atención posible. Nuestros expertos médicos se comprometen a mantenerte informado, involucrado y cómodo a lo largo de tu experiencia en nuestro centro.</p>
    </section>
    
    <section>
        <h2>Instalaciones Modernas</h2>
        <p>En el Centro Médico [Nombre del Centro], creemos en brindar un entorno de atención cómodo y moderno. Nuestras instalaciones están equipadas con la última tecnología médica para garantizar diagnósticos precisos y tratamientos efectivos.</p>
    </section>
    
    <section>
        <h2>Cita en Línea</h2>
        <p>Reserva tu cita médica de manera conveniente a través de nuestro sistema de cita en línea. Simplemente elige la especialidad, el médico y el horario que mejor te convenga.</p>
    </section>
    
    <section>
        <h2>Comunidad y Educación</h2>
        <p>Creemos en empoderar a nuestra comunidad con información de salud precisa y útil. Mantente al día con nuestros blogs y recursos educativos sobre diversos temas médicos, consejos de bienestar y noticias de la salud.</p>
    </section>
    
    <section>
        <h2>Contáctanos</h2>
        <p>Estamos aquí para responder a tus preguntas y preocupaciones. No dudes en comunicarte con nosotros para obtener más información sobre nuestros servicios, horarios y ubicación.</p>
        <p>¡Confía en el Centro Médico [Nombre del Centro] para tu atención médica integral! Tu salud es nuestra prioridad número uno.</p>
    </section>
    </section>
        </div>
    </main>

    <!-- JavaScript Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    <%@include file="footer.jsp"%>
</body>
</html>
