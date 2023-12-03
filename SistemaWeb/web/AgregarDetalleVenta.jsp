<%-- 
    Document   : AgregarDetalleVenta
    Created on : 30 nov 2023, 20:34:54
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar nuevo detalle venta</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_detalleventa.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(0, 255, 0);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo detalle venta</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarDetalleVenta">
            <div>
                <label>Cantidad Vendida:</label>
                <input type="text" name="cantidadVendida" id="cantidadVendida" required /><br>
                <label>Precio Unitario Venta:</label>
                <input type="text" name="precioUnitarioVenta" id="precioUnitarioVenta" required /><br>
                <label>Sub Total:</label>
                <input type="text" name="subTotal" id="subTotal" required /><br>
                <label>ID Venta:</label>
                <input type="text" name="ID_Venta" id="ID_Venta" required /><br>
                <label>ID Producto:</label>
                <input type="text" name="ID_Producto" id="ID_Producto" required /><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el detalle venta?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesVentas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
