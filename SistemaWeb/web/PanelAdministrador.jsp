<%-- 
    Document   : PanelAdministrador
    Created on : 7 oct 2023, 09:49:57
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel del Administrador</title>
        <style>

            h1, h2, h3 {
                color: #000000;
                text-align: center;
            }

            div h3{
                font-size: 20px;
                box-shadow: 0 0 20px rgba(6, 6, 6, 0.1);
                border-radius: 8px;
                background-color: bisque;
                margin: 10px 400px 0px 400px;
                padding: 10px 10px 10px 10px;
            }

            div h2 {
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                margin: 10px 200px 10px 200px;
                padding: 10px 10px 10px 10px;
                background-color: aliceblue;
            }

        </style>
    </head>
    <body>
        <div><h1>Sistema de Panadería 1.0</h1></div>
        <%-- Bienvenida --%>
        <c:set var="usuario" value="${param.tfUsuario}" />
        <div><h2><strong>¡Bienvenido, <c:out value="${usuario}" />!</strong></h2></div>

        <%-- Directiva include --%>
        <br>
        <div><h3>Menú de opciones</h3></div>
        <div>
            <%@include file="MenuAdministrador.jsp" %>
        </div>
        <div>
            <%@include file="Footer.html" %>
        </div>
    </body>
</html>

