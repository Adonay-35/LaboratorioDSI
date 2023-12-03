/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author HERNANDEZ
 */
public class ViewModelDetallesCompras {

    private int ID_DetalleCompra;
    private int cantidadComprada;
    private double precioUnitarioCompra;
    private double subTotal;
    private int ID_Compra;
    private int ID_Producto;
    private String nombreProducto;
    
    public int getID_DetalleCompra() {
        return ID_DetalleCompra;
    }

    public void setID_DetalleCompra(int ID_DetalleCompra) {
        this.ID_DetalleCompra = ID_DetalleCompra;
    }

    public int getCantidadComprada() {
        return cantidadComprada;
    }

    public void setCantidadComprada(int cantidadComprada) {
        this.cantidadComprada = cantidadComprada;
    }

    public double getPrecioUnitarioCompra() {
        return precioUnitarioCompra;
    }

    public void setPrecioUnitarioCompra(double precioUnitarioCompra) {
        this.precioUnitarioCompra = precioUnitarioCompra;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public int getID_Compra() {
        return ID_Compra;
    }

    public void setID_Compra(int ID_Compra) {
        this.ID_Compra = ID_Compra;
    }

    public int getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
    
}
