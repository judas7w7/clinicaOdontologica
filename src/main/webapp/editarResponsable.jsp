<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="layout/header.jsp"%>
    <body class="sb-nav-fixed">
        <!-- Validacion Sesion -->
        <%@include file="layout/validarSesion.jsp"%>
        <!-- Fin Validacion Sesion -->
        <%@include file="layout/navbar.jsp"%>
        <div id="layoutSidenav">
            <%@include file="layout/layoutSidenav_nav.jsp"%>
            <div id="layoutSidenav_content">
                <!-- MAIN -->
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Clinica Odontológica</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h4>Alta Responsable de pacientes menores o adulto mayor</h4>
                            </div>
                            <div class="card-body">
                                <form action="svEditarResponsable" method="POST">
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <input class="form-control" id="dni" name="dni" type="text" placeholder="DNI" required />
                                                <label for="inputLastName">DNI</label>
                                            </div>
                                        </div>
                                    </div>   
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="nombre" name="nombre" type="text" placeholder="Nombre" required />
                                                <label for="inputFirstName">Nombre</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <input class="form-control" id="apellido" name="apellido" type="text" placeholder="Apellidos" required />
                                                <label for="inputLastName">Apelldos</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="telefono" name="telefono" type="text" placeholder="Telefono/Celular" required />
                                                <label for="inputFirstName">Telefono/Celular</label>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-floating">
                                                <input class="form-control" id="direccion" name="direccion" type="text" placeholder="Direccion" required />
                                                <label for="inputLastName">Dirección</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="fechanacimiento" name="fechanacimiento" type="date" placeholder="" required />
                                                <label for="inputFirstName">Fecha nacimiento</label>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-floating">
                                                <input class="form-control" id="tiporesponsable" name="tiporesponsable" type="text" placeholder="Tipo responsable" required />
                                                <label for="inputLastName">Tipo responsable</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button class="btn btn-primary btn-block" type="submit">Crear Responsable</button></div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-danger btn-block" href="#">Cancelar</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- FIN MAIN -->
                
            </div>
        </div>
        
    </body>
</html>