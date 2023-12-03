<%-- 
    Document   : ModificarFactura
    Created on : 30 nov 2023, 14:31:36
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar facturas</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarFactura.css">
    </head>
    <body>
        <h1>Modificar facturas</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarFactura">
            <div>
                <label>ID Factura:</label>
                <input type="text" name="ID_Factura" id="ID_Factura" value="${param.ID_Factura}" readonly /><br>
                <label>Fecha Factura:</label>
                <input type="text" name="fechaFactura" id="fechaFactura" value="${param.fechaFactura}" required /><br>
                <label>Total Factura:</label>
                <input type="text" name="totalFactura" id="totalFactura" value="${param.totalFactura}" required /><br>
                <label>ID Venta:</label>
                <input type="text" name="ID_Venta" id="ID_Venta" value="${param.ID_Venta}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el producto?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarFacturas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
