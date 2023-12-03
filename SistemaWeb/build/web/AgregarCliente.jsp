<%-- 
    Document   : AgregarCliente
    Created on : 26 nov 2023, 22:06:21
    Author     : HERNANDEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilos Agregar/style-Agregar_cliente.css">
    </head>
    <body>
         <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: rgb(4, 255, 4);">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Agregar nuevo cliente</h1>

        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=AgregarCliente">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>Nombres:</label>
                <input type="text" name="nombresCliente" id="nombresCliente" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosCliente" id="apellidosCliente" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cliente?')" /><br><br>
            </div><br>
            <div>
                <a href="/SistemaWeb/Gestion/?accion=GestionarClientes">Regresar</a>
            </div>            
        </form>
    </body>
</html>
