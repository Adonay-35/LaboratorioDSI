<%-- 
    Document   : Login
    Created on : 7 oct 2023, 09:41:42
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet" href="./Estilos Principales/style-login.css">
    </head>
    <body>
        <div><h1>Iniciar Sesion</h1></div>
        <div>
            <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=Login">
                <div id="resultLogin"></div>
                <div><h1>Bienvenido al Sistema de Panaderia</h1></div>
                <%-- Crear objeto de la clase Date y formatear --%>
                <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
                <c:set var="formatoFecha" value="dd/MM/YYYY" />
                <%-- Imprimir fecha --%>
                <div>
                    <label>
                        <strong>
                            <c:out value="Fecha Actual: " />
                            <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
                        </strong>
                    </label>
                </div><br>
                <%-- Forma legible 
                <%
                    java.util.Date fechaActual = new java.util.Date();
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/YYYY");
                    String fechaActualLegible = sdf.format(fechaActual);
                %>
                
                <div><label>Fecha Actual: <strong><%= fechaActualLegible %></strong></label></div>
                --%>
                <div><label>Usuario:</label></div>
                <div><input type="text" name="tfUsuario"></div>
                <div><label>Contraseña:</label></div>
                <div><input type="password" name="tfContrasenia"></div><br>
                <div><input type="submit" value="Iniciar Sesion"></div>
            </form>
        </div>
    </body>
</html>
