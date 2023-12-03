<%-- 
    Document   : ModificarInventario
    Created on : 28 nov 2023, 13:45:39
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar producto de inventario</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarInventario.css">
    </head>
    <body>
        <h1>Modificar producto de inventario</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarInventario">
            <div>
                <label>ID Inventario:</label>
                <input type="text" name="ID_Inventario" id="ID_Inventario" value="${param.ID_Inventario}" readonly /><br>
                <label>Cantidad Inventario:</label>
                <input type="text" name="cantidadInventario" id="cantidadInventario" value="${param.cantidadInventario}" required /><br>
                <label>Fecha Actualizacion</label>
                <input type="text" name="fechaActualizacion" id="fechaActualizacion" value="${param.fechaActualizacion}" required /><br>
                <label>ID Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" required /><br>
                <label>Nombre Producto:</label>
                <input type="text" name="nombreProducto" id="nombreProducto" value="${param.nombreProducto}" readonly /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el producto del inventario?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarInventarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
