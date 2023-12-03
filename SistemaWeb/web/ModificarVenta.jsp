<%-- 
    Document   : ModificarVenta
    Created on : 30 nov 2023, 15:40:30
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Venta</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarVenta.css">
    </head>
    <body>
        <h1>Modificar Venta</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarVenta">
            <div>
                <label>ID Venta:</label>
                <input type="text" name="ID_Venta" id="ID_Venta" value="${param.ID_Venta}" readonly /><br>
                <label>Fecha Venta:</label>
                <input type="text" name="fechaVenta" id="fechaVenta" value="${param.fechaVenta}" required /><br>
                <label>Total Venta:</label>
                <input type="text" name="totalVenta" id="totalVenta" value="${param.totalVenta}" required /><br>
                <label>ID Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la venta?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
