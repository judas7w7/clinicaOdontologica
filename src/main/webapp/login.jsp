<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Acceso - Dentalia</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- Ajuste del ancho de la columna -->
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">Acceso a Dentalia</h3>
                                    </div>
                                    <div class="card-body">
                                        <%
                                            Boolean error = (Boolean) request.getSession().getAttribute("error");
                                            if (error != null && error == true) {
                                        %>
                                        <div class="alert alert-danger" role="alert">
                                            Nombre de usuario o contraseña erróneas!
                                        </div>
                                        <%
                                            }
                                        %>

                                        <form action="svLogin" method="POST">
                                            <!-- Campo para el nombre de usuario -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="usuario" name="usuario" type="text" style="text-transform: lowercase;" placeholder="nombre@ejemplo.com" />
                                                <label for="usuario">Nombre de usuario</label>
                                            </div>

                                            <!-- Campo para la contraseña -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="contrasenia" name="contrasenia" type="password" placeholder="Contraseña" />
                                                <label for="contrasenia">Contraseña</label>
                                            </div>

                                            <!-- Opciones: ¿Olvidaste tu contraseña? y botón de ingreso -->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.jsp">¿Has olvidado tu contraseña?</a>
                                                <button class="btn btn-primary" type="submit">Ingresar</button>
                                            </div>
                                            <div class="card-footer text-center py-3">
                                                <div class="small"><a href="register.jsp">¿Necesita una cuenta? ¡Registrate!</a></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <!-- Footer inferior con derechos de autor -->
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Derechos de autor © dentalia.com.co</div>
                            <div>
                                <a href="#">Política de privacidad</a>
                                &middot;
                                <a href="#">Términos & Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
