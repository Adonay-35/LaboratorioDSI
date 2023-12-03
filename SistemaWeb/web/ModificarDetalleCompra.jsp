<%-- 
    Document   : ModificarDetalleCompra
    Created on : 30 nov 2023, 21:57:58
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar detalle compra</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarDetalleCompra.css">
    </head>
    <body>
        <h1>Modificar detalle compra</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarDetalleCompra">
            <div>
                <label>ID Detalle Compra:</label>
                <input type="text" name="ID_DetalleCompra" id="ID_DetalleCompra" value="${param.ID_DetalleCompra}" readonly /><br>
                <label>Cantidad Comprada:</label>
                <input type="text" name="cantidadComprada" id="cantidadComprada" value="${param.cantidadComprada}" required /><br>
                <label>Precio Unitario Compra:</label>
                <input type="text" name="precioUnitarioCompra" id="precioUnitarioCompra" value="${param.precioUnitarioCompra}" required /><br>
                <label>SubTotal:</label>
                <input type="text" name="subTotal" id="subTotal" value="${param.subTotal}" required /><br>
                <label>ID Compra</label>
                <input type="text" name="ID_Compra" id="ID_Compra" value="${param.ID_Compra}" required /><br>
                <label>ID Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el detalle compra?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
