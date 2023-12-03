<%-- 
    Document   : EliminarProducto
    Created on : 27 nov 2023, 14:41:04
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar producto</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarProducto.css">
    </head>
    <body>
        <h1>Eliminar producto</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarProducto">
            <div>
                <label>ID Producto: ${param.ID_Producto}</label><br>
                <label>Nombre Producto: ${param.nombreProducto}</label><br>
                <label>Precio Unitario: ${param.precioUnitario}</label><br>
                <label>Descripcion: ${param.descripcion}</label>  
                <input type="hidden" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el producto?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProductos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
