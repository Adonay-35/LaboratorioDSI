<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Opciones</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_opciones.css">
    </head>
    <body>
        <h1>Gestión de Opciones</h1>
        <h2>Listado de Opciones</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Opcion</th>
                    <th>NombreOpcion</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaOpciones}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Opcion}" /></td>
                        <td><c:out value="${item.nombreOpcion}" /></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
