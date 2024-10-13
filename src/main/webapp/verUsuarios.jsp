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
                                <h4>Listado Usuarios</h4>
                            </div>
                            <div class="card-body">
                                <p>

                                    A continuación podra visualizar la lista completa de usuarios
                                </p>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                            <th width="10%">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                    <%
                                        List<Usuario> ListaUsuario = (List) request.getSession().getAttribute("listaUsuarios");
                                    %>
                                    <tbody>
                                        <% for (Usuario usu : listaUsuarios) {%>
                                        <tr>
                                            <td><%=usu.getId_usuario()%></td>
                                            <td><%=usu.getNombre_usuario()%></td>
                                            <td><%=usu.getRol()%></td>
                                            <td>
                                                <form name="eliminar" action="svElimUsuario" method="POST" style="float: left; margin-right: 10px">
                                                    <button class="btn btn-outline-danger btn-block" title="Eliminar registro">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                    <input type="Hidden" name ="id" value="<%=usu.getId_usuario()%>">
                                                </form>
                                                <form name="editar" action="svEditUsuario" method="GET" style="float: left; margin-right: 10px">
                                                    <button class="btn btn-outline-info btn-block" title="Editar registro">
                                                        <i class="fas fa-pencil-alt"></i>
                                                    </button>
                                                    <input type="Hidden" name ="id" value="<%=usu.getId_usuario()%>">
                                                </form> 
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- fin main -->
                <%@include file="layout/footer.jsp"%>
            </div>
        </div>
        <%@include file="layout/script.jsp"%>
    </body>
</html>