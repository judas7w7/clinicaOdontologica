<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession misession = request.getSession();
    String usuario = (String) request.getSession().getAttribute("usuario");

    if (usuario == null) {
        boolean error = false;
        misession.setAttribute("error", error);//Asigno el error para mensaje
        response.sendRedirect("login.jsp");
    }
%>