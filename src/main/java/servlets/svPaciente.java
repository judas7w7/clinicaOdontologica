
package servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Paciente;
import persistencia.ControladoraPersistencia;


@WebServlet(name = "svPaciente", urlPatterns = {"/svPaciente"})
public class svPaciente extends HttpServlet {
        private final ControladoraPersistencia controladoraPersistencia = new ControladoraPersistencia();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession session = request.getSession();
        List<Paciente> pacientes = controladoraPersistencia.buscarPaciente();
        session.setAttribute("pacientes", pacientes);
        response.sendRedirect("verPaciente.jsp");
        session.setAttribute("listaResponsable", controladoraPersistencia.getResponsable());

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
        eps = request.getParameter("eps"),
        rh = request.getParameter("rh"),
        responsable = request.getParameter("responsable");
        controladoraPersistencia.crearPaciente(new Paciente(
                Boolean.parseBoolean(eps),
                rh,
                controladoraPersistencia.buscarResponsable(Integer.parseInt(responsable)),
                dni,
                nombre,
                apellido,
                telefono,
                direccion,
                fecha));
        response.sendRedirect("svPaciente");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
