<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Cargos</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_cargos.css">
    </head>
    <body>
        <h1>Gestión de Cargos</h1>
        <h2>Listado de Cargos</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Cargo</th>
                    <th>Cargo</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaCargos}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Cargo}" /></td>
                        <td><c:out value="${item.cargo}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
