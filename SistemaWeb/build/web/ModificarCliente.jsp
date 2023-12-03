<%-- 
    Document   : ModificarCliente
    Created on : 26 nov 2023, 23:30:05
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar cliente</title>
        <link rel="stylesheet" href="./Estilos Modificar/style-ModificarCliente.css">
    </head>
    <body>
        <h1>Modificar cliente</h1>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=ModificarCliente">
            <div>
                <label>ID Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" readonly /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresCliente" id="nombresCliente" value="${param.nombresCliente}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosCliente" id="apellidosCliente" value="${param.apellidosCliente}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="DUI_Cliente" value="${param.dui}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefonoCliente" value="${param.telefono}" required /><br><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
