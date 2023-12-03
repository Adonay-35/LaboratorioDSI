<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Detalles Ventas</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_detallesventas.css">
    </head>
    <body>
        <h1>Gestión de Detalles Ventas</h1>
        <h2>Listado de Detalles Ventas</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarDetalleVenta">Agregar Detalles Ventas</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_DetalleVenta</th>
                    <th>cantidadVendida</th>
                    <th>precioUnitarioVenta</th>
                    <th>subTotal</th>
                    <th>ID_Venta</th>
                    <th>ID_Producto</th>
                    <th>nombreProducto</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaDetallesVentas}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_DetalleVenta}" /></td>
                        <td><c:out value="${item.cantidadVendida}" /></td>
                        <td><c:out value="${item.precioUnitarioVenta}" /></td>
                        <td><c:out value="${item.subTotal}" /></td>
                        <td><c:out value="${item.ID_Venta}" /></td>
                        <td><c:out value="${item.ID_Producto}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td>
                        
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarDetalleVenta.jsp">
                                <input type="hidden" name="ID_DetalleVenta" value="${item.ID_DetalleVenta}" />
                                <input type="hidden" name="cantidadVendida" value="${item.cantidadVendida}" />
                                <input type="hidden" name="precioUnitarioVenta" value="${item.precioUnitarioVenta}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarDetalleVenta.jsp">
                                <input type="hidden" name="ID_DetalleVenta" value="${item.ID_DetalleVenta}" />
                                <input type="hidden" name="cantidadVendida" value="${item.cantidadVendida}" />
                                <input type="hidden" name="precioUnitarioVenta" value="${item.precioUnitarioVenta}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
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
