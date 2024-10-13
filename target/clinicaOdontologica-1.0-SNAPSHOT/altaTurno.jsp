<%@page import="logica.Paciente"%>
<%@page import="logica.Odontologo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="logica.Usuario"%>
<%@page import="logica.Controladora"%>
<%@page import="java.util.List"%>
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
                        <h1 class="mt-4">Alta Turno</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h4>Ingrese los datos del turno</h4>
                            </div>
                            <div class="card-body">
                                <form action="svTurno" method="POST">
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="fecha" name="fecha" type="date" placeholder="dd/mm/yyyy" required />
                                                <label for="inputFirstName">Fecha del turno</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="hora" name="hora" type="time" placeholder="##:##" required />
                                                <label for="inputFirstName">Hora del turno</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <div class="form-floating">
                                                <input class="form-control" id="tratamiento" name="tratamiento" type="text" placeholder="Tratamiento" required />
                                                <label for="inputLastName">Tratamiento</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-4">
                                            <div class="form-floating">
                                                <%
                                                    Controladora control = new Controladora();
                                                    List<Odontologo> listaOdontologos = new ArrayList<Odontologo>();
                                                    listaOdontologos = control.getOdontologos();
                                                %>
                                                <select class="form-control" id="odontologo" name="odontologo" >
                                                    <option></option>
                                                    <%
                                                        for (Odontologo odon : listaOdontologos) {
                                                    %>
                                                    <option value="<%=odon.getId()%>"><%=odon.getNombre()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                                <label for="inputLastName">Odontólogo</label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-floating">
                                                <%
                                                    List<Paciente> listaPacientes = new ArrayList<Paciente>();
                                                    listaPacientes = control.getPacientes();
                                                %>
                                                <select class="form-control" id="paciente" name="paciente" >
                                                    <option></option>
                                                    <%
                                                    for ( Paciente pac : listaPacientes) {
                                                    %>
                                                    <option value="<%=pac.getId()%>"><%=pac.getNombre()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                                <label for="inputLastName">Paciente</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <button class="btn btn-primary btn-block" type="submit">Crear turno</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>