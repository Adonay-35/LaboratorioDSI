<%-- 
    Document   : AgregarFactura
    Created on : 30 nov 2023, 14:09:16
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Factura</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_factura.css">
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
        <h1>Agregar nueva Factura</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarFactura">
            <div>
                <label>ID Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" required /><br>
                <label>Fecha Factura:</label>
                <input type="text" name="fechaFactura" id="fechaFactura" required /><br>
                <label>Total Factura:</label>
                <input type="text" name="totalFactura" id="totalFactura" required /><br>
                <label>ID Venta:</label>
                <input type="text" name="ID_Venta" id="ID_Venta" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la factura?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarFacturas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
