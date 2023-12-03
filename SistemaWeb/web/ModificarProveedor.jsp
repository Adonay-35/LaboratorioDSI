<%-- 
    Document   : ModificarProveedores
    Created on : 29 nov 2023, 07:53:25
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarProveedor.css">
    </head>
    <body>
        <h1>Modificar proveedor</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarProveedor">
            <div>
                <label>ID Proveedor:</label>
                <input type="text" name="ID_Proveedor" id="ID_Proveedor" value="${param.ID_Proveedor}" readonly /><br>
                <label>Empresa:</label>
                <input type="text" name="empresa" id="empresa" value="${param.empresa}" required /><br>
                <label>Telefono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el proveedor?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
