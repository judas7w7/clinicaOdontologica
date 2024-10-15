package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistencia.ControladoraPersistencia;

@WebServlet(name = "svEliminarResponsable", urlPatterns = {"/svEliminarResponsable"})
public class svEliminarResponsable extends HttpServlet {
    private final ControladoraPersistencia controladoraPersistencia = new ControladoraPersistencia();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String id = request.getParameter("id");
        controladoraPersistencia.borrarResponsable(Integer.valueOf(id));
        response.sendRedirect("svResponsable");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
