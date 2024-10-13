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
                            <div class="col-1g-5">
                                <div class="card shadow-1g border-0 rounded-1g mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Acceso a Dentalia</h3></div>
                                    <div class="card-body">
                                        <%
                                            boolean error = (boolean) request.getSession().getAttribute("error");
                                            if (error == true) {
                                        %>

                                        <div class="alert alert-danger" role="alert">
                                            Nombre de usuario o contraseña erroneas!
                                        </div>

                                        <%
                                            }
                                        %>

                                        <form action="svLogin" method="POST">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="usuario" name="usuario" type="text" placeholder="nombre@ejemplo.com" />
                                                <label for="inputEmail">Nombre de usuario</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="contrasenia" name="contrasenia" type="password" placeholder= "contraseña" />
                                                <label for="inputPassword">Contraseña</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">¿Has olvidado tu contraseña?</a>
                                                <button class="btn btn-primary" type="submit">Ingresar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>

