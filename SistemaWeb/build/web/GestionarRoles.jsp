<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Roles</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_roles.css">
    </head>
    <body>
        <h1>Gestión de Roles</h1>
        <h2>Listado de Roles</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Rol</th>
                    <th>NombreRol</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaRoles}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Rol}" /></td>
                        <td><c:out value="${item.nombreRol}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
