<%-- 
    Document   : AgregarDireccion
    Created on : 28 nov 2023, 00:36:25
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Direccion</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_direccion.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(1, 245, 1);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nueva direccion</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarDireccion">
            <div>
                <label>Linea 1:</label>
                <input type="text" name="linea1" id="linea1" required /><br>
                <label>Linea 2:</label>
                <input type="text" name="linea2" id="linea2" required /><br>
                <label>ID_Distrito:</label>
                <input type="text" name="ID_Distrito" id="ID_Distrito" required /><br>
                <label>Codigo Postal:</label>
                <input type="text" name="codigoPostal" id="codigoPostal" required /><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la direccion?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDirecciones">Regresar</a>
            </div>            
        </form>
    </body>
</html>
