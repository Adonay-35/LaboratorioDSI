<%-- 
    Document   : AgregarUsuario
    Created on : 30 nov 2023, 13:06:48
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_usuario.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(14, 255, 14);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo usuario</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarUsuario">
            <div>
                <label>ID_Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" required /><br>
                <label>ID_Rol:</label>
                <input type="text" name="ID_Rol" id="ID_Rol" required /><br>
                <label>Usuario:</label>
                <input type="text" name="usuario" id="usuario" required /><br>
                <label>Clave:</label>
                <input type="text" name="clave" id="clave" required /><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el usuario?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarUsuarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
