<%-- 
    Document   : ModificarProducto
    Created on : 27 nov 2023, 14:01:22
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar producto</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarProducto.css">
    </head>
    <body>
        <h1>Modificar producto</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarProducto">
            <div>
                <label>ID Producto:</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" readonly /><br>
                <label>Nombre Producto:</label>
                <input type="text" name="nombreProducto" id="nombreProducto" value="${param.nombreProducto}" required /><br>
                <label>Precio Unitario:</label>
                <input type="text" name="precioUnitario" id="precioUnitario" value="${param.precioUnitario}" required /><br>
                <label>Descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el producto?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
