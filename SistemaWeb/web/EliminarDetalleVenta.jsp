<%-- 
    Document   : EliminarDetalleVenta
    Created on : 30 nov 2023, 21:46:10
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarDestalleVenta.css">
    </head>
    <body>
        <h1>Eliminar detalle venta</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarDetalleVenta">
            <div>
                <label>ID Detalle Venta: ${param.ID_DetalleVenta}</label><br>
                <label>Cantidad Vendida: ${param.cantidadVendida}</label><br>
                <label>Precio Unitario Venta: ${param.precioUnitarioVenta}</label><br>
                <label>SubTotal: ${param.subTotal}</label><br>
                <label>ID Venta: ${param.ID_Venta}</label><br>
                <label>ID Producto: ${param.ID_Producto}</label><br>
                <label>Nombre Producto: ${param.nombreProducto}</label>
                <input type="hidden" name="ID_DetalleVenta" id="ID_DetalleVenta" value="${param.ID_DetalleVenta}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el detalle venta?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
