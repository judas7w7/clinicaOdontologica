package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Responsable;
import persistencia.ControladoraPersistencia;

@WebServlet(name = "svResponsable", urlPatterns = {"/svResponsable"})
public class svResponsable extends HttpServlet {
    private ControladoraPersistencia controladoraPersistencia =  new ControladoraPersistencia();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession session = request.getSession();
        System.out.println("LONGITUD: " + controladoraPersistencia.getResponsable().size());
        session.setAttribute("listaResponsable", controladoraPersistencia.getResponsable());
        response.sendRedirect("verResponsable.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String dni= request.getParameter("dni"), 
               nombre = request.getParameter("nombre"),
               apellido = request.getParameter("apellido"),
               telefono = request.getParameter("telefono"),
               direccion = request.getParameter("direccion"),
               fecha= request.getParameter("fechanacimiento"),
               tipoResponsable= request.getParameter("tiporesponsable");
        controladoraPersistencia.crearResponsable(new Responsable(tipoResponsable,dni,nombre,apellido,
                                                                  telefono,direccion,fecha));
        response.sendRedirect("verResponsable.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
