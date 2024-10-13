<%@page import="logica.Turno"%>
<%@page import="logica.Secretario"%>
<%@page import="logica.Responsable"%>
<%@page import="logica.Usuario"%>
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
                        <h1 class="mt-4">Clinica Odontológica</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h4>Listado Turnos</h4>
                            </div>
                            <div class="card-body">
                                <p>
                                    A continuación podra visualizar la lista completa de Turnos
                                </p>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Fecha</th>
                                            <th>Hora</th>
                                            <th>Tratamiento</th>
                                            <th>Odontólogo</th>
                                            <th>Paciente</th>
                                            <th width="10%">Acciones</th>
                                        </tr>
                                    </thead>
                                    <%  
                                        List<Turno> listaTurno = (List) request.getSession().getAttribute("listaTurno");
                                    %>
                                    <tbody> 
                                        <% for (Turno tur : listaTurno) {%>
                                        <tr>
                                            <td><%=tur.getId_turno()%></td>
                                            <td><%=tur.getFecha()%></td>
                                            <td><%=tur.getHora()%></td>
                                            <td><%=tur.getTratamiento()%></td>
                                            <td><%=tur.getOdonto().getNombre()%> <%=tur.getOdonto().getApellidos()%></td>
                                            <td><%=tur.getPacien().getNombre()%> <%=tur.getPacien().getApellidos()%></td>
                                            <td>
                                                <form name="eliminar" action="svElimTurno" method="POST" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-danger btn-block" title="Eliminar registro">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=tur.getId_turno()%>">
                                                </form>
                                                <form name="editar" action="svEditTurno" method="GET" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-primary btn-block" title="Editar registro">
                                                        <i class="fas fa-edit"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=tur.getId_turno()%>">
                                                </form>
                                            </td>
                                        </tr >
                                        <%}%>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Fecha</th>
                                            <th>Hora</th>
                                            <th>Tratamiento</th>
                                            <th>Odontólogo</th>
                                            <th>Paciente</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>