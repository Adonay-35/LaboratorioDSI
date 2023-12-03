<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Direcciones</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_direcciones.css">
    </head>
    <body>
        <h1>Gestión de Direcciones</h1>
        <h2>Listado de Direcciones</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarDireccion">Agregar Direccion</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Direccion</th>
                    <th>Linea1</th>
                    <th>Linea2</th>
                    <th>Distrito</th>
                    <th>Municipio</th>
                    <th>Departamento</th>
                    <th>Pais</th>
                    <th>CodigoPostal</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaDirecciones}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Direccion}" /></td>
                        <td><c:out value="${item.linea1}" /></td>
                        <td><c:out value="${item.linea2}" /></td>
                        <td><c:out value="${item.distrito}" /></td>
                        <td><c:out value="${item.municipio}" /></td>
                        <td><c:out value="${item.departamento}" /></td>
                        <td><c:out value="${item.pais}" /></td>
                        <td><c:out value="${item.codigoPostal}" /></td>
                        
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarDireccion.jsp">
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="ID_Distrito" value="${item.ID_Distrito}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarDireccion.jsp">
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="ID_Distrito" value="${item.ID_Distrito}" />
                                <input type="hidden" name="distrito" value="${item.distrito}" />
                                <input type="hidden" name="municipio" value="${item.municipio}" />
                                <input type="hidden" name="departamento" value="${item.departamento}" />
                                <input type="hidden" name="pais" value="${item.pais}" />
                                <input type="hidden" name="codigoPostal" value="${item.codigoPostal}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
