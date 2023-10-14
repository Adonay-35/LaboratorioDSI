<%-- 
    Document   : PanelContador
    Created on : 13 oct 2023, 14:02:43
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel del Contador</title>
    </head>
    <body>
        <div><h1>Sistema de Panaderia 1.0</h1></div>
        <%-- Directiva page --%>
        <% String usuario = request.getParameter("tfUsuario"); %>
        <div><h2><strong>Bienvenido, <%= usuario %></strong></h2></div>
        
                <%-- Directiva include --%>
        <br>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="MenuContador.jsp" %>
        </div>
        <div>
            <%@include file="Footer.html" %>
        </div>
    </body>
</html>
