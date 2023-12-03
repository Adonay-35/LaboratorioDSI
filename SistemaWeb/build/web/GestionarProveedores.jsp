<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Proveedores</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_proveedores.css">
    </head>
    <body>
        <h1>Gestión de Proveedores</h1>
        <h2>Listado de Proveedores</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarProveedor">Agregar proveedor</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Proveedor</th>
                    <th>Empresa</th>
                    <th>Telefono</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaProveedores}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Proveedor}" /></td>
                        <td><c:out value="${item.empresa}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarProveedor.jsp">
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="empresa" value="${item.empresa}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarProveedor.jsp">
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="empresa" value="${item.empresa}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
