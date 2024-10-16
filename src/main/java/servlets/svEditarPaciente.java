package servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Paciente;

@WebServlet(urlPatterns = {"/svEditarPaciente"})
public class svEditarPaciente extends HttpServlet {
    
    private Controladora controladora = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession session = request.getSession();
        Integer id = Integer.valueOf(request.getParameter("id"));
        Paciente paciente = controladora.buscarPaciente(id);
        session.setAttribute("listaResponsable", controladora.getResponsable());
        session.setAttribute("paciente", paciente);
        response.sendRedirect("editarPaciente.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("idPaciente");
        String dni= request.getParameter("dni"), 
        nombre = request.getParameter("nombre"),
        apellido = request.getParameter("apellido"),
        telefono = request.getParameter("telefono"),
        direccion = request.getParameter("direccion"),
        fecha= request.getParameter("fechanacimiento"),
        eps = request.getParameter("eps"),
        rh = request.getParameter("rh"),
        responsable = request.getParameter("responsable");
        List<Paciente> pacientes = controladora.getPacientes();
        try{
            for(Paciente paciente: pacientes){
                if(paciente.getId() == Integer.parseInt(id)){

                Paciente pacienteActualizar = new Paciente(
                paciente.getId(),
                Boolean.parseBoolean(eps),
                rh,
                controladora.buscarResponsable(Integer.parseInt(responsable)),
                dni,
                nombre,
                apellido,
                telefono,
                direccion,
                fecha);
                controladora.editarPaciente(pacienteActualizar);
                    break;
                }
            }
            response.sendRedirect("svPaciente");
        }catch(NullPointerException e){
           response.sendRedirect("svPaciente?error="+e.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
