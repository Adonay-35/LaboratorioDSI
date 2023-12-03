<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Productos</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_producto.css">
    </head>
    <body>
        <h1>Gestión de Productos</h1>
        <h2>Listado de Productos</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarProducto">Agregar producto</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Producto</th>
                    <th>Nombre_Producto</th>
                    <th>Precio_Unitario</th>
                    <th>Descripcion</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaProductos}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Producto}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td>
                        <td><c:out value="${item.precioUnitario}" /></td>
                        <td><c:out value="${item.descripcion}" /></td> 
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarProducto.jsp">
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarProducto.jsp">
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
