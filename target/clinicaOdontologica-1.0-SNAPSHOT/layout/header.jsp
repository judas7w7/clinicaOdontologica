<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Header</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Enlaces de estilos y scripts necesarios (Bootstrap, Font Awesome, etc.) -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Header Navbar -->
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Logo y nombre del sitio -->
            <a class="navbar-brand ps-3" href="index.jsp">
                <i class="fas fa-tooth"></i> Dentalia
            </a>
            <!-- Sidebar Toggle -->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" >
                <i class="fas fa-bars"></i>
            </button>
            <!-- Barra de búsqueda -->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Buscar ..." aria-label="Search for ..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <!-- Navbar de usuario -->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-regular fa-user"></i> <span><%= request.getSession().getAttribute("usuario")%></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Ajustes</a></li>
                        <li><a class="dropdown-item" href="#!">Registro de actividad</a></li>
                        <li><hr class="dropdown-divider"/></li>
                        <li><a class="dropdown-item" href="svLogin">Cerrar sesión</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <!-- Layout Sidenav -->
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="index.html">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-solid fa-compass"></i>
                            </div>
                            Menú
                        </a>
                        <div class="sb-sidenav-menu-heading">Gestión</div>
                        <!-- Menú desplegable Pacientes -->
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePacientes" aria-expanded="false" aria-controls="collapsePacientes">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-solid fa-user-doctor"></i>
                            </div>
                            Pacientes
                            <div class="sb-sidenav-collapse-arrow">
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </a>
                        <div class="collapse" id="collapsePacientes" aria-labelledby="headingPacientes" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="svPaciente">Ver Pacientes</a>
                                <a class="nav-link" href="altaPaciente.jsp">Alta Pacientes</a>
                            </nav>
                        </div>
                        <!-- Más menús desplegables similares para Responsables, Turnos, Odontólogos, etc. -->
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Iniciado sesión como:</div>
                    <%= request.getSession().getAttribute("usuario")%>
                </div>
            </nav>
        </div>

        <!-- Enlaces a scripts necesarios -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
    </body>
</html>
