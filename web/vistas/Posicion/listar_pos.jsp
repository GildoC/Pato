<%-- 
    Document   : listar
    Created on : 05-may-2019, 17:33:38
    Author     : Gildo-PC
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Posicion"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PosicionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Posiciones</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Pos A</th>
                        <th>Pos B</th>
                        <th>Link</th>
                        <th>Product</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    PosicionDAO dao = new PosicionDAO();
                    List<Posicion>list = dao.listar();
                    Iterator<Posicion>iter = list.iterator();
                    Posicion pos = null;
                    while (iter.hasNext()){
                        pos = iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%= pos.getId_pos()%></td>
                        <td><%= pos.getNombre()%></td>
                        <td><%= pos.getPos_a()%></td>
                        <td><%= pos.getPos_b()%></td>
                        <td><%= pos.getLink()%></td>
                        <td><%= pos.getProducto()%></td>
                        <td>
                            <a>Edit</a>
                            <a>Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
