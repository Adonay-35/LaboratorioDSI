<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Compras</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_compras.css">
    </head>
    <body>
        <h1>Gestión de Compras</h1>
        <h2>Listado de Compras</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarCompra">Agregar Compra</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Compra</th>
                    <th>fechaCompra</th>
                    <th>montoCompra</th>
                    <th>ID_Proveedor</th>
                    <th>empresa</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaCompras}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Compra}" /></td>
                        <td><c:out value="${item.fechaCompra}" /></td>
                        <td><c:out value="${item.montoCompra}" /></td>
                        <td><c:out value="${item.ID_Proveedor}" /></td>
                        <td><c:out value="${item.empresa}" /></td>

                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarCompra.jsp">
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="hidden" name="montoCompra" value="${item.montoCompra}" />
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarCompra.jsp">
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="hidden" name="montoCompra" value="${item.montoCompra}" />
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="empresa" value="${item.empresa}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
