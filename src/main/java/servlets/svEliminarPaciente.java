package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;

/**
 *
 * @author Camilo
 */
@WebServlet(name = "svEliminarPaciente", urlPatterns = {"/svEliminarPaciente"})
public class svEliminarPaciente extends HttpServlet {
    
    private Controladora controladora = new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
        Integer id = Integer.valueOf(request.getParameter("id"));
        controladora.borrarPaciente(id);
        response.sendRedirect("svPaciente");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
