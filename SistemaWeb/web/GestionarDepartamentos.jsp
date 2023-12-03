<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Departamentos</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_departamentos.css">
    </head>
    <body>
        <h1>Gestión de Departamentos</h1>
        <h2>Listado de Departamentos</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Departamento</th>
                    <th>Departamento</th>
                    <th>Pais</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaDepartamentos}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Departamento}" /></td>
                        <td><c:out value="${item.departamento}" /></td>
                        <td><c:out value="${item.pais}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
