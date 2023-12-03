<%-- 
    Document   : ModificarDetalleVenta
    Created on : 30 nov 2023, 21:57:48
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar detalle venta</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarDetalleVenta.css">
    </head>
    <body>
        <h1>Modificar detalle venta</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarDetalleVenta">
            <div>
                <label>ID Detalle Venta:</label>
                <input type="text" name="ID_DetalleVenta" id="ID_DetalleVenta" value="${param.ID_DetalleVenta}" readonly /><br>
                <label>Cantidad Vendida:</label>
                <input type="text" name="cantidadVendida" id="cantidadVendida" value="${param.cantidadVendida}" required /><br>
                <label>Precio Unitario Venta:</label>
                <input type="text" name="precioUnitarioVenta" id="precioUnitarioVenta" value="${param.precioUnitarioVenta}" required /><br>
                <label>SubTotal:</label>
                <input type="text" name="subTotal" id="subTotal" value="${param.subTotal}" required /><br>
                <label>ID Venta</label>
                <input type="text" name="ID_Venta" id="ID_Venta" value="${param.ID_Venta}" required /><br>
                <label>ID Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el detalle venta?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
