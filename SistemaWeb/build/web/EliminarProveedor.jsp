<%-- 
    Document   : EliminarProveedor
    Created on : 29 nov 2023, 09:34:04
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarProveedor.css">
    </head>
    <body>
        <h1>Eliminar proveedor</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarProveedor">
            <div>
                <label>ID Proveedor: ${param.ID_Proveedor}</label><br>
                <label>Empresa: ${param.empresa}</label><br>
                <label>Telefono: ${param.telefono}</label>
                <input type="hidden" name="ID_Proveedor" id="ID_Proveedor" value="${param.ID_Proveedor}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el proveedor?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
