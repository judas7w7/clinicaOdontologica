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
import logica.Odontologo;
import logica.Paciente;
import logica.Turno;

@WebServlet(name = "svTurno", urlPatterns = {"/svTurno"})
public class svTurno extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Turno> listaTurno = new ArrayList<Turno>();
        listaTurno = control.getTurno();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaTurno", listaTurno);
        response.sendRedirect("verTurno.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        String tratamiento = request.getParameter("tratamiento");
        int idOdonto = Integer.parseInt(request.getParameter("odontologo"));
        int idPacien = Integer.parseInt(request.getParameter("paciente"));

        Odontologo odont = control.traerOdontologo(idOdonto);
        Paciente pacien = control.traerPaciente(idPacien);

        control.crearTurno(fecha, hora, tratamiento, odont, pacien);

        response.sendRedirect("svTurno");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
