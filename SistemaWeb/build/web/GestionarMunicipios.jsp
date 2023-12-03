<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Municipios</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_municipios.css">
    </head>
    <body>
        <h1>Gestión de Municipios</h1>
        <h2>Listado de Municipios</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Municipio</th>
                    <th>Municipio</th>
                    <th>ID_Departamento</th>
                    <th>NombreDepartamento</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaMunicipios}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Municipio}" /></td>
                        <td><c:out value="${item.municipio}" /></td>
                        <td><c:out value="${item.ID_Departamento}" /></td>
                        <td><c:out value="${item.nombreDepartamento}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
