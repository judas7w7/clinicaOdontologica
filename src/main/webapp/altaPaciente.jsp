<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.Responsable"%>
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
                                <h4>Alt Pacientes</h4>
                            </div>
                            <div class="card-body">
                                <form action="svPaciente" method="POST">
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
                                        <div class="col-md-3">
                                            <div class="form-floating">
                                                <input class="form-control" id="eps" name="eps" type="text" value = "true" placeholder="true" required />
                                                <label for="inputLastName">Eps</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-floating">
                                                <select class="form-control" name="rh">
                                                    <option value="A+">A+</option>
                                                    <option value="A-">A-</option>
                                                    <option value="O+">O+</option>
                                                    <option value="O-">O-</option>
                                                </select>                                                
                                                <label for="inputLastName">Tipo de sangre y RH</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <% List<Responsable> responsables = (List) request.getSession().getAttribute("responsables"); %>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <select class="form-control" name="responsable" >
                                                    <option value="default">Seleccione un responsable</option>
                                                    <% for(Responsable responsable : responsables){ %>
                                                    <option value="<%= responsable.getId() %>"><%=responsable.getNombre().concat(" ").concat(responsable.getApellidos())%></option>
                                                    <%}%>
                                                </select>
                                                <label for="inputLastName">Responsables</label>
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