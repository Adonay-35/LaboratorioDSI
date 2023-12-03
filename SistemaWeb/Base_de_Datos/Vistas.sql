use Panaderia;
-- Creación de la vista Municipios
CREATE VIEW VistaMunicipiosDepartamentos AS
SELECT M.ID_Municipio, M.Municipio, M.ID_Departamento, D.Departamento AS NombreDepartamento
FROM Municipios M
INNER JOIN Departamentos D ON M.ID_Departamento = D.ID_Departamento;

SELECT * FROM VistaMunicipiosDepartamentos;

-- Creación de la vista Distritos
CREATE VIEW VistaDistritosMunicipios AS
SELECT D.ID_Distrito, D.Distrito, D.ID_Municipio, M.Municipio AS NombreMunicipio
FROM Distritos D
INNER JOIN Municipios M ON M.ID_Municipio = D.ID_Municipio;

SELECT * FROM VistaDistritosMunicipios;

-- Creación de la vista Direcciones
create view VistaDireccionCompleta as
select
    DIR.ID_Direccion,
    DIR.Linea1,
    DIR.Linea2,
	DIR.ID_Distrito,
    DIS.Distrito,
    MUN.Municipio,
    DEP.Departamento,
    DEP.Pais,
    DIR.CodigoPostal
from Direcciones DIR
	inner join Distritos DIS on DIR.ID_Distrito = DIS.ID_Distrito
	inner join Municipios MUN on DIS.ID_Municipio = MUN.ID_Municipio
	inner join Departamentos DEP on MUN.ID_Departamento = DEP.ID_Departamento;
go

SELECT * FROM VistaDireccionCompleta;

-- Creación de la vista Empleados
create view VistaEmpleados as
select
    EMP.ID_Empleado,
	EMP.NombresEmpleado,
    EMP.ApellidosEmpleado,
    EMP.DUI,
    EMP.ISSS,
	EMP.FechaNacEmpleado,
    EMP.Telefono,
	EMP.ID_Cargo,
    CAR.Cargo,
	EMP.ID_Direccion,
	DIR.Linea1 + ', ' + DIR.Linea2 + ', ' +
    DIR.Distrito + ', ' + DIR.Municipio + ', ' +
    DIR.Departamento + ', ' + DIR.Pais + ', ' +
	CAST(DIR.CodigoPostal AS char(5)) as DireccionCompleta
from Empleados EMP
	inner join Cargos CAR on EMP.ID_Cargo = CAR.ID_Cargo
	inner join VistaDireccionCompleta DIR on EMP.ID_Direccion = DIR.ID_Direccion;
go

SELECT * FROM VistaEmpleados;

-- Creación de la vista Clientes
create view VistaClientes as
select
    CLI.ID_Cliente,
	CLI.NombresCliente,
    CLI.ApellidosCliente,
    CLI.DUI,
    CLI.Telefono,
	CLI.ID_Direccion,
	DIR.Linea1 + ', ' + DIR.Linea2 + ', ' +
    DIR.Distrito + ', ' + DIR.Municipio + ', ' +
    DIR.Departamento + ', ' + DIR.Pais + ', ' +
	CAST(DIR.CodigoPostal AS char(5)) as DireccionCompleta
from Clientes CLI
	inner join VistaDireccionCompleta DIR on CLI.ID_Direccion = DIR.ID_Direccion;
go

SELECT * FROM VistaClientes;

-- Creación de la vista Inventarios
CREATE VIEW VistaInventarios AS
SELECT I.ID_Inventario, I.CantidadInventario, I.FechaActualizacion, I.ID_Producto , P.NombreProducto AS NombreProducto
FROM Inventarios I
INNER JOIN Productos P ON I.ID_Producto = P.ID_Producto;

SELECT * FROM VistaInventarios;

-- Creación de la vista Usuarios
CREATE VIEW VistaUsuarios AS
SELECT U.ID_Usuario , U.ID_Empleado, CONCAT(E.NombresEmpleado,' ',E.ApellidosEmpleado) AS NombreEmpleado, U.ID_Rol, R.NombreRol, U.Usuario, U.Clave
FROM Usuarios U
INNER JOIN Empleados E ON E.ID_Empleado = U.ID_Empleado
INNER JOIN Roles R ON U.ID_Rol = R.ID_Rol;

SELECT * FROM VistaUsuarios;

-- Creación de la vista Ventas
CREATE VIEW VistaVentas AS
SELECT V.ID_Venta, V.FechaVenta, V.Totalventa, V.ID_Cliente, CONCAT(C.NombresCliente,' ',C.ApellidosCliente) AS NombreCliente
FROM Ventas V
INNER JOIN Clientes C ON C.ID_Cliente = V.ID_Cliente;

SELECT * FROM VistaVentas;

-- Creación de la vista Compras
CREATE VIEW VistaCompras AS
SELECT C.ID_Compra, C.FechaCompra, C.MontoCompra, C.ID_Proveedor, P.Empresa
FROM Compras C
INNER JOIN Proveedores P ON P.ID_Proveedor = C.ID_Proveedor;

SELECT * FROM VistaCompras;

-- Creación de la vista DetallesVentas
CREATE VIEW VistaDetallesVentas AS
SELECT DV.ID_DetalleVenta, DV.CantidadVendida, DV.PrecioUnitarioVenta, DV.Subtotal, DV.ID_Venta, DV.ID_Producto, P.NombreProducto 
FROM DetallesVentas DV
INNER JOIN Productos P ON P.ID_Producto = DV.ID_Producto;

SELECT * FROM VistaDetallesVentas;

-- Creación de la vista DetallesCompras
CREATE VIEW VistaDetallesCompras AS
SELECT DC.ID_DetalleCompra, DC.CantidadComprada, DC.PrecioUnitarioCompra, DC.Subtotal, DC.ID_Compra, DC.ID_Producto, P.NombreProducto 
FROM DetallesCompras DC
INNER JOIN Productos P ON P.ID_Producto = DC.ID_Producto;

SELECT * FROM VistaDetallesCompras;