<%-- 
    Document   : edit
    Created on : 06-ene-2019, 21:13:40
    Author     : Gildo-PC
--%>

<%@page import="Modelo.Articulo"%>
<%@page import="ModeloDAO.ArticuloDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArticuloDAO dao= new ArticuloDAO();
            int id=Integer.parseInt((String)request.getAttribute("idart"));
            Articulo a=(Articulo)dao.list(id);
            %>
        <h1>Modificar articulo</h1>
        <form action="Controlador">
            ID:<br>
            <input type="text" name="txtid" value="<%= a.getId()%>"><br>
            Nombre:<br>
            <input type="text" name="txtNom" value="<%= a.getNombre()%>"><br>
            Descripcion:<br>
            <input type="text" name="txtDesc" value ="<%= a.getDescripcion()%>"><br>
            Cantidad:<br>
            <input type="text" name="txtCant" value ="<%=a.getCantidad()%>"><br>
            <input type="submit" name="accion" value="Actualizar"><br>
            <a href="Controlador?accion=listar">Regresar</a>
        </form>
        
    </body>
</html>
