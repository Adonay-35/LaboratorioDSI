<%-- 
    Document   : EliminarUsuario
    Created on : 30 nov 2023, 13:29:40
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar usuario</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarUsuario.css">
    </head>
    <body>
        <h1>Eliminar usuario</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarUsuario">
            <div>
                <label>ID Usuario: ${param.ID_Usuario}</label><br>
                <label>ID Empleado ${param.ID_Empleado}</label><br>
                <label>Empleado: ${param.nombreEmpleado}</label><br>
                <label>ID Rol: ${param.ID_Rol}</label><br>
                <label>Nombre Rol: ${param.nombreRol}</label><br>
                <label>Usuario: ${param.usuario}</label><br>
                <label>Clave: ${param.clave}</label><br>
                <input type="hidden" name="ID_Usuario" id="ID_Usuario" value="${param.ID_Usuario}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el usuario?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarUsuarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
