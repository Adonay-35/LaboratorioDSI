<%-- 
    Document   : EliminarCliente
    Created on : 26 nov 2023, 22:06:39
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar cliente</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarCliente.css">
    </head>
    <body>
        <h1>Eliminar cliente</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>ID Cliente: ${param.ID_Cliente}</label><br>
                <label>Nombres: ${param.nombresCliente}</label><br>
                <label>Apellidos: ${param.apellidosCliente}</label><br>
                <label>DUI: ${param.dui}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>ID Dirección: ${param.ID_Direccion}</label><br>
                <label>Direccion: ${param.direccionCompleta}</label>
                <input type="hidden" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
