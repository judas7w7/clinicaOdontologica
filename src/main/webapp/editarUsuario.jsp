<%@page import="logica.Usuario"%>
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

                <main>
                    <!--MAIN -->
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Clinica Odontológica</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h4>Editar Usuarios</h4>
                            </div>
                            <div class="card-body">
                                <p>
                                    Sección para modificar los datos de un usuarios del sistema
                                </p>

                                <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

                                <form action="svEditUsuario" method="POST">
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="nombreusuario" name="nombreusuario" type="text" value="<%=usu.getNombre_usuario()%>" required/>
                                                <label for="inputFirstName">Nombre Usuario</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <input class="form-control" id="contrasenia" name="contrasenia" type="password" value="<%=usu.getContrasenia()%>" required/>
                                                <label for="inputLastName">Contraseña</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="rol" name="rol" type="text" value="<%=usu.getRol()%>" required/>
                                                <label for="inputFirstName">Rol</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button class="btn btn-primary btn-block" type="submit">Modificar</button></div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-danger btn-block" href="verUsuarios.jsp">Cancelar</a></div>
                                            </div>
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