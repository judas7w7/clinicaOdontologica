<%@page import="logica.Paciente"%>
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
            AAAA
            <div id="layoutSidenav_content">
                <!-- MAIN -->
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Clinica Odontológica</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h4>Listado Pacientes</h4>
                            </div>
                            <div class="card-body">
                                <p>
                                    A continuación podra visualizar la lista completa de Pacientes
                                </p>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>DNI</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Telefono</th>
                                            <th>Dirección</th>
                                            <th>F. Nacimiento</th>
                                            <th>Eps</th>
                                            <th>Rh</th>
                                            <th>Responsable</th>
                                            <th width="10%">Acciones</th>
                                        </tr>
                                    </thead>
                                    <% List<Paciente> listaPaciente = (List) request.getSession().getAttribute("pacientes");
                                    %>
                                    <tbody> 
                                        <% for (Paciente paciente : listaPaciente) {%>
                                        <tr>
                                            <td><%=paciente.getId()%></td>
                                            <td><%=paciente.getdni()%></td>
                                            <td><%=paciente.getNombre()%></td>
                                            <td><%=paciente.getApellidos()%></td>
                                            <td><%=paciente.getTelefono()%></td>
                                            <td><%=paciente.getDireccion()%></td>
                                            <td><%=paciente.getFecha_nac()%></td>
                                            <td><%=paciente.isEps()%></td>
                                            <td><%=paciente.getTipo_sangre()%></td>
                                            <td><%=paciente.getUnResponsable().getNombre()%> <%=paciente.getUnResponsable().getApellidos()%></td>
                                            <td>
                                                <form name="eliminar" action="svEliminarPaciente" method="POST" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-danger btn-block" title="Eliminar registro">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=paciente.getId()%>">
                                                </form>
                                                <form name="editar" action="svEditarPaciente" method="GET" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-primary btn-block" title="Editar registro">
                                                        <i class="fas fa-edit"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=paciente.getId()%>">
                                                </form>
                                            </td>
                                        </tr >
                                        <%}%>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>DNI</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Telefono</th>
                                            <th>Dirección</th>
                                            <th>F. Nacimiento</th>
                                            <th>Eps</th>
                                            <th>Rh</th>
                                            <th>Responsable</th>
                                            <th width="10%">Acciones</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- fin main -->
                <%@include file="layout/footer.jsp"%>
            </div>



        </div>
    </body>
</html>