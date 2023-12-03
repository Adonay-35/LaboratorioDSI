<%-- 
    Document   : EliminarInventario
    Created on : 28 nov 2023, 14:33:22
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar inventario</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarInventario.css">
    </head>
    <body>
        <h1>Eliminar inventario</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarInventario">
            <div>
                <label>ID Inventario: ${param.ID_Inventario}</label><br>
                <label>Cantidad Inventario: ${param.cantidadInventario}</label><br>
                <label>Fecha Actualizacion: ${param.fechaActualizacion}</label><br>
                <label>ID Producto: ${param.ID_Producto}</label><br>
                <label>Nombre Producto: ${param.nombreProducto}</label>
                <input type="hidden" name="ID_Inventario" id="ID_Inventario" value="${param.ID_Inventario}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el producto del inventario?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarInventarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
