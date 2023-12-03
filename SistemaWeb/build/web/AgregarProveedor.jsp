<%-- 
    Document   : AgregarProveedor
    Created on : 28 nov 2023, 15:26:33
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Proveedor</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_proveedor.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(5, 255, 5);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo proveedor</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarProveedor">
            <div>
                <label>Empresa:</label>
                <input type="text" name="empresa" id="empresa" required /><br>
                <label>Telefono:</label>
                <input type="text" name="telefono" id="telefono" required /><br><br>                                  
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el proveedor?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProveedores">Regresar</a>
            </div>            
        </form>
    </body>
</html>
