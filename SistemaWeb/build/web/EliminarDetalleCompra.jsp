<%-- 
    Document   : EliminarDetalleCompra
    Created on : 30 nov 2023, 21:46:25
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar detalle compra</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarDetalleCompra.css">
    </head>
    <body>
        <h1>Eliminar detalle compra</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarDetalleCompra">
            <div>
                <label>ID Detalle Venta: ${param.ID_DetalleCompra}</label><br>
                <label>Cantidad Comprada: ${param.cantidadComprada}</label><br>
                <label>Precio Unitario Compra: ${param.precioUnitarioCompra}</label><br>
                <label>SubTotal: ${param.subTotal}</label><br>
                <label>ID Compra: ${param.ID_Compra}</label><br>
                <label>ID Producto: ${param.ID_Producto}</label><br>
                <label>Nombre Producto: ${param.nombreProducto}</label>
                <input type="hidden" name="ID_DetalleCompra" id="ID_DetalleCompra" value="${param.ID_DetalleCompra}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el detalle compra?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
