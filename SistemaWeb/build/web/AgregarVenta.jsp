<%-- 
    Document   : AgregarVenta
    Created on : 30 nov 2023, 15:35:38
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Venta</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_venta.css">
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
        <h1>Agregar nueva Venta</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarVenta">
            <div>
                <label>Fecha Venta:</label>
                <input type="text" name="fechaVenta" id="fechaVenta" required /><br>
                <label>Total Venta:</label>
                <input type="text" name="totalVenta" id="totalVenta" required /><br>
                <label>ID Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la venta?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarVentas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
