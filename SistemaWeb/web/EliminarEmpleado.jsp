<%-- 
    Document   : EliminarEmpleado
    Created on : 4 nov 2023, 09:50:09
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Empleado</title>
        <link rel="stylesheet" href="./Estilos Eliminar/style-EliminarEmpleado.css">
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>ID Empleado: ${param.ID_Empleado}</label><br>
                <label>Nombres: ${param.nombresEmpleado}</label><br>
                <label>Apellidos: ${param.apellidosEmpleado}</label><br>
                <label>DUI: ${param.dui}</label><br>
                <label>Número de afiliado ISSS: ${param.isss}</label><br>
                <label>Fecha de nacimiento: ${param.fechaNacEmpleado}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>ID Cargo: ${param.ID_Cargo}</label><br>
                <label>ID Dirección: ${param.ID_Direccion}</label><br>
                <label>Direccion: ${param.direccionCompleta}</label>
                <input type="hidden" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/SistemaWeb/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
