<%@page import="logica.Turno"%>
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
                                El mejor servicio con el mejor personal
                            </div>
                            <div class="card-body">
                                <p>
                                    A continuación podrá visualizar la lista de Turnos actual
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
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Fecha</th>
                                            <th>Hora</th>
                                            <th>Tratamiento</th>
                                            <th>Odontólogo</th>
                                            <th>Paciente</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <%                                        
                                            List<Turno> listaTurno = (List) request.getSession().getAttribute("listaTurno");
                                            if (listaTurno != null) {
                                                for (Turno tur : listaTurno) {%>
                                        <tr>
                                            <td><%=tur.getId_turno()%></td>
                                            <td><%=tur.getFecha()%></td>
                                            <td><%=tur.getHora()%></td>
                                            <td><%=tur.getTratamiento()%></td>
                                            <td><%=tur.getOdonto().getNombre()%> <%=tur.getOdonto().getApellidos()%></td>
                                            <td><%=tur.getPacien().getNombre()%> <%=tur.getPacien().getApellidos()%></td>
                                        </tr>
                                        <%      }
                                            }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
