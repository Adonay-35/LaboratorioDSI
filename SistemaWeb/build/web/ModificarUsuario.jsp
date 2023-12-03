<%-- 
    Document   : ModificarUsuario
    Created on : 30 nov 2023, 13:44:50
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar usuario</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarUsuario.css">
    </head>
    <body>
        <h1>Modificar usuario</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarUsuario">
            <div>
                <label>ID Usuario:</label>
                <input type="text" name="ID_Usuario" id="ID_Usuario" value="${param.ID_Usuario}" readonly /><br>
                <label>ID Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" required /><br>
                <label>ID Rol:</label>
                <input type="text" name="ID_Rol" id="ID_Rol" value="${param.ID_Rol}" required /><br>
                <label>Usuario:</label>
                <input type="text" name="usuario" id="usuario" value="${param.usuario}" required /><br>
                <label>Clave:</label>
                <input type="text" name="clave" id="clave" value="${param.clave}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el usuario?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarUsuarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
