<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Detalles Compras</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_detallescompras.css">
    </head>
    <body>
        <h1>Gestión de Detalles Compras</h1>
        <h2>Listado de Detalles Compras</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarDetalleCompra">Agregar Detalles Compras</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_DetalleCompra</th>
                    <th>cantidadComprada</th>
                    <th>precioUnitarioCompra</th>
                    <th>subTotal</th>
                    <th>ID_Compra</th>
                    <th>ID_Producto</th>
                    <th>nombreProducto</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaDetallesCompras}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_DetalleCompra}" /></td>
                        <td><c:out value="${item.cantidadComprada}" /></td>
                        <td><c:out value="${item.precioUnitarioCompra}" /></td>
                        <td><c:out value="${item.subTotal}" /></td>
                        <td><c:out value="${item.ID_Compra}" /></td>
                        <td><c:out value="${item.ID_Producto}" /></td>
                        <td><c:out value="${item.nombreProducto}" /></td>
                        
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarDetalleCompra.jsp">
                                <input type="hidden" name="ID_DetalleCompra" value="${item.ID_DetalleCompra}" />
                                <input type="hidden" name="cantidadComprada" value="${item.cantidadComprada}" />
                                <input type="hidden" name="precioUnitarioCompra" value="${item.precioUnitarioCompra}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarDetalleCompra.jsp">
                                <input type="hidden" name="ID_DetalleCompra" value="${item.ID_DetalleCompra}" />
                                <input type="hidden" name="cantidadComprada" value="${item.cantidadComprada}" />
                                <input type="hidden" name="precioUnitarioCompra" value="${item.precioUnitarioCompra}" />
                                <input type="hidden" name="subTotal" value="${item.subTotal}" />
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
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
