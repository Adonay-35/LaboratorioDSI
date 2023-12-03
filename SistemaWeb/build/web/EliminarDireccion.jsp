<%-- 
    Document   : EliminarDireccion
    Created on : 28 nov 2023, 01:22:09
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar direccion</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarDireccion.css">
    </head>
    <body>
        <h1>Eliminar direccion</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarDireccion">
            <div>
                <label>ID Direccion: ${param.ID_Direccion}</label><br>
                <label>Linea 1: ${param.linea1}</label><br>
                <label>Linea 2: ${param.linea2}</label><br>
                <label>ID Distrito: ${param.ID_Distrito}</label><br>
                <label>Distrito: ${param.distrito}</label><br>
                <label>Municipio: ${param.municipio}</label><br>
                <label>Departamento: ${param.departamento}</label><br>
                <label>Pais: ${param.pais}</label><br>
                <label>Codigo Postal: ${param.codigoPostal}</label> 
                <input type="hidden" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la direccion?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
