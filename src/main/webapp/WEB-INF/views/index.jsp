<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>P�gina de Inicio - Prevent</title>
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
<img src="res/img/centro-medico.jpg" alt="Imagen representativa del centro m�dico" class="mw-100" >
    <%@include file="navbar.jsp"%>
    <!-- Incluyendo navbar menu -->
    <c:set var="navItem" value="Inicio" />
    <!-- Menu activo -->
    <header>
        <h1>Bienvenido al Centro M�dico</h1>
        <p>�Cuidando de tu salud y bienestar!</p>
        
    </header>
    <main class="flex-shrink-0">
        <!-- Pagina de inicio -->
        <div class="container">
            <section class="mt-5">
                <section id="mision">
        <h2>Nuestra Misi�n</h2>
        <p>En el Centro M�dico [Nombre del Centro], nos comprometemos a brindar atenci�n m�dica de la m�s alta calidad a nuestra comunidad. Nuestra misi�n es proporcionar servicios m�dicos compasivos, accesibles y personalizados para mejorar la salud y la calidad de vida de nuestros pacientes.</p>
    </section>
    
    <section">
        <h2>Nuestros Servicios</h2>
        <ul>
            <li>Consultas m�dicas en diversas especialidades.</li>
            <li>Ex�menes de diagn�stico y pruebas de laboratorio.</li>
            <li>Atenci�n preventiva y programas de bienestar.</li>
            <li>Servicios de salud para todas las edades, desde ni�os hasta adultos mayores.</li>
        </ul>
    </section>
    
    <section>
        <h2>Nuestro Equipo M�dico</h2>
        <p>Contamos con un equipo altamente calificado de m�dicos, especialistas y profesionales de la salud que se dedican a proporcionar la mejor atenci�n posible. Nuestros expertos m�dicos se comprometen a mantenerte informado, involucrado y c�modo a lo largo de tu experiencia en nuestro centro.</p>
    </section>
    
    <section>
        <h2>Instalaciones Modernas</h2>
        <p>En el Centro M�dico [Nombre del Centro], creemos en brindar un entorno de atenci�n c�modo y moderno. Nuestras instalaciones est�n equipadas con la �ltima tecnolog�a m�dica para garantizar diagn�sticos precisos y tratamientos efectivos.</p>
    </section>
    
    <section>
        <h2>Cita en L�nea</h2>
        <p>Reserva tu cita m�dica de manera conveniente a trav�s de nuestro sistema de cita en l�nea. Simplemente elige la especialidad, el m�dico y el horario que mejor te convenga.</p>
    </section>
    
    <section>
        <h2>Comunidad y Educaci�n</h2>
        <p>Creemos en empoderar a nuestra comunidad con informaci�n de salud precisa y �til. Mantente al d�a con nuestros blogs y recursos educativos sobre diversos temas m�dicos, consejos de bienestar y noticias de la salud.</p>
    </section>
    
    <section>
        <h2>Cont�ctanos</h2>
        <p>Estamos aqu� para responder a tus preguntas y preocupaciones. No dudes en comunicarte con nosotros para obtener m�s informaci�n sobre nuestros servicios, horarios y ubicaci�n.</p>
        <p>�Conf�a en el Centro M�dico [Nombre del Centro] para tu atenci�n m�dica integral! Tu salud es nuestra prioridad n�mero uno.</p>
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
