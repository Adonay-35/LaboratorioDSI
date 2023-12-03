<%-- 
    Document   : AgregarDetalleCompra
    Created on : 30 nov 2023, 20:35:15
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_detallecompra.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(0, 248, 0);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo detalle Compra</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarDetalleCompra">
            <div>
                <label>Cantidad Comprada:</label>
                <input type="text" name="cantidadComprada" id="cantidadComprada" required /><br>
                <label>Precio Unitario Compra:</label>
                <input type="text" name="precioUnitarioCompra" id="precioUnitarioCompra" required /><br>
                <label>Sub Total:</label>
                <input type="text" name="subTotal" id="subTotal" required /><br>
                <label>ID Compra:</label>
                <input type="text" name="ID_Compra" id="ID_Compra" required /><br>
                <label>ID Producto:</label>
                <input type="text" name="ID_Producto" id="ID_Producto" required /><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el detalle compra?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarDetallesCompras">Regresar</a>
            </div>            
        </form>
    </body>
</html>
