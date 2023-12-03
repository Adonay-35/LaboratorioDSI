<%-- 
    Document   : EliminarCompra
    Created on : 30 nov 2023, 15:45:04
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar compra</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarCompra.css">
    </head>
    <body>
        <h1>Eliminar compra</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarCompra">
            <div>
                <label>ID Compra: ${param.ID_Compra}</label><br>
                <label>Fecha Compra: ${param.fechaCompra}</label><br>
                <label>Monto Compra: ${param.montoCompra}</label><br>
                <label>ID Proveedor: ${param.ID_Proveedor}</label><br>
                <label>Empresa: ${param.empresa}</label>
                <input type="hidden" name="ID_Compra" id="ID_Compra" value="${param.ID_Compra}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la compra?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
