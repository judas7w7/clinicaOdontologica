<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <a class="nav-link" href="index.jsp">
                    <div class="sb-nav-link-icon"><i class="fas fa-solid fa-compass"></i></div>
                    Menú
                </a>
                <div class="sb-sidenav-menu-heading">Gestión</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePacientes" aria-expanded="false" aria-controls="collapsePacientes">
                    <div class="sb-nav-link-icon"><i class="fas fa-solid fa-user-doctor"></i></div>
                    Pacientes
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePacientes" aria-labelledby="headingPacientes" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svPaciente">Ver Pacientes</a>
                        <a class="nav-link" href="svResponsablePaciente">Alta Pacientes</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseResponsables" aria-expanded="false" aria-controls="collapseResponsables">
                    <div class="sb-nav-link-icon"><i class="fas fa-solid fa-person"></i></div>
                    Responsables
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseResponsables" aria-labelledby="headingResponsables" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svResponsable">Ver Responsables</a>
                        <a class="nav-link" href="altaResponsable.jsp">Alta Responsables</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseTurnos" aria-expanded="false" aria-controls="collapseTurnos">
                    <div class="sb-nav-link-icon"><i class="fas fa-brands fa-swift"></i></div>
                    Turnos
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseTurnos" aria-labelledby="headingTurnos" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svTurno">Ver Turnos</a>
                        <a class="nav-link" href="altaTurno.jsp">Alta Turnos</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseOdontologos" aria-expanded="false" aria-controls="collapseOdontologos">
                    <div class="sb-nav-link-icon"><i class="fas fa-solid fa-user-doctor"></i></div>
                    Odontologos
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseOdontologos" aria-labelledby="headingOdontologos" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svOdontologo">Ver Odontologos</a>
                        <a class="nav-link" href="altaOdontologo.jsp">Alta Odontólogos</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseHorarios" aria-expanded="false" aria-controls="collapseHorarios">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-calendar-days"></i></div>
                    Horarios
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseHorarios" aria-labelledby="headingHorarios" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svHorario">Ver Horarios</a>
                        <a class="nav-link" href="altaHorario.jsp">Alta Horarios</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseSecretarios" aria-expanded="false" aria-controls="collapseSecretarios">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-user-tie"></i></div>
                    Secretarios
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseSecretarios" aria-labelledby="headingSecretarios" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svSecretario">Ver Secretarios</a>
                        <a class="nav-link" href="altaSecretario.jsp">Alta Secretarios</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseUsuarios" aria-expanded="false" aria-controls="collapseUsuarios">
                    <div class="sb-nav-link-icon"><i class="fas fa-user fa-fw"></i></div>
                    Usuarios
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseUsuarios" aria-labelledby="headingUsuarios" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="svUsuario">Ver Usuarios</a>
                        <a class="nav-link" href="altaUsuario.jsp">Alta Usuarios</a>
                    </nav>
                </div>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Iniciado sesión como :</div>
            <%=request.getSession().getAttribute ("usuario") %>
        </div>
    </nav>
</div>