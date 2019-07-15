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
    <body>
        <h1>Articulos</h1>
            <tbody>
                <table border="1">
                <%
                ArticuloDAO dao = new ArticuloDAO();
                List<Articulo>lists = dao.listar();
                Iterator<Articulo>iter = lists.iterator();
                Articulo arts = null;
                while (iter.hasNext()){
                    arts = iter.next();
            %>
                <tr>
                    <td><input type ='button' value = '<%= arts.getNombre()%>' onclick="window.open('<%arts.getDescripcion()%>', 'width=800,height=600')"/></td> 
                </tr>
                
            <%;}%> 
                </table>
            </tbody>


    </body>
</html>
