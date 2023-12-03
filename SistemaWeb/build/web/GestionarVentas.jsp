<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Ventas</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_ventas.css">
    </head>
    <body>
        <h1>Gestión de Ventas</h1>
        <h2>Listado de Ventas</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarVenta">Agregar venta</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Venta</th>
                    <th>fechaVenta</th>
                    <th>totalVenta</th>
                    <th>ID_Cliente</th>
                    <th>nombreCliente</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaVentas}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Venta}" /></td>
                        <td><c:out value="${item.fechaVenta}" /></td>
                        <td><c:out value="${item.totalVenta}" /></td>
                        <td><c:out value="${item.ID_Cliente}" /></td>
                        <td><c:out value="${item.nombreCliente}" /></td>

                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarVenta.jsp">
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="hidden" name="totalVenta" value="${item.totalVenta}" />
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarVenta.jsp">
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="hidden" name="totalVenta" value="${item.totalVenta}" />
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
