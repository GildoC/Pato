<%-- 
    Document   : add
    Created on : 06-ene-2019, 21:13:33
    Author     : Gildo-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Articulo</h1>
        <form action="Controlador">
            Nombre:<br>
            <input type="text" name="txtNom"><br>
            Direccion de estante:<br>
            <input type="text" name="txtDesc"><br>
            Cantidad:<br>
            <input type="text" name="txtCant"><br>
            <input type="submit" name="accion" value="Agregar"><br>
        </form>
    </body>
</html>
