<%-- 
    Document   : AgregarInventario
    Created on : 28 nov 2023, 13:16:22
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Inventario</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_inventario.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(6, 255, 6);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo producto a inventario</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarInventario">
            <div>
                <label>Cantidad Inventario:</label>
                <input type="text" name="cantidadInventario" id="cantidadInventario" required /><br>
                <label>Fecha Actualizacion:</label>
                <input type="text" name="fechaActualizacion" id="fechaActualizacion" required /><br>
                <label>ID Producto:</label>
                <input type="text" name="ID_Producto" id="ID_Producto" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el nuevo producto en el inventario?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarInventarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
