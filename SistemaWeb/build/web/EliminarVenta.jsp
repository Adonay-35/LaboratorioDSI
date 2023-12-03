<%-- 
    Document   : EliminarVenta
    Created on : 30 nov 2023, 15:44:55
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar venta</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarVenta.css">
    </head>
    <body>
        <h1>Eliminar venta</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarVenta">
            <div>
                <label>ID Venta: ${param.ID_Venta}</label><br>
                <label>Fecha Venta: ${param.fechaVenta}</label><br>
                <label>Total Venta: ${param.totalVenta}</label><br>
                <label>ID Cliente: ${param.ID_Cliente}</label><br>
                <label>Cliente: ${param.nombreCliente}</label>
                <input type="hidden" name="ID_Venta" id="ID_Venta" value="${param.ID_Venta}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la venta?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
