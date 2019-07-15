<%-- 
    Document   : listar
    Created on : 06-ene-2019, 21:13:49
    Author     : Gildo-PC
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Articulo"%>
<%@page import="ModeloDAO.ArticuloDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <tbody>
                <table border="1">
                <%
                ArticuloDAO daos = new ArticuloDAO();
                List<Articulo>lists = daos.listar();
                Iterator<Articulo>iters = lists.iterator();
                Articulo arts = null;
                while (iters.hasNext()){
                    arts = iters.next();
            %>
                <tr>
                    <td><input type ='button' value = '<%= arts.getNombre()%>' onclick="window.open('<%= arts.getDescripcion()%>', 'width=800,height=600')"/></td> 
                </tr>
                
            <%;}%> 
                </table>
            </tbody>
            <br>
            <br>
            <br>
            <br>
                      
    <body>
        <h1>Articulos</h1>
        <a href="Controlador?accion=add">Agregar Nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID Producto</th>
                    <th>Nombre articulo</th>
                    <!-- <th>Descripcion</th> -->
                    <th>Cantidad</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            <%
                ArticuloDAO dao = new ArticuloDAO();
                List<Articulo>list = dao.listar();
                Iterator<Articulo>iter = list.iterator();
                Articulo art = null;
                while (iter.hasNext()){
                    art = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= art.getId()%></td>
                    <td><%= art.getNombre()%></td>
                    <!-- <td><%= art.getDescripcion()%></td> -->
                    <td><%= art.getCantidad()%></td>
                    <td><input type ='button' value = 'Traer articulo' onclick="window.open('http://192.168.1.254:8080/blink?f=1', 'width=800,height=600');"/></td> 

                    <td>
                        <input type ='button' value = 'Editar' onclick="window.open('Controlador?accion=editar&id=<%= art.getId()%>', 'width=800,height=600');"/>
                    </td>
                    <td>
                        <input type ='button' value = 'Eliminar' onclick="window.open('Controlador?accion=eliminar&id=<%= art.getId()%>', 'width=800,height=600');"/>
                    </td>
                </tr>
                <%}%>
            </tbody>
            
          </table>
            
            


    </body>
</html>
