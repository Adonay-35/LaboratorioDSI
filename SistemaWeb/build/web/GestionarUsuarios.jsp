<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_usuarios.css">
    </head>
    <body>
        <h1>Gestión de Usuarios</h1>
        <h2>Listado de Usuarios</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarUsuario">Agregar usuario</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Usuario</th>
                    <th>ID_Empleado</th>
                    <th>NombreEmpleado</th>
                    <th>ID_Rol</th>
                    <th>NombreRol</th>
                    <th>Usuario</th>
                    <th>Clave</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaUsuarios}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Usuario}" /></td>
                        <td><c:out value="${item.ID_Empleado}" /></td>
                        <td><c:out value="${item.nombreEmpleado}" /></td>
                        <td><c:out value="${item.ID_Rol}" /></td>
                        <td><c:out value="${item.nombreRol}" /></td>
                        <td><c:out value="${item.usuario}" /></td>
                        <td><c:out value="${item.clave}" /></td>
                        <td>
                            <form method="POST" action="/SistemaWeb/ModificarUsuario.jsp">
                                <input type="hidden" name="ID_Usuario" value="${item.ID_Usuario}" />
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="ID_Rol" value="${item.ID_Rol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarUsuario.jsp">
                                <input type="hidden" name="ID_Usuario" value="${item.ID_Usuario}" />
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombreEmpleado" value="${item.nombreEmpleado}" />
                                <input type="hidden" name="ID_Rol" value="${item.ID_Rol}" />
                                <input type="hidden" name="nombreRol" value="${item.nombreRol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
