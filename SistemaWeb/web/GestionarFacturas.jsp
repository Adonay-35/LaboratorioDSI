<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Facturas</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_facturas.css">
    </head>
    <body>
        <h1>Gestión de Facturas</h1>
        <h2>Listado de Facturas</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarFactura">Agregar Factura</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Factura</th>
                    <th>fechaFactura</th>
                    <th>totalFactura</th>
                    <th>ID_Venta</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaFacturas}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Factura}" /></td>
                        <td><c:out value="${item.fechaFactura}" /></td>
                        <td><c:out value="${item.totalFactura}" /></td>
                        <td><c:out value="${item.ID_Venta}" /></td> 
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarFactura.jsp">
                                <input type="hidden" name="ID_Factura" value="${item.ID_Factura}" />
                                <input type="hidden" name="fechaFactura" value="${item.fechaFactura}" />
                                <input type="hidden" name="totalFactura" value="${item.totalFactura}" />
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarFactura.jsp">
                                <input type="hidden" name="ID_Factura" value="${item.ID_Factura}" />
                                <input type="hidden" name="fechaFactura" value="${item.fechaFactura}" />
                                <input type="hidden" name="totalFactura" value="${item.totalFactura}" />
                                <input type="hidden" name="ID_Venta" value="${item.ID_Venta}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
