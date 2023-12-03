<%-- 
    Document   : ModificarCompra
    Created on : 30 nov 2023, 15:40:39
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Compra</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarCompra.css">
    </head>
    <body>
        <h1>Modificar Compra</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarCompra">
            <div>
                <label>ID Compra:</label>
                <input type="text" name="ID_Compra" id="ID_Compra" value="${param.ID_Compra}" readonly /><br>
                <label>Fecha Compra:</label>
                <input type="text" name="fechaCompra" id="fechaCompra" value="${param.fechaCompra}" required /><br>
                <label>Monto Compra:</label>
                <input type="text" name="montoCompra" id="montoCompra" value="${param.montoCompra}" required /><br>
                <label>ID Proveedor:</label>
                <input type="text" name="ID_Proveedor" id="ID_Proveedor" value="${param.ID_Proveedor}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la compra?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
