<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Inventarios</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_invetarios.css">
    </head>
    <body>
        <h1>Gestión de Inventarios</h1>
        <h2>Listado de Inventarios</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarInventario">Agregar producto a inventario</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Inventario</th>
                    <th>CantidadInventario</th>
                    <th>FechaActualizacion</th>
                    <th>ID_Producto</th>
                    <th>NombreProducto</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaInventario}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Inventario}" /></td>
                        <td><c:out value="${item.cantidadInventario}" /></td>
                        <td><c:out value="${item.fechaActualizacion}" /></td>
                        <td><c:out value="${item.ID_Producto}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td> 
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarInventario.jsp">
                                <input type="hidden" name="ID_Inventario" value="${item.ID_Inventario}" />
                                <input type="hidden" name="cantidadInventario" value="${item.cantidadInventario}" />
                                <input type="hidden" name="fechaActualizacion" value="${item.fechaActualizacion}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarInventario.jsp">
                                <input type="hidden" name="ID_Inventario" value="${item.ID_Inventario}" />
                                <input type="hidden" name="cantidadInventario" value="${item.cantidadInventario}" />
                                <input type="hidden" name="fechaActualizacion" value="${item.fechaActualizacion}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
