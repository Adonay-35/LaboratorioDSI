<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Clientes</title>
        <link rel="stylesheet" href="./Estilo Gestion/style-G_clientes.css">
        <style>
            /* Estilo para el contenedor del pop-up */
            .popup-container {
                display: none;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                padding: 20px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                z-index: 1;
            }

            /* Estilo para el fondo oscuro */
            .overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 0;
            }
        </style>
    </head>
    <body>
        <h1>Gestión de Clientes</h1>
        <h2>Listado de Clientes</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <a href="/SistemaWeb?accion=AgregarCliente">Agregar cliente</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Cliente</th>
                    <th>Nombres_Cliente</th>
                    <th>Apellidos_Cliente</th>
                    <th>DUI</th>
                    <th>Telefono</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                    <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Cliente}" /></td>
                        <td><c:out value="${item.nombresCliente}" /></td>
                        <td><c:out value="${item.apellidosCliente}" /></td>
                        <td><c:out value="${item.dui}" /></td>                                         
                        <td><c:out value="${item.telefono}" /></td>
                        
                        <td>
                            <button class="open-popup-btn" 
                                    onclick="mostrarDetallesCliente(
                                                    '${item.ID_Cliente}',
                                                    '${item.nombresCliente}',
                                                    '${item.apellidosCliente}',
                                                    '${item.dui}',
                                                    '${item.telefono}',
                                                    '${item.ID_Direccion}',
                                                    '${item.direccionCompleta}'
                                                    )">Ver detalles
                            </button>
                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID Cliente: <span id="ID_Cliente"></span></label><br>
                                <label>Nombres: <span id="nombresCliente"></span></label><br>
                                <label>Apellidos: <span id="apellidosCliente"></span></label><br>
                                <label>DUI: <span id="dui"></span></label><br>
                                <label>Teléfono: <span id="telefono"></span></label><br>
                                <label>ID Direccion: <span id="ID_Direccion"></span></label><br>
                                <label>Dirección: <span id="direccionCompleta"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            
                            <form method="POST" action="/SistemaWeb/ModificarCliente.jsp">
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/SistemaWeb/EliminarCliente.jsp">
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombresCliente" value="${item.nombresCliente}" />
                                <input type="hidden" name="apellidosCliente" value="${item.apellidosCliente}" />
                                <input type="hidden" name="dui" value="${item.dui}" />  
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
    <script>
        function abrirPopup() {
            var popup = document.getElementById('popup');
            var overlay = document.getElementById('overlay');

            if (popup.style.display === 'block') {
                popup.style.display = 'none';
                overlay.style.display = 'none';
            } else {
                popup.style.display = 'block';
                overlay.style.display = 'block';
            }
        }

        function mostrarDetallesCliente(ID_Cliente, nombresCliente, apellidosCliente, dui, telefono, ID_Direccion, direccionCompleta) {
            document.getElementById('ID_Cliente').textContent = ID_Cliente;
            document.getElementById('nombresCliente').textContent = nombresCliente;
            document.getElementById('apellidosCliente').textContent = apellidosCliente;
            document.getElementById('dui').textContent = dui;
            document.getElementById('telefono').textContent = telefono;
            document.getElementById('ID_Direccion').textContent = ID_Direccion;
            document.getElementById('direccionCompleta').textContent = direccionCompleta;

            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
