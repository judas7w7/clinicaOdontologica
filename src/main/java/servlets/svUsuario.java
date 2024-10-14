package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "svUsuario", urlPatterns = {"/svUsuario"})
public class svUsuario extends HttpServlet {

    Controladora control = new Controladora();
    private String usuarioJsp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = control.getUsuarios();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaUsuarios", listaUsuarios);
        response.sendRedirect("verUsuarios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String contrasenia = request.getParameter("contrasenia");
        String rol = request.getParameter("rol");
        String nombreUsuario = request.getParameter("nombreusuario");
        nombreUsuario = nombreUsuario.trim();
        boolean error = true;
        boolean validacion = false;
        HttpSession misession = request.getSession(true);
        validacion = control.comprobarExistencia(nombreUsuario, rol);

        if (nombreUsuario.endsWith(" ")) {
            String mensaje = "El nombre de usuario contiene espacios al final";
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('" + mensaje + "'); window.location.href='login.jsp';</script>");
        } else {
            if (validacion) {
                String mensaje = "El usuario ya existe";
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<script>alert('" + mensaje + "'); window.location.href='login.jsp';</script>");
            } else {
                control.crearUsuario(nombreUsuario, contrasenia, rol);
                response.sendRedirect("login.jsp");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
