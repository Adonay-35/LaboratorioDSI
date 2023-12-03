<%-- 
    Document   : AgregarCompras
    Created on : 30 nov 2023, 15:35:46
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Compra</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_compra.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(9, 255, 9);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>    
        <h1>Agregar nueva Compra</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarCompra">
            <div>
                <label>Fecha Compra:</label>
                <input type="text" name="fechaCompra" id="fechaCompra" required /><br>
                <label>Monto Compra:</label>
                <input type="text" name="montoCompra" id="montoCompra" required /><br>
                <label>ID Proveedor:</label>
                <input type="text" name="ID_Proveedor" id="ID_Proveedor" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la Compra?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarCompras">Regresar</a>
            </div>            
        </form>
    </body>
</html>
