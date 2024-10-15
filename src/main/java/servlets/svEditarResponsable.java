
package servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Responsable;
import persistencia.ControladoraPersistencia;

@WebServlet(name = "svEditarResponsable", urlPatterns = {"/svEditarResponsable"})
public class svEditarResponsable extends HttpServlet {
    private final ControladoraPersistencia controladoraPersistencia = new ControladoraPersistencia();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Integer id = Integer.valueOf(request.getParameter("id"));
        HttpSession session = request.getSession();
        Responsable responsable = controladoraPersistencia.buscarResponsable(id);
        System.out.println("Fecha nacimiento: " + responsable.getFecha_nac());
        session.setAttribute("responsableEditar", responsable);
        response.sendRedirect("editarResponsable.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Integer id =(Integer) request.getSession().getAttribute("id");
        String dni= request.getParameter("dni"), 
               nombre = request.getParameter("nombre"),
               apellido = request.getParameter("apellido"),
               telefono = request.getParameter("telefono"),
               direccion = request.getParameter("direccion"),
               fecha= request.getParameter("fechanacimiento"),
               tipoResponsable= request.getParameter("tiporesponsable");
        //HttpSession session = request.getSession();
        List<Responsable> responsables = controladoraPersistencia.getResponsable();
        try{
            /*if(controladoraPersistencia.buscarResponsable(Integer.parseInt(id)).getId() == 
                Integer.parseInt(id)){
                    
            }*/
            for(Responsable responsable: responsables){
                if(responsable.getId() == id){
                    Responsable responsableActualizar = new Responsable(
                            tipoResponsable, responsable.getId(), dni, nombre,
                            apellido, telefono, direccion, fecha);
                    controladoraPersistencia.editarResponsable(responsableActualizar);     
                    break;
                }
            }
            response.sendRedirect("svResponsable");
        }catch(NullPointerException e){
           response.sendRedirect("svResponsable?error="+e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
