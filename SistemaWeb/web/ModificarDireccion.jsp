<%-- 
    Document   : ModificarDireccion
    Created on : 28 nov 2023, 00:59:49
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar direccion</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarDireccion.css">
    </head>
    <body>
        <h1>Modificar direccion</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarDireccion">
            <div>
                <label>ID Direccion:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" readonly /><br>
                <label>Linea 1:</label>
                <input type="text" name="linea1" id="linea1" value="${param.linea1}" required /><br>
                <label>Linea 2:</label>
                <input type="text" name="linea2" id="linea2" value="${param.linea2}" required /><br>
                <label>ID Distrito:</label>
                <input type="text" name="ID_Distrito" id="ID_Distrito" value="${param.ID_Distrito}" required /><br>
                <label>Codigo Postal</label>
                <input type="text" name="codigoPostal" id="codigoPostal" value="${param.codigoPostal}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la direccion?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
