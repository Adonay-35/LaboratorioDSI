<%-- 
    Document   : EliminarFactura
    Created on : 30 nov 2023, 14:20:14
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar factura</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarFactura.css">
    </head>
    <body>
        <h1>Eliminar factura</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarFactura">
            <div>
                <label>ID Factura: ${param.ID_Factura}</label><br>
                <label>Fecha Factura: ${param.fechaFactura}</label><br>
                <label>Total Factura: ${param.totalFactura}</label><br>
                <label>ID Venta: ${param.ID_Venta}</label>  
                <input type="hidden" name="ID_Factura" id="ID_Factura" value="${param.ID_Factura}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la factura?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarFacturas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
