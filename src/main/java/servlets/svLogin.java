package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Turno;

@WebServlet(name = "svLogin", urlPatterns = {"/svLogin"})
public class svLogin extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().removeAttribute("usuario");
        request.getSession().invalidate();
        boolean error = false;
        HttpSession misession = request.getSession(true);
        misession.setAttribute("error", error); //Asigno el error para mensaje
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasenia = request.getParameter("contrasenia");
        boolean error = true;
        boolean validacion = false;
        HttpSession misession = request.getSession(true);
        validacion = control.comprobarAcceso(usuario, contrasenia);

        if (validacion) {
            error = false;
            misession.setAttribute("usuario", usuario);//Asigno el nombre del usuario actual
            List<Turno> listaTurnosActuales = new ArrayList<Turno>();
            LocalDate fechaActual = LocalDate.now();
            String fActual = fechaActual.toString();
            listaTurnosActuales = control.listarTurnosActuales(fActual);
            misession.setAttribute("listaTurno", listaTurnosActuales);//Asigno el listado de turnos

            response.sendRedirect("index.jsp");
        } else {
            misession.setAttribute("error", error);
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
