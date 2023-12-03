<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Distritos</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_distritos.css">
    </head>
    <body>
        <h1>Gestión de Distritos</h1>
        <h2>Listado de Distritos</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Distrito</th>
                    <th>Distrito</th>
                    <th>ID_Municipio</th>
                    <th>NombreMunicipio</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaDistritos}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Distrito}" /></td>
                        <td><c:out value="${item.distrito}" /></td>
                        <td><c:out value="${item.ID_Municipio}" /></td>
                        <td><c:out value="${item.nombreMunicipio}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
