package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "svEditUsuario", urlPatterns = {"/svEditUsuario"})
public class svEditUsuario extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Usuario usu = control.traerUsuario(id);
        HttpSession misession = request.getSession();
        misession.setAttribute("usuEditar", usu);

        response.sendRedirect("editarUsuario.jsp");
        //System.out.println("El usuario es: "+ usu.getNombre_usuario() );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreUsu = request.getParameter("nombreusuario");
        String contrasenia = request.getParameter("contrasenia");
        String rol = request.getParameter("rol");

        //Utilizamos la sesion usuEditar trabajada en get para traer el id a editar
        Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
        usu.setNombre_usuario(nombreUsu);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);

        control.editarUsuario(usu);

        response.sendRedirect("svUsuario");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
