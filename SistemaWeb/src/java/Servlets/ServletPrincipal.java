/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

//Agregar esto
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

// y esto
import Models.ViewModelEmpleados;
import Models.ViewModelClientes;
import Models.ViewModelProductos;
import Models.ViewModelDepartamentos;
import Models.ViewModelMunicipios;
import Models.ViewModelDistritos;
import Models.ViewModelDirecciones;
import Models.ViewModelInventario;
import Models.ViewModelProveedores;
import Models.ViewModelRoles;
import Models.ViewModelCargos;
import Models.ViewModelOpciones;
import Models.ViewModelUsuarios;
import Models.ViewModelFacturas;
import Models.ViewModelVentas;
import Models.ViewModelCompras;
import Models.ViewModelDetallesVentas;
import Models.ViewModelDetallesCompras;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author MINEDUCYT
 */
public class ServletPrincipal extends HttpServlet {

    private final String usuario = "Login_Sysadmin_PedroHernandez";
    private final String contrasenia = "root";
    private final String servidor = "localhost:1433";
    private final String bd = "Panaderia";
    
    String url = "jdbc:sqlserver://"
            + servidor
            + ";databaseName=" + bd
            + ";user=" + usuario
            + ";password=" + contrasenia
            + ";encrypt=false;trustServerCertificate=false;";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    //Mostrar Empleados
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaEmpleados;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleados empleado = new ViewModelEmpleados();
                    empleado.setID_Empleado(rs.getInt("ID_Empleado"));
                    empleado.setDui(rs.getString("dui"));
                    empleado.setIsss(rs.getString("isss"));
                    empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                    empleado.setApellidosEmpleado(rs.getString("apellidosEmpleado"));
                    empleado.setFechaNacEmpleado(rs.getDate("fechaNacEmpleado"));
                    empleado.setTelefono(rs.getString("telefono"));                   
                    empleado.setID_Cargo(rs.getInt("ID_Cargo"));
                    empleado.setCargo(rs.getString("cargo"));
                    empleado.setID_Direccion(rs.getInt("ID_Direccion"));
                    empleado.setDireccionCompleta(rs.getString("direccionCompleta"));
                    listaEmpleados.add(empleado);
                }               
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //Mostrar Clientes
    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaClientes;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelClientes> listaClientes = new ArrayList<>();
                while (rs.next()) {
                    ViewModelClientes cliente = new ViewModelClientes();
                    cliente.setID_Cliente(rs.getInt("ID_Cliente"));
                    cliente.setNombresCliente(rs.getString("nombresCliente"));
                    cliente.setApellidosCliente(rs.getString("apellidosCliente"));
                    cliente.setDui(rs.getString("dui"));
                    cliente.setID_Direccion(rs.getInt("ID_Direccion"));
                    cliente.setDireccionCompleta(rs.getString("direccionCompleta")); 
                    cliente.setTelefono(rs.getString("telefono")); 
                    listaClientes.add(cliente);
                }               
                request.setAttribute("listaClientes", listaClientes);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //Mostrar Productos
    public void mostrarProductos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Productos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProductos> listaProductos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProductos producto = new ViewModelProductos();
                    producto.setID_Producto(rs.getInt("ID_Producto"));
                    producto.setNombreProducto(rs.getString("nombreProducto"));
                    producto.setPrecioUnitario(rs.getDouble("precioUnitario"));
                    producto.setDescripcion(rs.getString("descripcion"));         
                    listaProductos.add(producto);
                }               
                request.setAttribute("listaProductos", listaProductos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //Mostrar Departamentos
    public void mostrarDepartamentos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Departamentos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDepartamentos> listaDepartamentos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDepartamentos departamento = new ViewModelDepartamentos();
                    departamento.setID_Departamento(rs.getString("ID_Departamento"));
                    departamento.setDepartamento(rs.getString("departamento"));
                    departamento.setPais(rs.getString("pais"));         
                    listaDepartamentos.add(departamento);
                }               
                request.setAttribute("listaDepartamentos", listaDepartamentos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarMunicipios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaMunicipiosDepartamentos;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelMunicipios> listaMunicipios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelMunicipios municipio = new ViewModelMunicipios();
                    municipio.setID_Municipio(rs.getString("ID_Departamento"));
                    municipio.setMunicipio(rs.getString("municipio"));
                    municipio.setID_Departamento(rs.getString("ID_Departamento"));
                    municipio.setNombreDepartamento(rs.getString("nombreDepartamento"));
                    listaMunicipios.add(municipio);
                }               
                request.setAttribute("listaMunicipios", listaMunicipios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarDistritos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaDistritosMunicipios;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDistritos> listaDistritos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDistritos distrito = new ViewModelDistritos();
                    distrito.setID_Distrito(rs.getString("ID_Distrito"));
                    distrito.setDistrito(rs.getString("distrito"));
                    distrito.setID_Municipio(rs.getString("ID_Municipio"));
                    distrito.setNombreMunicipio(rs.getString("nombreMunicipio"));
                    listaDistritos.add(distrito);
                }               
                request.setAttribute("listaDistritos", listaDistritos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarDirecciones(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaDireccionCompleta;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDirecciones> listaDirecciones = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDirecciones direccion = new ViewModelDirecciones();
                    direccion.setID_Direccion(rs.getInt("ID_Direccion"));
                    direccion.setLinea1(rs.getString("linea1"));
                    direccion.setLinea2(rs.getString("linea2"));
                    direccion.setID_Distrito(rs.getString("ID_Distrito"));
                    direccion.setDistrito(rs.getString("distrito"));
                    direccion.setMunicipio(rs.getString("municipio"));
                    direccion.setDepartamento(rs.getString("departamento"));
                    direccion.setPais(rs.getString("pais"));
                    direccion.setCodigoPostal(rs.getInt("codigoPostal"));
                    listaDirecciones.add(direccion);
                }               
                request.setAttribute("listaDirecciones", listaDirecciones);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
     
    //Mostrar Inventario
    public void mostrarInventario(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaInventarios;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelInventario> listaInventario = new ArrayList<>();
                while (rs.next()) {
                    ViewModelInventario inventario = new ViewModelInventario();
                    inventario.setID_Inventario(rs.getInt("ID_Inventario"));
                    inventario.setCantidadInventario(rs.getString("cantidadInventario"));
                    inventario.setFechaActualizacion(rs.getDate("fechaActualizacion"));
                    inventario.setID_Producto(rs.getInt("ID_Producto"));
                    inventario.setNombreProducto(rs.getString("nombreProducto"));
                    listaInventario.add(inventario);
                }               
                request.setAttribute("listaInventario", listaInventario);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
     
    public void mostrarProveedores(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM Proveedores;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProveedores> listaProveedores = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProveedores proveedor = new ViewModelProveedores();
                    proveedor.setID_Proveedor(rs.getInt("ID_Proveedor"));
                    proveedor.setEmpresa(rs.getString("empresa"));
                    proveedor.setTelefono(rs.getString("telefono"));
                    listaProveedores.add(proveedor);
                }               
                request.setAttribute("listaProveedores", listaProveedores);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarRoles(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM Roles;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelRoles> listaRoles = new ArrayList<>();
                while (rs.next()) {
                    ViewModelRoles rol = new ViewModelRoles();
                    rol.setID_Rol(rs.getInt("ID_Rol"));
                    rol.setNombreRol(rs.getString("nombreRol"));
                    listaRoles.add(rol);
                }               
                request.setAttribute("listaRoles", listaRoles);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarCargos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM Cargos;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCargos> listaCargos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCargos cargo = new ViewModelCargos();
                    cargo.setID_Cargo(rs.getInt("ID_Cargo"));
                    cargo.setCargo(rs.getString("cargo"));
                    listaCargos.add(cargo);
                }               
                request.setAttribute("listaCargos", listaCargos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarOpciones(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM Opciones;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelOpciones> listaOpciones = new ArrayList<>();
                while (rs.next()) {
                    ViewModelOpciones opcion = new ViewModelOpciones();
                    opcion.setID_Opcion(rs.getInt("ID_Opcion"));
                    opcion.setNombreOpcion(rs.getString("nombreOpcion"));
                    listaOpciones.add(opcion);
                }               
                request.setAttribute("listaOpciones", listaOpciones);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaUsuarios;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelUsuarios> listaUsuarios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelUsuarios usuario = new ViewModelUsuarios();
                    usuario.setID_Usuario(rs.getInt("ID_Usuario"));
                    usuario.setID_Empleado(rs.getInt("ID_Empleado"));
                    usuario.setNombreEmpleado(rs.getString("nombreEmpleado"));
                    usuario.setID_Rol(rs.getInt("ID_Rol"));
                    usuario.setNombreRol(rs.getString("nombreRol"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setClave(rs.getString("clave"));
                    listaUsuarios.add(usuario);
                }               
                request.setAttribute("listaUsuarios", listaUsuarios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarFacturas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM Facturas;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelFacturas> listaFacturas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelFacturas usuario = new ViewModelFacturas();
                    usuario.setID_Factura(rs.getInt("ID_Factura"));
                    usuario.setFechaFactura(rs.getDate("fechaFactura"));
                    usuario.setTotalFactura(rs.getDouble("totalFactura"));
                    usuario.setID_Venta(rs.getInt("ID_Venta"));
                    listaFacturas.add(usuario);
                }               
                request.setAttribute("listaFacturas", listaFacturas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarVentas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaVentas;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelVentas> listaVentas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelVentas venta = new ViewModelVentas();
                    venta.setID_Venta(rs.getInt("ID_Venta"));
                    venta.setFechaVenta(rs.getDate("fechaVenta"));
                    venta.setTotalVenta(rs.getDouble("totalVenta"));
                    venta.setID_Cliente(rs.getInt("ID_Cliente"));
                    venta.setNombreCliente(rs.getString("nombreCliente"));
                    listaVentas.add(venta);
                }               
                request.setAttribute("listaVentas", listaVentas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarCompras(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaCompras;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCompras> listaCompras = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCompras compra = new ViewModelCompras();
                    compra.setID_Compra(rs.getInt("ID_Compra"));
                    compra.setFechaCompra(rs.getDate("fechaCompra"));
                    compra.setMontoCompra(rs.getDouble("montoCompra"));
                    compra.setID_Proveedor(rs.getInt("ID_Proveedor"));
                    compra.setEmpresa(rs.getString("empresa"));
                    listaCompras.add(compra);
                }               
                request.setAttribute("listaCompras", listaCompras);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }

    public void mostrarDetallesVentas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaDetallesVentas;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDetallesVentas> listaDetallesVentas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDetallesVentas detalleventa = new ViewModelDetallesVentas();
                    detalleventa.setID_DetalleVenta(rs.getInt("ID_DetalleVenta"));
                    detalleventa.setCantidadVendida(rs.getInt("cantidadVendida"));
                    detalleventa.setPrecioUnitarioVenta(rs.getDouble("precioUnitarioVenta"));
                    detalleventa.setSubTotal(rs.getDouble("subTotal"));
                    detalleventa.setID_Venta(rs.getInt("ID_Venta"));
                    detalleventa.setID_Producto(rs.getInt("ID_Producto"));
                    detalleventa.setNombreProducto(rs.getString("nombreProducto"));
                    listaDetallesVentas.add(detalleventa);
                }               
                request.setAttribute("listaDetallesVentas", listaDetallesVentas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarDetallesCompras(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaDetallesCompras;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDetallesCompras> listaDetallesCompras = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDetallesCompras detallecompra = new ViewModelDetallesCompras();
                    detallecompra.setID_DetalleCompra(rs.getInt("ID_DetalleCompra"));
                    detallecompra.setCantidadComprada(rs.getInt("cantidadComprada"));
                    detallecompra.setPrecioUnitarioCompra(rs.getDouble("precioUnitarioCompra"));
                    detallecompra.setSubTotal(rs.getDouble("subTotal"));
                    detallecompra.setID_Compra(rs.getInt("ID_Compra"));
                    detallecompra.setID_Producto(rs.getInt("ID_Producto"));
                    detallecompra.setNombreProducto(rs.getString("nombreProducto"));
                    listaDetallesCompras.add(detallecompra);
                }               
                request.setAttribute("listaDetallesCompras", listaDetallesCompras);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
        
    //Funciones de escritura en tablas (INSERT)
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String DUI_Empleado = request.getParameter("dui");
        String ISSS_Empleado = request.getParameter("isss");
        String fechaNacEmpleado = request.getParameter("fechaNacEmpleado");
        String telefonoEmpleado = request.getParameter("telefono");
        String ID_Cargo = request.getParameter("ID_Cargo");
        String ID_Direccion = request.getParameter("ID_Direccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresEmpleado);
                pstmt.setString(2, apellidosEmpleado);
                pstmt.setString(3, DUI_Empleado);
                pstmt.setString(4, ISSS_Empleado);
                pstmt.setString(5, fechaNacEmpleado);
                pstmt.setString(6, telefonoEmpleado);
                pstmt.setString(7, ID_Cargo);
                pstmt.setString(8, ID_Direccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Agregar Cliente
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String nombresCliente = request.getParameter("nombresCliente");
        String apellidosCliente = request.getParameter("apellidosCliente");
        String DUI_Cliente = request.getParameter("dui");
        String ID_Direccion = request.getParameter("ID_Direccion");
        String telefonoCliente = request.getParameter("telefono");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Clientes values (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresCliente);
                pstmt.setString(2, apellidosCliente);
                pstmt.setString(3, DUI_Cliente);
                pstmt.setString(4, ID_Direccion);
                pstmt.setString(5, telefonoCliente);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Agregar Producto
    public void agregarProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String nombreProducto = request.getParameter("nombreProducto");
        String precioUnitario = request.getParameter("precioUnitario");
        String descripcion = request.getParameter("descripcion");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Productos values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreProducto);
                pstmt.setString(2, precioUnitario);
                pstmt.setString(3, descripcion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Agregar Direccion
    public void agregarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String linea1 = request.getParameter("linea1");
        String linea2 = request.getParameter("linea2");
        String ID_Distrito = request.getParameter("ID_Distrito");
        String codigoPostal = request.getParameter("codigoPostal");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Direcciones values (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, linea1);
                pstmt.setString(2, linea2);
                pstmt.setString(3, ID_Distrito);    
                pstmt.setString(4, codigoPostal);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    public void agregarInventario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String cantidadInventario = request.getParameter("cantidadInventario");
        String fechaActualizacion = request.getParameter("fechaActualizacion");
        String ID_Producto = request.getParameter("ID_Producto");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Inventarios values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, cantidadInventario);
                pstmt.setString(2, fechaActualizacion);
                pstmt.setString(3, ID_Producto);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String empresa = request.getParameter("empresa");
        String telefono = request.getParameter("telefono");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Proveedores values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, empresa);
                pstmt.setString(2, telefono);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
      
    public void agregarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Empleado = request.getParameter("ID_Empleado");
        String ID_Rol = request.getParameter("ID_Rol");
        String usuario = request.getParameter("ID_Rol");
        String clave = request.getParameter("clave");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Usuarios values (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, ID_Empleado);
                pstmt.setString(2, ID_Rol);
                pstmt.setString(3, usuario);
                pstmt.setString(4, clave);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarFactura(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String fechaFactura = request.getParameter("fechaFactura");
        String totalFactura = request.getParameter("totalFactura");
        String ID_Venta = request.getParameter("ID_Venta");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Facturas values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fechaFactura);
                pstmt.setString(2, totalFactura);
                pstmt.setString(3, ID_Venta);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String fechaVenta = request.getParameter("fechaVenta");
        String totalVenta = request.getParameter("totalVenta");
        String ID_Cliente = request.getParameter("ID_Cliente");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Ventas values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fechaVenta);
                pstmt.setString(2, totalVenta);
                pstmt.setString(3, ID_Cliente);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String fechaCompra = request.getParameter("fechaCompra");
        String montoCompra = request.getParameter("montoCompra");
        String ID_Proveedor = request.getParameter("ID_Proveedor");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Compras values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fechaCompra);
                pstmt.setString(2, montoCompra);
                pstmt.setString(3, ID_Proveedor);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String cantidadVendida = request.getParameter("cantidadVendida");
        String precioUnitarioVenta = request.getParameter("precioUnitarioVenta");
        String subTotal = request.getParameter("subTotal");
        String ID_Venta = request.getParameter("ID_Venta");
        String ID_Producto = request.getParameter("ID_Producto");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into DetallesVentas values (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, cantidadVendida);
                pstmt.setString(2, precioUnitarioVenta);
                pstmt.setString(3, subTotal);
                pstmt.setString(4, ID_Venta);
                pstmt.setString(5, ID_Producto);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarDetalleCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String cantidadComprada = request.getParameter("cantidadComprada");
        String precioUnitarioCompra = request.getParameter("precioUnitarioCompra");
        String subTotal = request.getParameter("subTotal");
        String ID_Compra = request.getParameter("ID_Compra");
        String ID_Producto = request.getParameter("ID_Producto");
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into DetallesCompras values (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, cantidadComprada);
                pstmt.setString(2, precioUnitarioCompra);
                pstmt.setString(3, subTotal);
                pstmt.setString(4, ID_Compra);
                pstmt.setString(5, ID_Producto);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
        
    //Funciones de actualizacion de registros (UPDATE)
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Empleado = request.getParameter("ID_Empleado");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String DUI_Empleado = request.getParameter("dui");
        String ISSS_Empleado = request.getParameter("isss");
        String fechaNacEmpleado = request.getParameter("fechaNacEmpleado");
        String telefonoEmpleado = request.getParameter("telefono");
        String ID_Cargo = request.getParameter("ID_Cargo");
        String ID_Direccion = request.getParameter("ID_Direccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Empleados set "
                 + "NombresEmpleado='"+nombresEmpleado+"', "
                 + "ApellidosEmpleado='"+apellidosEmpleado+"', "
                 + "DUI='"+DUI_Empleado+"', "
                 + "ISSS='"+ISSS_Empleado+"', "
                 + "FechaNacEmpleado='"+fechaNacEmpleado+"', "
                 + "Telefono='"+telefonoEmpleado+"', "
                 + "ID_Cargo='"+ID_Cargo+"', "
                 + "ID_Direccion='"+ID_Direccion+"' " 
                 + "where ID_Empleado='"+ID_Empleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    //Modificar Cliente
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Cliente = request.getParameter("ID_Cliente");
        String nombresCliente = request.getParameter("nombresCliente");
        String apellidosCliente = request.getParameter("apellidosCliente");
        String DUI_Cliente = request.getParameter("dui");
        String ID_Direccion = request.getParameter("ID_Direccion");
        String telefonoCliente = request.getParameter("telefono");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Clientes set "
                 + "NombresCliente='"+nombresCliente+"', "
                 + "ApellidosCliente='"+apellidosCliente+"', "
                 + "DUI='"+DUI_Cliente+"', "
                 + "ID_Direccion='"+ID_Direccion+"', "
                 + "Telefono='"+telefonoCliente+"' "
                 + "where ID_Cliente='"+ID_Cliente+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Modificar Producto
    public void modificarProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Producto = request.getParameter("ID_Producto");
        String nombreProducto = request.getParameter("nombreProducto");
        String precioUnitario = request.getParameter("precioUnitario");
        String descripcion = request.getParameter("descripcion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Productos set "
                 + "NombreProducto='"+nombreProducto+"', "
                 + "PrecioUnitario='"+precioUnitario+"', "
                 + "Descripcion='"+descripcion+"' "
                 + "where ID_Producto='"+ID_Producto+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Modificar Direccion
    public void modificarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Direccion = request.getParameter("ID_Direccion");
        String linea1 = request.getParameter("linea1");
        String linea2 = request.getParameter("linea2");
        String ID_Distrito = request.getParameter("ID_Distrito");
        String codigoPostal = request.getParameter("codigoPostal");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Direcciones set "
                 + "Linea1='"+linea1+"', "
                 + "Linea2='"+linea2+"', "
                 + "ID_Distrito='"+ID_Distrito+"', "
                 + "CodigoPostal='"+codigoPostal+"' "
                 + "where ID_Direccion='"+ID_Direccion+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarInventario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Inventario = request.getParameter("ID_Inventario");
        String cantidadInventario = request.getParameter("cantidadInventario");
        String fechaActualizacion = request.getParameter("fechaActualizacion");
        String ID_Producto = request.getParameter("ID_Producto");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Inventarios set "
                 + "CantidadInventario='"+cantidadInventario+"', "
                 + "FechaActualizacion='"+fechaActualizacion+"', "
                 + "ID_Producto='"+ID_Producto+"' "
                 + "where ID_Inventario='"+ID_Inventario+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    

    public void modificarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Proveedor = request.getParameter("ID_Proveedor");
        String empresa = request.getParameter("empresa");
        String telefono = request.getParameter("telefono");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Proveedores set "
                 + "Empresa='"+empresa+"', "
                 + "Telefono='"+telefono+"' "
                 + "where ID_Proveedor='"+ID_Proveedor+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    public void modificarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Usuario = request.getParameter("ID_Usuario");
        String ID_Empleado = request.getParameter("ID_Empleado");
        String ID_Rol = request.getParameter("ID_Rol");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Usuarios set "
                 + "ID_Empleado='"+ID_Empleado+"', "
                 + "ID_Rol='"+ID_Rol+"', "
                 + "Usuario='"+usuario+"', "
                 + "Clave='"+clave+"' "
                 + "where ID_Usuario='"+ID_Usuario+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarFactura(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Factura = request.getParameter("ID_Factura");
        String fechaFactura = request.getParameter("fechaFactura");
        String totalFactura = request.getParameter("totalFactura");
        String ID_Venta = request.getParameter("ID_Venta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Facturas set "
                 + "fechaFactura='"+fechaFactura+"', "
                 + "totalFactura='"+totalFactura+"', "
                 + "ID_Venta='"+ID_Venta+"' "
                 + "where ID_Factura='"+ID_Factura+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Venta = request.getParameter("ID_Venta");
        String fechaVenta = request.getParameter("fechaVenta");
        String totalVenta = request.getParameter("totalVenta");
        String ID_Cliente = request.getParameter("ID_Cliente");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Ventas set "
                 + "fechaVenta='"+fechaVenta+"', "
                 + "totalVenta='"+totalVenta+"', "
                 + "ID_Cliente='"+ID_Cliente+"' "
                 + "where ID_Venta='"+ID_Venta+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Compra = request.getParameter("ID_Compra");
        String fechaCompra = request.getParameter("fechaCompra");
        String montoCompra = request.getParameter("montoCompra");
        String ID_Proveedor = request.getParameter("ID_Proveedor");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Compras set "
                 + "fechaCompra='"+fechaCompra+"', "
                 + "montoCompra='"+montoCompra+"', "
                 + "ID_Proveedor='"+ID_Proveedor+"' "
                 + "where ID_Compra='"+ID_Compra+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES 
        String ID_DetalleVenta = request.getParameter("ID_DetalleVenta");
        String cantidadVendida = request.getParameter("cantidadVendida");
        String precioUnitarioVenta = request.getParameter("precioUnitarioVenta");
        String subTotal = request.getParameter("subTotal");
        String ID_Venta = request.getParameter("ID_Venta");
        String ID_Producto = request.getParameter("ID_Producto");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update DetallesVentas set "
                 + "cantidadVendida='"+cantidadVendida+"', "
                 + "precioUnitarioVenta='"+precioUnitarioVenta+"', "
                 + "subTotal='"+subTotal+"', "
                 + "ID_Venta='"+ID_Venta+"', "
                 + "ID_Producto='"+ID_Producto+"' "
                 + "where ID_DetalleVenta='"+ID_DetalleVenta+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarDetalleCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES 
        String ID_DetalleCompra = request.getParameter("ID_DetalleCompra");
        String cantidadComprada = request.getParameter("cantidadComprada");
        String precioUnitarioCompra = request.getParameter("precioUnitarioCompra");
        String subTotal = request.getParameter("subTotal");
        String ID_Compra = request.getParameter("ID_Compra");
        String ID_Producto = request.getParameter("ID_Producto");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update DetallesCompras set "
                 + "cantidadComprada='"+cantidadComprada+"', "
                 + "precioUnitarioCompra='"+precioUnitarioCompra+"', "
                 + "subTotal='"+subTotal+"', "
                 + "ID_Compra='"+ID_Compra+"', "
                 + "ID_Producto='"+ID_Producto+"' "
                 + "where ID_DetalleCompra='"+ID_DetalleCompra+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    //Funciones de eliminacion de registros (DELETE)
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String ID_Empleado = request.getParameter("ID_Empleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Empleados where ID_Empleado='" + ID_Empleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        String ID_Cliente = request.getParameter("ID_Cliente");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Clientes where ID_Cliente='" + ID_Cliente + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarProducto(HttpServletRequest request, HttpServletResponse response) {
        String ID_Producto = request.getParameter("ID_Producto");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Productos where ID_Producto='" + ID_Producto + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarDireccion(HttpServletRequest request, HttpServletResponse response) {
        String ID_Direccion = request.getParameter("ID_Direccion");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Direcciones where ID_Direccion='" + ID_Direccion + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarInventario(HttpServletRequest request, HttpServletResponse response) {
        String ID_Inventario = request.getParameter("ID_Inventario");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Inventarios where ID_Inventario='" + ID_Inventario + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) {
        String ID_Proveedor = request.getParameter("ID_Proveedor");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Proveedores where ID_Proveedor='" + ID_Proveedor + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) {
        String ID_Usuario = request.getParameter("ID_Usuario");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Usuarios where ID_Usuario='" + ID_Usuario + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarFactura(HttpServletRequest request, HttpServletResponse response) {
        String ID_Factura = request.getParameter("ID_Factura");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Facturas where ID_Factura='" + ID_Factura + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    public void eliminarVenta(HttpServletRequest request, HttpServletResponse response) {
        String ID_Venta = request.getParameter("ID_Venta");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Ventas where ID_Venta='" + ID_Venta + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarCompra(HttpServletRequest request, HttpServletResponse response) {
        String ID_Compra = request.getParameter("ID_Compra");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Compras where ID_Compra='" + ID_Compra + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarDetalleVenta(HttpServletRequest request, HttpServletResponse response) {
        String ID_DetalleVenta = request.getParameter("ID_DetalleVenta");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from DetallesVentas where ID_DetalleVenta='" + ID_DetalleVenta + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarDetalleCompra(HttpServletRequest request, HttpServletResponse response) {
        String ID_DetalleCompra = request.getParameter("ID_DetalleCompra");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from DetallesCompras where ID_DetalleCompra='" + ID_DetalleCompra + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
        
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        if(accion == null){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if(accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if(accion.equals("GestionarEmpleados")){
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("GestionarEmpleados.jsp").forward(request, response);
        } else if(accion.equals("GestionarClientes")){
            mostrarClientes(request, response);
            request.getRequestDispatcher("GestionarClientes.jsp").forward(request, response);
        } else if(accion.equals("GestionarProductos")){
            mostrarProductos(request, response);
            request.getRequestDispatcher("GestionarProductos.jsp").forward(request, response);
        } else if(accion.equals("GestionarDepartamentos")){
            mostrarDepartamentos(request, response);
            request.getRequestDispatcher("GestionarDepartamentos.jsp").forward(request, response);
        } else if(accion.equals("GestionarMunicipios")){
            mostrarMunicipios(request, response);
            request.getRequestDispatcher("GestionarMunicipios.jsp").forward(request, response);
        } else if(accion.equals("GestionarDistritos")){
            mostrarDistritos(request, response);
            request.getRequestDispatcher("GestionarDistritos.jsp").forward(request, response);
        } else if(accion.equals("GestionarDirecciones")){
            mostrarDirecciones(request, response);
            request.getRequestDispatcher("GestionarDirecciones.jsp").forward(request, response);
        } else if(accion.equals("GestionarInventarios")){
            mostrarInventario(request, response);
            request.getRequestDispatcher("GestionarInventarios.jsp").forward(request, response);
        } else if(accion.equals("GestionarProveedores")){
            mostrarProveedores(request, response);
            request.getRequestDispatcher("GestionarProveedores.jsp").forward(request, response);
        } else if(accion.equals("GestionarRoles")){
            mostrarRoles(request, response);
            request.getRequestDispatcher("GestionarRoles.jsp").forward(request, response);
        } else if(accion.equals("GestionarCargos")){
            mostrarCargos(request, response);
            request.getRequestDispatcher("GestionarCargos.jsp").forward(request, response);
        } else if(accion.equals("GestionarOpciones")){
            mostrarOpciones(request, response);
            request.getRequestDispatcher("GestionarOpciones.jsp").forward(request, response);
        } else if(accion.equals("GestionarUsuarios")){
            mostrarUsuarios(request, response);
            request.getRequestDispatcher("GestionarUsuarios.jsp").forward(request, response);
        } else if(accion.equals("GestionarFacturas")){
            mostrarFacturas(request, response);
            request.getRequestDispatcher("GestionarFacturas.jsp").forward(request, response);
        } else if(accion.equals("GestionarVentas")){
            mostrarVentas(request, response);
            request.getRequestDispatcher("GestionarVentas.jsp").forward(request, response);
        } else if(accion.equals("GestionarCompras")){
            mostrarCompras(request, response);
            request.getRequestDispatcher("GestionarCompras.jsp").forward(request, response);
        } else if(accion.equals("GestionarDetallesVentas")){
            mostrarDetallesVentas(request, response);
            request.getRequestDispatcher("GestionarDetallesVentas.jsp").forward(request, response);
        } else if(accion.equals("GestionarDetallesCompras")){
            mostrarDetallesCompras(request, response);
            request.getRequestDispatcher("GestionarDetallesCompras.jsp").forward(request, response);
        } else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarEmpleado.jsp").forward(request, response);
        } else if (accion.equals("AgregarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarCliente.jsp").forward(request, response);
        } else if (accion.equals("AgregarProducto")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarProducto.jsp").forward(request, response);
        } else if (accion.equals("AgregarDireccion")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarDireccion.jsp").forward(request, response);
        } else if (accion.equals("AgregarInventario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarInventario.jsp").forward(request, response);
        } else if (accion.equals("AgregarProveedor")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarProveedor.jsp").forward(request, response);
        } else if (accion.equals("AgregarUsuario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarUsuario.jsp").forward(request, response);
        } else if (accion.equals("AgregarFactura")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarFactura.jsp").forward(request, response);
        } else if (accion.equals("AgregarVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarVenta.jsp").forward(request, response);
        } else if (accion.equals("AgregarCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarCompra.jsp").forward(request, response);
        } else if (accion.equals("AgregarDetalleVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarDetalleVenta.jsp").forward(request, response);
        } else if (accion.equals("AgregarDetalleCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarDetalleCompra.jsp").forward(request, response);
        } else if (accion.equals("ModificarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarEmpleado.jsp").forward(request, response);
        } else if (accion.equals("ModificarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarCliente.jsp").forward(request, response);
        } else if (accion.equals("ModificarProducto")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarProducto.jsp").forward(request, response);
        } else if (accion.equals("ModificarDireccion")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarDireccion.jsp").forward(request, response);
        } else if (accion.equals("ModificarInventario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarInventario.jsp").forward(request, response);
        } else if (accion.equals("ModificarProveedor")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarProveedor.jsp").forward(request, response);
        } else if (accion.equals("ModificarUsuario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);
        } else if (accion.equals("ModificarFactura")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarFactura.jsp").forward(request, response);
        } else if (accion.equals("ModificarVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarVenta.jsp").forward(request, response);
        } else if (accion.equals("ModificarCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarCompra.jsp").forward(request, response);
        } else if (accion.equals("ModificarDetalleVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarDetalleVenta.jsp").forward(request, response);
        } else if (accion.equals("ModificarDetalleCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("ModificarDetalleCompra.jsp").forward(request, response);
        } else if (accion.equals("EliminarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarEmpleado.jsp").forward(request, response);
        } else if (accion.equals("EliminarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarCliente.jsp").forward(request, response);
        } else if (accion.equals("EliminarProducto")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarProducto.jsp").forward(request, response);
        } else if (accion.equals("EliminarDireccion")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarDireccion.jsp").forward(request, response);
        } else if (accion.equals("EliminarInventario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarInventario.jsp").forward(request, response);
        } else if (accion.equals("EliminarProveedor")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarProveedor.jsp").forward(request, response);
        } else if (accion.equals("EliminarUsuario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarUsuario.jsp").forward(request, response);
        } else if (accion.equals("EliminarFactura")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarFactura.jsp").forward(request, response);
        } else if (accion.equals("EliminarVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarVenta.jsp").forward(request, response);
        } else if (accion.equals("EliminarCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarCompra.jsp").forward(request, response);
        } else if (accion.equals("EliminarDetalleVenta")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarDetalleVenta.jsp").forward(request, response);
        } else if (accion.equals("EliminarDetalleCompra")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("EliminarDetalleCompra.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if(accion.equals("Login")){
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");
            
            try(PrintWriter print = response.getWriter()){
                if(usuario.equals("admin") && contrasenia.equals("root")){
                    request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);
                }else{
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Sistema Panaderia</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h1>ERROR: El usuario o la contraseña son erróneos.</h1>");
                    print.println("</body>");
                    print.println("</html>");
                    
                }
            }
        }
        if (accion.equals("AgregarEmpleado")) {
            //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarEmpleado(request, response);
            //REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("AgregarCliente")) {
            agregarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCliente");
        } else if (accion.equals("AgregarProducto")) {
            agregarProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarProducto");
        } else if (accion.equals("AgregarDireccion")) {
            agregarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarDireccion");
        } else if (accion.equals("AgregarInventario")) {
            agregarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarInventario");
        } else if (accion.equals("AgregarProveedor")) {
            agregarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarProveedor");
        } else if (accion.equals("AgregarUsuario")) {
            agregarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarUsuario");
        } else if (accion.equals("AgregarFactura")) {
            agregarFactura(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarFactura");
        } else if (accion.equals("AgregarVenta")) {
            agregarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarVenta");
        } else if (accion.equals("AgregarCompra")) {
            agregarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCompra");
        } else if (accion.equals("AgregarDetalleVenta")) {
            agregarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarDetalleVenta");
        } else if (accion.equals("AgregarDetalleCompra")) {
            agregarDetalleCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarDetalleCompra");
        } else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        } else if (accion.equals("ModificarCliente")) {
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        } else if (accion.equals("ModificarProducto")) {
            modificarProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProductos");
        } else if (accion.equals("ModificarDireccion")) {
            modificarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        } else if (accion.equals("ModificarInventario")) {
            modificarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarInventarios");
        } else if (accion.equals("ModificarProveedor")) {
            modificarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        } else if (accion.equals("ModificarUsuario")) {
            modificarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuarios");
        } else if (accion.equals("ModificarFactura")) {
            modificarFactura(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarFacturas");
        } else if (accion.equals("ModificarVenta")) {
            modificarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        } else if (accion.equals("ModificarCompra")) {
            modificarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        } else if (accion.equals("ModificarDetalleVenta")) {
            modificarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesVentas");
        } else if (accion.equals("ModificarDetalleCompra")) {
            modificarDetalleCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesCompras");
        } else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        } else if (accion.equals("EliminarCliente")) {
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        } else if (accion.equals("EliminarProducto")) {
            eliminarProducto(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProductos");
        } else if (accion.equals("EliminarDireccion")) {
            eliminarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        } else if (accion.equals("EliminarInventario")) {
            eliminarInventario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarInventarios");
        } else if (accion.equals("EliminarProveedor")) {
            eliminarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        } else if (accion.equals("EliminarUsuario")) {
            eliminarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuarios");
        } else if (accion.equals("EliminarFactura")) {
            eliminarFactura(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarFacturas");
        } else if (accion.equals("EliminarVenta")) {
            eliminarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        } else if (accion.equals("EliminarCompra")) {
            eliminarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        } else if (accion.equals("EliminarDetalleVenta")) {
            eliminarDetalleVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesVentas");
        } else if (accion.equals("EliminarDetalleCompra")) {
            eliminarDetalleCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDetallesCompras");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
