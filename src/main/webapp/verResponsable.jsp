<%@page import="logica.Responsable"%>
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
                                <h4>Listado Responsables</h4>
                            </div>
                            <div class="card-body">
                                <p>
                                    A continuación podra visualizar la lista completa de Responsable pacientes
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
                                            <th>Tipo Responsable</th>
                                            <th width="10%">Acciones</th>
                                        </tr>
                                    </thead>
                                    <% List<Responsable> listaResponsable = (List) request.getSession().getAttribute("listaResponsable");
                                    %>
                                    <tbody> 
                                        <% for (Responsable res : listaResponsable) {%>
                                        <tr>
                                            <td><%//res.getId()%></td>
                                            <td><%=res.getNombre()%></td>
                                            <td><%=res.getApellidos()%></td>
                                            <td><%=res.getTelefono()%></td>
                                            <td><%=res.getDireccion()%></td>
                                            <td><%=res.getFecha_nac()%></td>
                                            <td><%=res.getTipo_responsable()%></td>
                                            <td>
                                                <form name="eliminar" action="svElimitarResponsable" method="POST" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-danger btn-block" title="Eliminar registro">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=res.getId()%>">
                                                </form>
                                                <form name="editar" action="svEditarResponsable" method="GET" style="float: left; margin-right: 10px;">
                                                    <button class="btn btn-outline-primary btn-block" title="Editar registro">
                                                        <i class="fas fa-edit"></i>
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=res.getId()%>">
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
                                            <th>Tipo Responsable</th>
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