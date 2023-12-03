<%-- 
    Document   : AgregarProducto
    Created on : 27 nov 2023, 14:11:56
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_producto.css">
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
        <h1>Agregar nuevo producto</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarProducto">
            <div>
                <label>Nombre Producto:</label>
                <input type="text" name="nombreProducto" id="nombreProducto" required /><br>
                <label>Precio Unitario:</label>
                <input type="text" name="precioUnitario" id="precioUnitario" required /><br>
                <label>Descripcion:</label>
                <input type="text" name="descripcion" id="descripcion" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el producto?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProductos">Regresar</a>
            </div>            
        </form>
    </body>
</html>
